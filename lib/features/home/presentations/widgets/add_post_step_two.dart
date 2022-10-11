import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/themes/colors.dart';
import '../controllers/post_controller.dart';
import 'add_post_images.dart';
import 'add_post_location.dart';
import 'phone_number_text_field.dart';

class AddPostStepTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: PostController.to.formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 20),
            Obx(() => (PostController.to.expandSubCategory.value)
                ? Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        border:
                            Border.all(width: 0.5, color: appBarBorderColor)),
                    alignment: Alignment.center,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButtonFormField(
                                            decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10),
                      errorStyle: TextStyle(fontSize: 12),
                      
                      labelStyle:
                          TextStyle(color: appBarBorderColor, fontSize: 12),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: greyColor1)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: darkPurpleColor)),
                      errorText: true ? null : 'message',
                    ),
                        icon: Icon(Icons.arrow_forward_ios_outlined, size: 16),
                        isExpanded: true,
                        itemHeight: 50.0,
                        style: TextStyle(fontSize: 15.0, color: Colors.black),
                        items: PostController.to.subCategoryListDropdownItem,
                        onChanged:
                            PostController.to.setAddPostSelectedSubCategory,
                        value:
                            PostController.to.addPostSelectedSubCategory.value,
                        hint: Text('Choose Sub-category'),
                        validator: (value) =>
                            value == null ? 'Please fill sub category' : null,
                      ),
                    ),
                  )
                : Container()),
            Obx(() => (PostController.to.expandSubSubCategory.value)
                ? SizedBox(
                    height: 20,
                  )
                : Container()),
            Obx(() => (PostController.to.expandSubSubCategory.value)
                ? Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                        border:
                            Border.all(width: 0.5, color: appBarBorderColor)),
                    alignment: Alignment.center,
                    child: DropdownButtonHideUnderline(
                      child: DropdownButtonFormField(
                                            decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10),
                      errorStyle: TextStyle(fontSize: 12),
                      hintText: 'Title',
                      labelStyle:
                          TextStyle(color: appBarBorderColor, fontSize: 12),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: greyColor1)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: darkPurpleColor)),
                      errorText: true ? null : 'message',
                    ),
                        icon: Icon(Icons.arrow_forward_ios_outlined, size: 16),
                        isExpanded: true,
                        itemHeight: 50.0,
                        style: TextStyle(fontSize: 15.0, color: Colors.black),
                        items: PostController.to.subSubCategoryListDropdownItem,
                        onChanged:
                            PostController.to.setAddPostSelectedSubSubCategory,
                        value: PostController
                            .to.addPostSelectedSubSubCategory.value,
                        hint: Text('Choose Sub-Sub-category'),
                        validator: (value) => value == null
                            ? 'Please fill sub sub category'
                            : null,
                      ),
                    ),
                  )
                : Container()),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 18),
              child: Text(
                'Ad info',
                style: TextStyle(
                    color: blueColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  border: Border.all(width: 0.5, color: greyColor1)),
              child: Column(
                children: [
                  TextFormField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: appBarBorderColor),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10),
                      errorStyle: TextStyle(fontSize: 12),
                      hintText: 'Title',
                      labelStyle:
                          TextStyle(color: appBarBorderColor, fontSize: 12),
                      enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: greyColor1)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: darkPurpleColor)),
                      errorText: true ? null : 'message',
                    ),
                    autocorrect: false,
                    obscureText: false,
                    onChanged: null,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    style: TextStyle(color: appBarBorderColor),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10),
                      errorStyle: TextStyle(fontSize: 12),
                      hintText: 'Price',
                      labelStyle:
                          TextStyle(color: appBarBorderColor, fontSize: 12),
                      enabledBorder: new UnderlineInputBorder(
                          borderSide: new BorderSide(color: greyColor1)),
                      focusedBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: darkPurpleColor)),
                      errorText: true ? null : 'message',
                    ),
                    autocorrect: false,
                    obscureText: false,
                    onChanged: null,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.multiline,
                    style: TextStyle(color: appBarBorderColor),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10, top: 10),
                      errorStyle: TextStyle(fontSize: 12),
                      hintText: 'Description',
                      labelStyle:
                          TextStyle(color: appBarBorderColor, fontSize: 12),
                      border: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      errorText: true ? null : 'message',
                      alignLabelWithHint: true,
                    ),
                    autocorrect: false,
                    obscureText: false,
                    onChanged: null,
                    maxLines: 5,
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10.0, vertical: 18),
              child: Text(
                'Contacts details',
                style: TextStyle(
                    color: blueColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 18),
              ),
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              decoration: BoxDecoration(
                  border: Border.all(width: 0.5, color: greyColor1)),
              child: Obx(
                () => Column(
                  children: [
                    ...getFriends(),
                    TextField(
                      keyboardType: TextInputType.multiline,
                      style: TextStyle(color: appBarBorderColor),
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.only(left: 10),
                        errorStyle: TextStyle(fontSize: 12),
                        hintText: 'Email',
                        labelStyle:
                            TextStyle(color: appBarBorderColor, fontSize: 12),
                        border: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        errorText: true ? null : 'message',
                        alignLabelWithHint: true,
                      ),
                      autocorrect: false,
                      obscureText: false,
                      onChanged: null,
                    ),
                  ],
                ),
              ),
            ),
            AddPostLocation(),
            AddPostImages(),
            SizedBox(height: 20),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              RaisedButton(
                onPressed: PostController.to.formIsValid,
                child: Text('Post',
                    style: TextStyle(
                        color: whiteColor, fontWeight: FontWeight.bold)),
                padding: EdgeInsets.symmetric(vertical: 15, horizontal: 35),
                color: blueColor,
              ),
            ]),
            SizedBox(height: 100)
          ],
        ),
      ),
    );
  }

  List<Widget> getFriends() {
    List<Widget> friendsTextFieldsList = [];
    for (int i = 0; i < PostController.to.phonesList.length; i++) {
      friendsTextFieldsList.add(PhoneNumberTextField(i,
          _addRemoveButton(i == PostController.to.phonesList.length - 1, i)));
    }
    return friendsTextFieldsList;
  }

  Widget _addRemoveButton(bool add, int index) {
    return IconButton(
      icon:
          Icon((add) ? Icons.add_circle_outline : Icons.remove_circle_outline),
      color: (add) ? blueColor : Colors.red,
      onPressed: () {
        if (add) {
          // add new text-fields at the top of all friends textfields
          PostController.to.phonesList.insert(0, null);
        } else
          PostController.to.phonesList.removeAt(index);
      },
    );
  }
}
