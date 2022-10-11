import 'dart:io';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:geocoder/geocoder.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:image_picker/image_picker.dart';
import 'package:location/location.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart' as sysPaths;
import 'package:tekoop/core/routes/routes.dart';
import 'package:tekoop/core/stores/auth_store.dart';
import 'package:tekoop/features/home/data/models/address_model.dart';
import 'package:tekoop/features/home/domain/usecases/set_address.dart'
    as setAddress;

import '../../../../core/error/failure.dart';
import '../../../../core/themes/colors.dart';
import '../../../../core/utils/functions.dart';
import '../../../../core/utils/location_helper.dart';
import '../../data/models/category_model.dart';
import '../../domain/entities/place.dart';
import '../../domain/usecases/set_image.dart';
import '../pages/map_page.dart';

class PostController extends GetxController {
  static PostController get to => Get.find();

  final SetImage _setImage;
  final setAddress.SetAddress _setAddress;

  PostController(this._setImage, this._setAddress);

  final formKey = GlobalKey<FormState>();
  RxList<File> listStoredImage = RxList<File>();
  final expandSubCategory = false.obs;
  final expandSubSubCategory = false.obs;

  CategoryModel _selectedCategory;
  final phonesList = [''].obs;

  List<CategoryModel> subCategoryList;
  List<CategoryModel> subSubCategoryList;

  Rx<CategoryModel> addPostSelectedCategory = Rx<CategoryModel>();
  Rx<Item> addPostSelectedSubCategory = Rx<Item>();
  Rx<Item> addPostSelectedSubSubCategory = Rx<Item>();
  List<Item> subCategoryListItem;
  List<Item> subSubCategoryListItem;
  List<DropdownMenuItem<Item>> subCategoryListDropdownItem;
  List<DropdownMenuItem<Item>> subSubCategoryListDropdownItem;

  @override
  void onInit() async {
    super.onInit();
    locationData = await Location().getLocation();
    print(locationData);
  }

  // ////////////////// VALIDATION SECTION //////////////////////

  void formIsValid() => formKey.currentState.validate();

  bool get subCategoryIsValid {
    if (addPostSelectedSubCategory.value == null) return false;
    return true;
  }

  bool get subSubCategoryIsValid {
    if (addPostSelectedSubSubCategory.value == null) return false;
    return true;
  }

  // bool get categoryIsValid {
  //   if (subCategoryList != null) {
  //     if (subSubCategoryList != null) {
  //       _selectedCategory = getCategoryFromList(
  //           subSubCategoryList, addPostSelectedSubSubCategory.value);
  //     } else {
  //       _selectedCategory = getCategoryFromList(
  //           subCategoryList, addPostSelectedSubCategory.value);
  //     }
  //   } else {
  //     _selectedCategory = addPostSelectedCategory.value;
  //   }
  // }

  // ////////////////// END VALIDATION SECTION //////////////////////

  CategoryModel getCategoryFromList(
      List<CategoryModel> categoryList, Item item) {
    return categoryList.singleWhere((category) => category.id == item.id);
  }

  List<Item> _buildItems(List<CategoryModel> categories) {
    List<Item> items = [];
    for (CategoryModel category in categories) {
      items.add(Item(category.id, getCategoryName(category)));
    }
    return items;
  }

  List<DropdownMenuItem<Item>> _buildItemDropdown(List itemList) {
    List<DropdownMenuItem<Item>> items = [];
    for (Item item in itemList) {
      items.add(DropdownMenuItem(
        value: item,
        child: Text(item.name, style: TextStyle(fontWeight: FontWeight.bold)),
      ));
    }
    return items;
  }

  void setAddPostSelectedCategory(CategoryModel categoryModel) {
    addPostSelectedCategory = categoryModel.obs;
    subCategoryList = addPostSelectedCategory.value?.categories;
    if (subCategoryList.isNotEmpty) {
      subCategoryListItem = _buildItems(subCategoryList);
      subCategoryListDropdownItem = _buildItemDropdown(subCategoryListItem);
      expandSubCategory.value = true;
    } else {
      expandSubCategory.value = false;
    }
  }

  void setAddPostSelectedSubCategory(Item item) {
    addPostSelectedSubCategory.value = item;
    addPostSelectedSubSubCategory = Rx<Item>();
    subSubCategoryList =
        getCategoryFromList(subCategoryList, addPostSelectedSubCategory.value)
            ?.categories;
    if (subSubCategoryList.isNotEmpty) {
      subSubCategoryListItem = _buildItems(subSubCategoryList);
      subSubCategoryListDropdownItem =
          _buildItemDropdown(subSubCategoryListItem);
      expandSubSubCategory.value = true;
    } else {
      expandSubSubCategory.value = false;
    }
  }

