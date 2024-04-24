
import 'package:flutter/material.dart';
import 'package:vpn/common/mytext.dart';

class SwipePart extends StatelessWidget {
  const SwipePart({
    super.key,
    required this.imageUrl,
     required this.title, required this.body
  });
final String imageUrl;
final String title;
final String body;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
         imageUrl,
          height: 300,
          width: 450,
        ),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(
              left:15,
            ),
            child: RichText(
                text: TextSpan(
                    text:title,
                    style:titleStyle,
                    children: [
                  TextSpan(
                    text:
                     body ,
                    style:bodyStyle
                  )
                ])),
          ),
        ),
      ],
    );
  }
}
