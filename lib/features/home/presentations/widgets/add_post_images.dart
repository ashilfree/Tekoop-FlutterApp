import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/themes/colors.dart';
import '../controllers/post_controller.dart';
import 'add_post_image_item.dart';

class AddPostImages extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 18),
          child: Text(
            ' Photos',
            style: TextStyle(
                color: blueColor, fontWeight: FontWeight.bold, fontSize: 18),
          ),
        ),
        Container(
          padding: EdgeInsets.all(8.0),
          decoration:
              BoxDecoration(border: Border.all(width: 0.5, color: greyColor1)),
          child: Column(
            children: [
              FlatButton(
                onPressed: PostController.to.takePicture,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Add photos',
                        style: TextStyle(fontSize: 16, color: greyColor)),
                    Icon(
                      Icons.upload_outlined,
                      color: blueColor,
                    )
                  ],
                ),
                materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
              ),
              Obx(() => Container(
                  padding: EdgeInsets.all(10.0),
                  child: Wrap(
                    children: [
                      ...PostController.to.listStoredImage
                          .map(
                            (storedImage) => AddPostImageItem(storedImage: storedImage, remove:()=> PostController.to.listStoredImage.remove(storedImage)),
                          )
                          .toList(),
                    ],
                  )))
            ],
          ),
        ),
      ],
    );
  }
}
