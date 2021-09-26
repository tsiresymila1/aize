import 'package:aize/routes/deliver_manager.dart';
import 'package:aize/routes/delivery_manager.dart';
import 'package:aize/routes/history_menu.dart';
import 'package:aize/routes/product_manager.dart';
import 'package:aize/routes/sale_menu.dart';
import 'package:aize/routes/stock_menu.dart';
import 'package:aize/routes/warehouse_manager.dart';
import 'package:aize/widgets/base.dart';
import 'package:aize/widgets/expansion_item.dart';
import 'package:aize/widgets/menu_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Home extends GetView {
  @override
  Widget build(BuildContext context) {
    return BaseView(
        title: "Dashboard",
        body: Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w,vertical: 8.h),
          height: 1.sh, child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            MenuItem(
                title: "Gestion de stock",
                asset: "assets/store.png",
                callback: (){
                  Get.to(()=>StockMenu());
                },
                children: [
                   ExpansionItem(
                     asset: "assets/invent.png",
                     title: 'Produits',
                     count: '10',
                     callback: (){
                       Get.to(()=>ProductManager());
                     },
                   ),
                  ExpansionItem(
                    asset: "assets/waezhouse.png",
                    title: 'Dépot',
                    count: '5',
                    callback: (){
                      Get.to(()=>WarehouseManager());
                    },
                  ),
                  ExpansionItem(
                    asset: "assets/delivering.png",
                    title: 'Livraison',
                    count: '5',
                    callback: (){
                      Get.to(()=>DeliveryManager());
                    },
                  ),
                ],
            ),
            MenuItem(
                title: "Gestion de vente",
                asset: "assets/sale2.png",
                callback: (){
                  Get.to(()=>SaleMenu());
                },
              children: [
                ExpansionItem(
                  asset: "assets/histb.png",
                  title: 'Clientele',
                  count: '1200',
                  callback: (){
                  },
                ),
                ExpansionItem(
                  asset: "assets/money.png",
                  title: 'Détte et impayés',
                  count: '1200',
                  callback: (){
                  },
                ),
              ],
            ),
            MenuItem(
                title: "Historique",
                asset: "assets/histo.png",
                callback: (){
                  Get.to(()=>HistoryMenu());
                },
              children: [
                ExpansionItem(
                  asset: "assets/salling.png",
                  title: 'Vente',
                  count: '1200',
                  callback: (){
                  },
                ),
                ExpansionItem(
                  asset: "assets/hista.png",
                  title: 'Achat',
                  count: '1200',
                  callback: (){
                  },
                ),
                ExpansionItem(
                  asset: "assets/del.png",
                  title: 'Action sur compte',
                  count: '1200',
                  callback: (){
                  },
                ),
              ],
            ),
            MenuItem(
                title: "Livreur",
                asset: "assets/deliv.png",
                callback: (){
                  Get.to(()=>DeliverManager());
                }
            ),
            MenuItem(
                title: "Fornisseur",
                asset: "assets/suppl.png",
                callback: (){
                  Get.to(()=>DeliverManager());
                }
            ),
            MenuItem(
                title: "Client",
                asset: "assets/client.png",
                callback: (){
                  Get.to(()=>DeliverManager());
                }
            ),

          ],
        ),
      ),
    ), onSearch: (String data){

    });
  }

}

