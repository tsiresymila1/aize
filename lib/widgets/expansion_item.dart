
import 'package:aize/utils/data.dart';
import 'package:badges/badges.dart';
import 'package:flutter/material.dart';

class ExpansionItem extends StatelessWidget {
  final String asset;
  final String title;
  final  VoidCallback callback;
  final String count ;
  final Color color;
  const ExpansionItem({
    Key? key, required this.asset,required  this.title,required  this.callback,required  this.count, this.color=Colors.deepPurple,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Image.asset(this.asset,width: 35,height: 35,),
      title: Text(this.title,style: TextStyle(fontWeight: FontWeight.w500,fontSize: 14,color:  Constant.colorSecondary),),
      trailing: Badge(
        toAnimate: false,
        shape: BadgeShape.circle,
        badgeColor: Colors.deepPurple,
        borderRadius: BorderRadius.circular(8),
        badgeContent: Text(this.count, style: TextStyle(color: Colors.white)),
      ),
      onTap: this.callback,
    );
  }
}