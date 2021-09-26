import 'package:aize/controllers/search.dart';
import 'package:aize/routes/profile.dart';
import 'package:aize/utils/data.dart';
import 'package:aize/widgets/botttomnav.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

typedef SearchCallback = Function(String data);

class BaseView extends GetView<SearchController>{
  final Widget body ;
  final SearchCallback onSearch;
  final bool isback;
  final bool showBottomNav;
  final String title ;
  final double height ;
  final double top ;
  final String subtitle;
  final List<Widget> actions ;
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  BaseView({required this.body,required this.onSearch, this.isback = false, this.showBottomNav = true,this.title="",this.subtitle="Aize",this.height= 0,this.top: 0, this.actions=const []});

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
    return Scaffold(
      resizeToAvoidBottomInset: false,
      key: _scaffoldKey,
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
             DrawerHeader(
              decoration: BoxDecoration(
                color: Constant.primaryColor,
              ),
              child: InkWell(
                onTap: (){

                },
                child: Container(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 80.r,
                        height: 80.r,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: AssetImage('assets/profile.png')),
                          borderRadius: BorderRadius.circular(40.r)
                        ),
                      ),
                      Text(controller.getUser()['name'],style: TextStyle(color: Colors.white,fontSize: 14.sp),),
                      Text(controller.getUser()['email'],style: TextStyle(color: Colors.white,fontSize: 13.sp),)
                    ],
                  ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.settings, color: Color(0xff0b1569),),
              title: const Text('Parametre de compte'),
              onTap: () {
                // Update the state of the app.
                // controller.isSearhing.value = false;
                // ...
              },
            ),
            ListTile(
              leading: Icon(Icons.list,color: Color(0xffb90a1a),),
              title: const Text('Compte existant'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              leading: Icon(Icons.account_circle_rounded,color: Color(0xff129630),),
              title: const Text('Demandes'),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.only(top: 20),
            height: this.height != 0 ? this.height : 240.h,
            decoration: BoxDecoration(
              color: Constant.primaryColor
            ),
            alignment: Alignment.topCenter,
            child: Column(
              children: [
                Container(
                  height:60,
                  alignment: Alignment.centerLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          padding: EdgeInsets.all(8.0).copyWith(top: 20, left: 4),
                          child: this.isback ?  IconButton(padding: EdgeInsets.all(0),icon: Icon(EvilIcons.chevron_left,color: Colors.white,size: 32,),onPressed: (){
                            Get.back();
                          },): IconButton(padding: EdgeInsets.all(0),icon: Icon(Feather.align_left,color: Colors.white,size: 24,),onPressed: (){
                            _scaffoldKey.currentState?.openDrawer();
                          },),
                        ),
                        Flexible(
                          child: Container(
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: Container(
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    ...this.actions,
                                    Container(
                                      padding: EdgeInsets.all(8.0).copyWith(top: 20, left: 12),
                                      child: Icon(EvilIcons.user,color: Colors.white,size: 30,),
                                    ),
                                  ],
                                ),
                              ),

                            ),
                          ),
                        )
                      ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Container(
                        child: Text(this.title,style: TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold)),
                      ),
                      Container(
                        child: Text(this.subtitle,style: TextStyle(color: Colors.white,fontSize: 13,fontWeight: FontWeight.w500),),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: this.top != 0 ? this.top : 160.h),
            height: 1.sh,
            decoration: BoxDecoration(
            ),
            child: this.body,
          )
        ],
      ),
      bottomNavigationBar: this.showBottomNav ?  BottomNavigation() : null,
    );
  }

}