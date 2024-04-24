
import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:vpn/common/mybutton.dart';
import 'package:vpn/common/mystring.dart';
import 'package:vpn/first_page/swipepart.dart';


class Firstpage extends StatefulWidget {
  const Firstpage({super.key});
  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  int currentindex =0;

  List items = [SwipePart(imageUrl:url[0],title:xtitle[0],body: stringItems[0],),SwipePart(imageUrl:url[1],title:xtitle[1],body: stringItems[0],),SwipePart(imageUrl:url[2],title:xtitle[2],body: stringItems[1],),];
  SwiperController mycontroller = SwiperController();



  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 15, right: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [

           
          SizedBox(
            height:440,
            child: NotificationListener<OverscrollIndicatorNotification>(
              onNotification: (notification) {
                notification.disallowIndicator();
                return true;
              },
              child: Swiper(
                index:currentindex,
                scrollDirection: Axis.horizontal,
              
                      loop: false,
                controller: mycontroller,
                layout: SwiperLayout.DEFAULT,
      onIndexChanged: (value) {

setState(() {
  currentindex = value;
});
debugPrint("$currentindex");
      }   ,

                autoplay:false,
                itemBuilder: (context, index) =>items[index],
                itemCount: 3,
              
                pagination:  SwiperPagination(
                  alignment: Alignment.bottomCenter,
                  margin: const EdgeInsets.all(3),
                  builder: DotSwiperPaginationBuilder(
                    size: 13.9,
                    activeSize: 15.0,
                    color: Colors.black.withOpacity(0.4)
                    
                  )
                ),
                viewportFraction: 10.0,
                
                ),
            ),
          ),
          
      currentindex==2? Bluebutton(buttonName: "Get Started" ,onPressed: () {
             Navigator.pushReplacementNamed(context, "/initialpage");
           },):Bluebutton(buttonName: "Continue" ,onPressed: () {
              mycontroller.next();
            },),
       currentindex==2? const Row():  Transbutton(buttonName:"Skip",onPressed: () {
              Navigator.pushReplacementNamed(context, "/initialpage");
            },)
          ],
        ),
      ),
    );
  }
  
}



