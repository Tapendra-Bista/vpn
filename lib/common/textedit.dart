import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vpn/common/mytext.dart';

class CommonTextedit extends StatelessWidget {
  const CommonTextedit({
    super.key,required this.myhinttext,
    required this.myPrefixIcon,
    required this.mySuffixIcon,
    required this.myObscureText,
    required this.myTextInputType,
    required TextEditingController controller,
    required this.myOnChanged
    ,
    required this.value
  }) : _controller = controller;

  final TextEditingController _controller;
  final String myhinttext;
final Widget myPrefixIcon;
final Widget mySuffixIcon;
final bool myObscureText;
final int value;
final void Function(String)? myOnChanged;
final TextInputType  myTextInputType;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 18,left: 18,right: 18),

      child: TextField(
        inputFormatters:[
    LengthLimitingTextInputFormatter(value),
        ]

        ,
       obscureText:myObscureText ,
       keyboardType: myTextInputType,
       style: bodyStyle,
       onChanged:myOnChanged,
     decoration: InputDecoration(
     suffixIcon:mySuffixIcon ,
    
       prefixIcon: myPrefixIcon,
           hintText: myhinttext,
           errorBorder: OutlineInputBorder(
             borderRadius: BorderRadius.circular(12),
               borderSide: BorderSide(color: Colors.black.withOpacity(0.3))),
           disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
               borderSide: BorderSide(color: Colors.black.withOpacity(0.3))),
           focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
               borderSide: BorderSide(color: Colors.black.withOpacity(0.3))),
           filled: true,
           fillColor: Colors.transparent.withOpacity(0.03),
           border: InputBorder.none,
           focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
               borderSide: BorderSide(color: Colors.black.withOpacity(0.3))),
           enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
               borderSide: BorderSide(color: Colors.black.withOpacity(0.3)))),
       controller: _controller,
      ),
    );
  }
}