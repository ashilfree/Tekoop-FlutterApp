import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../features/home/data/models/category_model.dart';
import '../../features/home/data/models/post_model.dart';

extension StringExtension on String {
  String capitalize() => split(" ")
      .map((str) => "${str[0].toUpperCase()}${str.substring(1)}")
      .join(" ");
}

String? getCategoryName(CategoryModel category) {
  if (Get.locale == const Locale('ar', 'AL')) return category.nameAr;
  if (Get.locale == const Locale('fr', 'FR')) return category.nameFr;
  if (Get.locale == const Locale('en', 'US')) return category.nameEn;
  return '';
}

Future<void> makePhoneCall(String url) async {
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}

List<CategoryModel> categoriesFirstRanges(List<CategoryModel> categories) =>
    categories.where((category) {
      return category.parent == null;
    }).toList();

List<PostModel> getPostsByCategory(
    List<PostModel> posts, CategoryModel category) {
  return posts.where((post) {
    print(post.category);
    return (post.category.id == category.id);
  }).toList();
}
