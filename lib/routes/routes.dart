import 'package:vpn/bottombar/bottombar.dart';
import 'package:vpn/bottombar/faq.dart';
import 'package:vpn/bottombar/payment.dart';
import 'package:vpn/bottombar/paynow.dart';
import 'package:vpn/bottombar/setting.dart';
import 'package:vpn/creditcard/card.dart';
import 'package:vpn/forgot/phase1.dart';
import 'package:vpn/forgot/phase2.dart';
import 'package:vpn/forgot/phase3.dart';
import 'package:vpn/signin_signup/initial.dart';
import 'package:vpn/signin_signup/sign_in.dart';
import 'package:vpn/signin_signup/sign_up.dart';

import '../first_page/first.dart';

var myroutes = {
 "/": (context) => const Firstpage(),
  "/initialpage": (context) => const Initialpage(),
  "/signup": (context) => const SignUp(),
  "/signin": (context) => const SignIn(),
  "/phase1": (context) => const Phase1(),
  "/phase2": (context) => const Phase2(),
  "/phase3": (context) => const Phase3(),
  "/setting":(context)=> const Setting(),
    "/faq":(context)=> const Faq(),
  "/navbar":(context)=> const MyNavigationBar(),
   "/payment":(context)=> const PaymentMethod(),
    "/paynow":(context)=> const PayNow(),
 
   "/card":(context)=>const Cardx(),


};
