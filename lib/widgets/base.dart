import 'package:aize/controllers/search.dart';
import 'package:aize/routes/profile.dart';
import 'package:aize/utils/data.dart';
import 'package:aize/widgets/botttomnav.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
typedef SearchCallback = Function(String data);
class BaseView extends GetView<SearchController>{
  final Widget body ;
  final SearchCallback onSearch;
  BaseView({required this.body,required this.onSearch});

  Widget _buildSearchField() {
    return new TextField(
      autofocus: true,
      decoration: const InputDecoration(
        hintText: 'Recherche...',
        border: InputBorder.none,
        hintStyle: const TextStyle(color: Colors.white30),
      ),
      style: const TextStyle(color: Colors.white, fontSize: 16.0),
      onChanged: this.onSearch
    );
  }

  @override
  Widget build(BuildContext context) {
    return Obx(()=>Scaffold(
      backgroundColor: Constant.colorPrimary,
      appBar: AppBar(
        leading: controller.isSearhing.value ? IconButton( icon: const Icon(Icons.arrow_back),onPressed: (){
          controller.isSearhing.value = false;
        },) :  IconButton(icon: Icon(Icons.account_circle_rounded),iconSize: 35,onPressed: (){
          Get.to(()=>Profile());
        },),
        title: controller.isSearhing.value ?  _buildSearchField() : null,
        actions: [
          controller.isSearhing.value ? IconButton( icon: const Icon(Icons.clear),onPressed: (){
            controller.isSearhing.value = false;
          },) : IconButton( icon: const Icon(Icons.search),onPressed: (){
            controller.isSearhing.value = true;
          },),
        ],
        elevation: 0,
      ),
      body: this.body,
      bottomNavigationBar: BottomNavigation(),
    ));
  }

}