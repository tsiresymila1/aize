import 'package:aize/routes/deliver_manager.dart';
import 'package:aize/routes/sale_manager.dart';
import 'package:aize/utils/data.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomNavigation extends GetView {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Constant.colorSecondary,
      selectedItemColor: Colors.white60,
      selectedLabelStyle: TextStyle(color: Colors.white60),
      unselectedItemColor  : Colors.white,
      unselectedLabelStyle: TextStyle(color:Colors.white),
      currentIndex: 0,
      type: BottomNavigationBarType.fixed,
      onTap: (int index){
          switch(index){
            case 0 :
              break;
            case 1 :
              break ;
            case 2:
              Get.to(()=>SaleManager());
              break;
            case 3:
              Get.to(()=>DeliverManager());
              break;
          }
      },
      items: [
        BottomNavigationBarItem(
          icon: new Icon(Icons.home),
          label: 'Accueil',
        ),
        BottomNavigationBarItem(
          icon: new Icon(Icons.add_shopping_cart_rounded),
          label: 'Achat',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.credit_card),
            label : 'Vente',
        ),
        BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label : 'Historique'
        )
      ],
    );
  }

}