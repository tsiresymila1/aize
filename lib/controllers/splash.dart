import 'dart:async';

import 'package:aize/routes/login.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
    int time = 0 ;
    late Timer timer ;
    @override
    void onInit() {
        timer = Timer.periodic(new Duration(seconds: 1), (timer) {
           timer = timer;
           time += 1 ;
           if(time == 5){
             timer.cancel();
             Get.off(()=> Login());
           }
        });
        super.onInit();
    }

    @override
    void onClose() {
      timer.cancel();
      super.onClose();
    }
}