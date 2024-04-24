import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vpn/common/mytext.dart';
import 'package:vpn/common/mytittlelist.dart';

class Faq extends StatefulWidget {
  const Faq({super.key});

  @override
  State<Faq> createState() => _FaqState();
}

class _FaqState extends State<Faq> {
  bool _checked = false;

  @override
  void initState() {
    _checked = false;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15, top: 60),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const BackButton(),
                Padding(
                  padding: const EdgeInsets.only(left: 100),
                  child: Text(
                    "Faq",
                    style: titleStyle,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            
            myTitileList(
                "Why I need VPN?", Icons.numbers_outlined, () => () {},const Icon(CupertinoIcons.forward,color: Colors.black87,size:18,), ),
            
            myTitileList(
                "Is it safe?", Icons.numbers_outlined, () => () {},const Icon(CupertinoIcons.forward,color: Colors.black87,size:18,), ),
            myTitileList(
              "How to use VPN?", Icons.numbers_outlined,  () {
                  if(_checked==false){
                    setState(() {
                      _checked =true;
                    });
                  }else{
                    setState(() {
                      _checked = false;
                    });
                  }
                },
                 Icon(_checked==false? CupertinoIcons.forward: Icons.keyboard_arrow_down_outlined,color: Colors.black87,size:_checked==false?18:26,),),
_checked==false? const SizedBox.shrink(): SizedBox(height:100,width:double.infinity,
child:Column(

  mainAxisAlignment: MainAxisAlignment.start,

  crossAxisAlignment: CrossAxisAlignment.start,

  children: [

    Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Text("Lorem Ipsum is simply dummy text of the printing and type setting industry.",style: bodyStyle,),
    )

  ],),),
                myTitileList(
               "How user-friendly is the VPN app?", Icons.numbers_outlined, () => () {},const Icon(CupertinoIcons.forward,color: Colors.black87,size:18,), ),
                myTitileList(
                "Are VPNs Legal?", Icons.numbers_outlined, () => () {},const Icon(CupertinoIcons.forward,color: Colors.black87,size:18,), ),
          ],
        ),
      ),
    );
  }
}
