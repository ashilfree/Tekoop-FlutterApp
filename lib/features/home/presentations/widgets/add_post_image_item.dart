import 'dart:io';

import 'package:flutter/material.dart';

class AddPostImageItem extends StatelessWidget {
  final File storedImage;
  final Function remove;

  const AddPostImageItem({Key key, this.storedImage, this.remove})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(right:10.0, top:10.0),
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.grey),
          ),
          child: Image.file(
            storedImage,
            fit: BoxFit.cover,
            width: double.infinity,
          ),
          alignment: Alignment.center,
        ),
        Positioned(
          right: 5,
          top: 5,
          child: InkWell(
                      child: Container(
              padding: EdgeInsets.all(2.0),
              // color: Theme.of(context).accentColor,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.red,
              ),
              // constraints: BoxConstraints(
              //   maxWidth: 10,
              //   maxHeight: 10,
              // ),
              child: Icon(Icons.remove, size:16),
            ),
            onTap: remove,
          ),
        )
      ],
    );
  }
}
