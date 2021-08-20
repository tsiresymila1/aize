import 'package:aize/controllers/splash.dart';
import 'package:aize/utils/data.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get.dart';

class SplashScreen extends GetView<SplashController>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Constant.colorPrimary,
      body: Center(
        child: Container(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 12),
                child: Text('Chargement . . .',style: TextStyle(fontSize: 16,color:Colors.white),),
              ),
              Container(
                child: SpinKitThreeBounce(
                  color: Colors.white,
                  size: 30.0,
                ),
              )
              ],
          ),
        ),
      ),
    );
  }

}