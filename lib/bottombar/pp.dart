
import 'package:flutter/material.dart';
import 'package:vpn/bottombar/smb.dart';
import 'package:vpn/common/boxdecoration.dart';
import 'package:vpn/common/mytext.dart';

class PicturePart extends StatelessWidget {
  const PicturePart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
       height:195,
       width:double.infinity,
       decoration: boxDecoration.copyWith(borderRadius: BorderRadius.circular(0),color: Colors.grey.withOpacity(0.03)),
       child: Column(children: [
          Padding(
         padding: const EdgeInsets.symmetric(vertical: 13),
         child: Center(
           child: InkWell(
             onTap: () {
               smb(context);
             },
             child: const CircleAvatar(
                 foregroundColor: Colors.blue,
                 radius: 53,
                 backgroundImage: AssetImage(
                   "image/crf.jpg",
                 )),
           ),
         ),
       ),
       Center(
         child: Padding(
           padding: const EdgeInsets.only(left: 35, bottom: 20),
           child: RichText(
               text: TextSpan(
                   text: "Tapendra Bista",
                   style: bodyStyle.copyWith(
                       color: Colors.black,
                       fontWeight: FontWeight.w700,
                       fontSize: 20),
                   children: [
                 TextSpan(
                     text: "\ntapendrabista01@gmail.com",
                     style: bodyStyle.copyWith(fontSize: 13))
               ])),
         ),
       ),
       ],),
      ),
    );
  }
}
