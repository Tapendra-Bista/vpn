import 'package:flutter/material.dart';

class Backbutton extends StatelessWidget {
  const Backbutton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: TextButton(
        
          autofocus: false,
          style: const ButtonStyle(
            
            overlayColor: MaterialStatePropertyAll<Color>(Colors.transparent),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            size: 25,
            color: Colors.black.withOpacity(0.6),
          )),
    );
  }
}
