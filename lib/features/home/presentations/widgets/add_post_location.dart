import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/themes/colors.dart';
import '../controllers/post_controller.dart';

class AddPostLocation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 18),
          child: Text(
            'Address',
            style: TextStyle(
                color: blueColor, fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        Column(
          children: [
            FlatButton(
              onPressed: PostController.to.tookLocation,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Add Location',
                      style: TextStyle(fontSize: 16, color: greyColor)),
                  Icon(
                    Icons.location_on_outlined,
                    color: blueColor,
                  )
                ],
              ),
              materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
            ),
            Obx(
              () => PostController.to.previewImageUrl.value == null
                  ? Container()
                  : Container(
                      height: 170,
                      width: double.infinity,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(width: 1, color: Colors.grey),
                      ),
                      child: Image.network(
                        PostController.to.previewImageUrl.value,
                        fit: BoxFit.cover,
                        width: double.infinity,
                      ),
                    ),
            ),
            Obx(() => PostController.to.addresses.isEmpty
            ? Container()
         //   : Container(child:Text('text'))
            : Column(children: [
              Text(PostController.to.addresses.first.featureName),
              Text(PostController.to.addresses.first.locality),
              Text(PostController.to.addresses.first.adminArea.contains('Wilaya de ') ? PostController.to.addresses.first.adminArea.replaceAll('Wilaya de ', '') : PostController.to.addresses.first.adminArea.replaceAll(' Province', '')),
              Text(PostController.to.addresses.first.countryName),
            ],)
            )
          ],
        ),
      ],
    );
  }
}
