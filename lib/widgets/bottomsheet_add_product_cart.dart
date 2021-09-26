import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BottomSheetAddProductCart extends GetView{
  @override
  Widget build(BuildContext context) {
     return Container(
       padding: EdgeInsets.symmetric(horizontal: 16.w,vertical: 12.h),
       decoration: BoxDecoration(
          borderRadius: BorderRadius.only(topRight: Radius.circular(20.r),topLeft: Radius.circular(20.r)),
          color: Colors.white
       ),
       child: Column(
         mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 40.h,
              child: TypeAheadField(
                textFieldConfiguration: TextFieldConfiguration(
                    style: DefaultTextStyle.of(context).style.copyWith(
                        fontStyle: FontStyle.italic
                    ),
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(0),
                          borderSide: BorderSide(width: 0.5)
                        )
                    )
                ),
                suggestionsCallback: (pattern)  {
                  return  ['hello','salt'];
                },
                itemBuilder: (context, suggestion) {
                  return ListTile(
                    leading: Icon(Icons.shopping_cart),
                    title: Text(suggestion!.toString()),
                    subtitle: Text('$suggestion'),
                  );
                },
                onSuggestionSelected: (suggestion) {
                },
                suggestionsBoxDecoration: SuggestionsBoxDecoration(
                    elevation: 0.0
                ),
              ),
            )
          ],
       ),
     );
  }

}