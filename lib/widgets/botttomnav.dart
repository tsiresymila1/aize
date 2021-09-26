import 'package:aize/controllers/navigation.dart';
import 'package:aize/routes/history_menu.dart';
import 'package:aize/routes/home.dart';
import 'package:aize/routes/sale_menu.dart';
import 'package:aize/utils/data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_vector_icons/flutter_vector_icons.dart';
import 'package:get/get.dart';

class BottomNavigation extends GetView<BottomNavigationController> {
  @override
  Widget build(BuildContext context) {
    return Obx(() {
        return BottomNavigationBar(
          backgroundColor: Colors.white,
          selectedItemColor:Colors.black54,
          selectedLabelStyle: TextStyle(color:  Colors.black54,fontSize: 12),
          unselectedItemColor  :Colors.black54,
          unselectedLabelStyle: TextStyle(color: Colors.black54,fontSize: 12),
          currentIndex: controller.currentIndex.value,
          type: BottomNavigationBarType.fixed,
          onTap: (int index){
              controller.currentIndex.value = index;
              switch(index){
                case 0 :
                  Get.to(()=>Home());
                  break;
                case 1 :
                  break ;
                case 2:
                  Get.to(()=>SaleMenu());
                  break;
                case 3:
                  Get.to(()=>HistoryMenu());
                  break;
              }
          },
          items: [
            BottomNavigationBarItem(
              icon: new Icon(Ionicons.home_outline, size: 20,),
              label: 'Accueil',
            ),
            BottomNavigationBarItem(
              icon: new Icon(EvilIcons.cart),
              label: 'Achat',
            ),
            BottomNavigationBarItem(
                icon: Icon(EvilIcons.credit_card),
                label : 'Vente',
            ),
            BottomNavigationBarItem(
                icon: Icon(EvilIcons.clock),
                label : 'Historique'
            )
          ],
        );
      }
    );
  }

}