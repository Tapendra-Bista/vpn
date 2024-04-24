import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:vpn/common/mytext.dart';

class OtpTextedit extends StatefulWidget {
  const OtpTextedit({
    super.key,
  });

  @override
  State<OtpTextedit> createState() => _OtpTexteditState();
}

class _OtpTexteditState extends State<OtpTextedit> {
  final TextEditingController _controller = TextEditingController();
@override


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 55,
      width: 60,
      child: TextFormField(
        style: titleStyle.copyWith(color: Colors.black),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        inputFormatters: [
          LengthLimitingTextInputFormatter(1),
          FilteringTextInputFormatter.digitsOnly
        ],
        controller: _controller,
        decoration: InputDecoration(
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
            fillColor:  Colors.transparent.withOpacity(0.03),
            border: InputBorder.none,
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Colors.black.withOpacity(0.3))),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(color: Colors.black.withOpacity(0.3)))),
      ),
    );
  }
}
