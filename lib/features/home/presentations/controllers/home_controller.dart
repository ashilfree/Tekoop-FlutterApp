import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecases/usecase.dart';
import '../../../../core/utils/app_state.dart';
import '../../data/models/category_model.dart';
import '../../data/models/post_model.dart';
import '../../domain/usecases/get_categories.dart';
import '../../domain/usecases/get_posts.dart';
import 'post_controller.dart';

class HomeController extends GetxController {
  static HomeController get to => Get.find();

  final GetCategories _getCategories;
  final GetPosts _getPosts;
  HomeController(this._getCategories, this._getPosts);

  final bottomIndexSelected = 0.obs;
  final homeStep = 1.obs;
  final addPostStep = 1.obs;


  final appState = Rx<AppState>(AppState.IDLE);
  Rx<CategoryModel> homeSelectedCategory = Rx<CategoryModel>();
  Rx<CategoryModel> homeSelectedSubCategory = Rx<CategoryModel>();

  Rx<PostModel> selectedPost = Rx<PostModel>();

  

  Either<Failure, List<CategoryModel>> _categories;
  Either<Failure, List<PostModel>> _posts;

  Either<Failure, List<CategoryModel>> get categories => _categories;
  Either<Failure, List<PostModel>> get posts => _posts;

  void onItemTapped(int index) async {
    if (addPostStep.value == 2) {
      final response = await Get.dialog(AlertDialog(
          title: Text('You Are Sure ?!!'),
          actions: [
            FlatButton(
              child: Text('Ok'),
              onPressed: () => Get.back(result: true),
              // ** result: returns this value up the call stack **
            ),
            FlatButton(
              child: Text('No'),
              onPressed: () => Get.back(result: false),
            ),
          ],
          content: Text('you want to quit the post Form?')));
      if (response) {
        bottomIndexSelected.value = index;
        addPostStep.value = 1;
        PostController.to.addPostSelectedSubCategory = Rx<Item>();
      }
    } else {
      bottomIndexSelected.value = index;
      if (index == 1) addPostStep.value = 1;
      if (index == 0) homeStep.value = 1;
    }
  }

  void nextAddPostStep() {
    addPostStep.value = 2;
  }

  void homeStepTwo() {
    homeStep.value = 2;
  }

  void homeStepThree() {
    homeStep.value = 3;
  }

  void setHomeSelectedCategory(CategoryModel categoryModel) {
    homeSelectedCategory = categoryModel.obs;
  }

  void setHomeSelectedSubCategory(CategoryModel categoryModel) {
    homeSelectedSubCategory = categoryModel.obs;
  }



  void setSelectedPost(PostModel post) {
    selectedPost = post.obs;
  }

  @override
  void onInit() async {
    super.onInit();
    fetchAll();
  }

  fetchAll() async {
    try {
      appState.value = AppState.LOADING;
      await getCategories();
      appState.value = AppState.DONE;
      await getPosts();
    } catch (e) {
      print(e.toString());
      Get.snackbar(
        ':(',
        e.toString(),
        colorText: Colors.white,
        backgroundColor: Colors.red,
      );
      appState.value = AppState.ERROR;
    }
  }

  Future<void> getCategories() async {
    _categories = await _getCategories(NoParams());
  }

  Future<void> getPosts() async {
    _posts = await _getPosts(NoParams());
  }

}


