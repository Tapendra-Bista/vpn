
import 'package:flutter/material.dart';

class Transbutton extends StatelessWidget {
  const Transbutton({
    super.key,required this.buttonName,
    required this.onPressed
  });
final String buttonName;
 final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 20),
      child: MaterialButton(
        height: 53,
        minWidth: 310,
        onPressed:onPressed,
        highlightColor: Colors.transparent,
        splashColor:Colors.transparent ,
        shape: RoundedRectangleBorder(
            side: const BorderSide(
                color: Color.fromRGBO(38, 94, 227, 0.8), width: 1.5),
            borderRadius: BorderRadius.circular(12)),
        child: Text(
          buttonName,
          style: TextStyle(
              fontFamily: "font/redditfont.tff",
              fontSize: 16,
        
              color: Colors.blue.withOpacity(0.9)),
        ),
      ),
    );
  }
}

class Bluebutton extends StatelessWidget {
  const Bluebutton({
    super.key,required this.buttonName,
    required this.onPressed
   
  });
final String buttonName;
 final Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, bottom: 10),
      child: MaterialButton(
        height: 53,
        minWidth: 310,
         highlightColor: Colors.transparent,
        splashColor:Colors.transparent ,
        onPressed:onPressed,
        color: const Color.fromRGBO(38, 94, 227, 1),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)),
        child: Text(
          buttonName,
          style: TextStyle(
              fontFamily: "font/redditfont.tff",
              fontSize: 14,
              color: Colors.white.withOpacity(0.9)),
        ),
      ),
    );
  }
}