import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sample/screens/all_done_screen/all_done_screen.dart';

import '../../ui_elements/app_button.dart';

class ContractScreen extends StatefulWidget {
  static const id = "ContractScreen";
  const ContractScreen({super.key});

  @override
  State<ContractScreen> createState() => _ContractScreenState();
}

class _ContractScreenState extends State<ContractScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        height: screenSize.height,
        width: screenSize.width,
        child: Column(
          children: [
            SizedBox(height: 162,),
            Container(
              height: screenSize.height*0.6,
              child: Image.asset("assets/images/contract.png"),
            ),
            SizedBox(height: 34,),
            AppButton(handler: (){
              Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeftWithFade, child: AllDoneScreen()));
            },label: "Sign Contract",),
          ],
        ),
      ),
    );
  }
}
