import 'package:cinemax/app/values/colors.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/search_controller.dart';

class SearchView extends GetView<SearchController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.dark,
      appBar: AppBar(
        title: Text('SearchView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SearchView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