  void setAddPostSelectedSubSubCategory(Item item) {
    addPostSelectedSubSubCategory.value = item;
  }

  Future<void> takePicture() async {
    PickedFile imageFile;
    await Get.bottomSheet(
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GridTile(
                child: IconButton(
                  icon: Icon(Icons.camera, color: whiteColor, size: 32),
                  onPressed: () async => imageFile = await ImagePicker()
                      .getImage(source: ImageSource.camera, maxWidth: 600),
                ),
              ),
              GridTile(
                child: IconButton(
                  icon: Icon(Icons.upload_file, color: whiteColor, size: 32),
                  onPressed: () async => imageFile = await ImagePicker()
                      .getImage(source: ImageSource.gallery, maxWidth: 600),
                ),
              ),
            ],
          ),
        ),
        // isDismissible: true,
        backgroundColor: purpleColor2);
    if (imageFile == null) return;

    listStoredImage.add(File(imageFile.path));

    final appDir = await sysPaths.getApplicationDocumentsDirectory();
    final fileName = path.basename(imageFile.path);
    final saveImage =
        await File(imageFile.path).copy('${appDir.path}/$fileName');
  }

  ///////////////////// LOCATION ///////////////////////
  Rx<String> previewImageUrl = Rx<String>();
  LocationData locationData;
  RxList<Address> addresses = RxList<Address>();
  Either<Failure, List<int>> _list;
  Either<Failure, int> _address;
  AddressModel address;

  Future<void> tookLocation() async {
    await Get.bottomSheet(
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GridTile(
                child: IconButton(
                  icon: Icon(Icons.map_outlined, color: whiteColor, size: 32),
                  onPressed: () async => await selectOnMap(),
                ),
              ),
              GridTile(
                child: IconButton(
                  icon: Icon(Icons.upload_file, color: whiteColor, size: 32),
                  onPressed: () async => await getCurrentLocation(),
                ),
              ),
            ],
          ),
        ),
        // isDismissible: true,
        backgroundColor: purpleColor2);
  }

  void showPreview(double lat, double lng) {
    final staticMapImageUrl = LocationHelper.generateLocationPreviewImage(
      latitude: lat,
      longitude: lng,
    );

    previewImageUrl.value = staticMapImageUrl;
  }

  Future<void> getCurrentLocation() async {
    try {
      print(addresses);
      final locData = await Location().getLocation();
      addresses.value = await Geocoder.local.findAddressesFromCoordinates(
          Coordinates(locData.latitude, locData.longitude));
      showPreview(locData.latitude, locData.longitude);
      address = AddressModel(
        location: addresses.first.featureName,
        city: addresses.first.locality,
        province: addresses.first.adminArea.contains('Wilaya de ')
            ? PostController.to.addresses.first.adminArea
                .replaceAll('Wilaya de ', '')
            : PostController.to.addresses.first.adminArea
                .replaceAll(' Province', ''),
        country: addresses.first.countryName,
        latitude: locData.latitude,
        longitude: locData.longitude,
      );
    } catch (error) {
      return;
    }
  }

  Future<void> selectOnMap() async {
    final LatLng selectedLocation = await Get.to<LatLng>(MapPage(
      isSelecting: true,
      initialLocation: PlaceLocation(
          latitude: locationData.latitude, longitude: locationData.longitude),
    ));
    if (selectedLocation == null) {
      return;
    }
    addresses.value = await Geocoder.local.findAddressesFromCoordinates(
        Coordinates(selectedLocation.latitude, selectedLocation.longitude));
    showPreview(selectedLocation.latitude, selectedLocation.longitude);
    address = AddressModel(
      location: addresses.first.featureName,
      city: addresses.first.locality,
      province: addresses.first.adminArea.contains('Wilaya de ')
          ? PostController.to.addresses.first.adminArea
              .replaceAll('Wilaya de ', '')
          : PostController.to.addresses.first.adminArea
              .replaceAll(' Province', ''),
      country: addresses.first.countryName,
      latitude: selectedLocation.latitude,
      longitude: selectedLocation.longitude,
    );
  }

  Future<void> send() async {
    print('AuthStore.to.token:' + AuthStore.to.user.id.toString());
    if (AuthStore.to.token == null) Get.toNamed(Routers.social_auth);
    try {
      _list = await _setImage(Params(files: listStoredImage));
      _list.fold((l) => null, (list) async {
        _address = await _setAddress(setAddress.Params(address: address));
        _address.fold((l) => null, (addr) {});
      });
    } catch (e) {
      Get.snackbar(
        ':(',
        e.toString(),
        colorText: Colors.white,
        backgroundColor: Colors.red,
      );
    }
  }
}

class Item {
  const Item(this.id, this.name);
  final int id;
  final String name;
}
