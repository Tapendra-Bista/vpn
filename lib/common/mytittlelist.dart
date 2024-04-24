
import 'package:flutter/material.dart';
import 'package:vpn/common/mytext.dart';

Widget myTitileList(String title,IconData leadingIcons,Function () onPressed,Widget myWidget,) { 
 return Padding(
   padding: const EdgeInsets.only(bottom:16),
   child: InkWell(
    
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    
    onTap: onPressed,
                 child: Container(
                  height:50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.01),
                    border: Border.all(
                      width:0.5,
                      color:Colors.black87.withOpacity(0.19)
                    ),
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadiusDirectional.circular(12)
                  ),
                   child: ListTile(
                    leading:  Icon(leadingIcons,color: Colors.blue,),
                    title:Text(title,style: bodyStyle,),
                    trailing:myWidget,
                    
                             ),
                 ),
               ),
 );}