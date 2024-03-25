import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:page_transition/page_transition.dart';
import 'package:sample/app_constants.dart';
import 'package:sample/screens/processing_screen/processing_screen.dart';
import 'package:slide_to_act/slide_to_act.dart';

import 'ui_elements/purchasing_tile.dart';
import 'ui_elements/swipe_to_accept.dart';
import 'ui_elements/total_return_value.dart';

class PaymentScreen extends StatefulWidget {
  static String id = "PaymentScreen";
  const PaymentScreen({super.key});

  @override
  State<PaymentScreen> createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  TextEditingController _controller = TextEditingController();
  double _textFieldWidth = 168.0;
  bool showEmptyAmountMessage = false;
  int amount = 0;
  double _sliderValue = 0.0;
  double _containerWidth = 200.0;
  double _dragStartX = 0.0;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(screenSize.width,70),
        child: Container(
          margin: const EdgeInsets.only(top: 10),
          child: AppBar(
            scrolledUnderElevation: 0,
            leading: GestureDetector(
              onTap: (){
                Navigator.pop(context);
              },
              child: Container(margin: const EdgeInsets.only(left: 0), child: Container(
                height: 36,
                width: 36,
                  decoration:const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFFDFEBDF),
                  ),
                  child: const Icon(Icons.arrow_back, color: primaryColor, size: 21,),
                ),
              ),
            ),
            leadingWidth: 47+50,
          ),
        ),
      ),
      body: Container(
        height: screenSize.height,
        width: screenSize.width,
        margin:const EdgeInsets.only(top: 21),
        child: Column(
          children: [
            Container(
              margin:const EdgeInsets.only(left: 24),
              child: const PurchasingTile(),
            ),
            const SizedBox(height: 24,),
            const Divider(thickness: 1,color: Color(0xFFDDDDD8),),
            Center(
              child: Container(
                height: 146,
                width: screenSize.width,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const SizedBox(height: 40,),
                    Text("Enter Amount",style: GoogleFonts.inter(fontWeight: FontWeight.w600,letterSpacing: 1.3,fontSize: 12,height: 1.5,color: Colors.black.withOpacity(0.4)),),
                    const SizedBox(height: 4,),
                    enterAmount(context),
                    const SizedBox(height: 14,),
                    showEmptyAmountMessage?
                    SizedBox(height:19,child: Text("Please enter an amount",style: GoogleFonts.inter(fontWeight: FontWeight.w400,letterSpacing: 1.3,fontSize: 12,height: 1.5,color: Color(0xFFB45309)),)):SizedBox(height: 19,),
                  ],
                ),
              ),
            ),
            const Divider(thickness: 1,color: Color(0xFFDDDDD8),),
            Container(
              height: 56,
              margin: EdgeInsets.symmetric(horizontal: 24),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Text("Total Returns",style: GoogleFonts.inter(fontWeight: FontWeight.w400,fontSize: 12,height: 1.5,color: Color(0xFF475569)),),
                    Row(
                      children: [
                        Text("₹ ",style: GoogleFonts.inter(fontWeight: FontWeight.w500,fontSize: 14,height: 1.5,color: Color(0xFFA8A29E)),),
                        Builder(
                          builder: (context) {
                            if(amount>=50000){
                              return Row(
                                children: [
                                  ...buildReturnAmountList(amount.toString())
                                ],
                              );
                            }
                            return Text("-",style: GoogleFonts.inter(fontWeight: FontWeight.w400,letterSpacing: 1.5,fontSize: 12,height: 1.5,color: Color(0xFF475569)),);
                          }
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const Divider(thickness: 1,color: Color(0xFFDDDDD8),),
            Container(
              height: 56,
              margin: EdgeInsets.symmetric(horizontal: 24),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Text("Net Yield",style: GoogleFonts.inter(fontWeight: FontWeight.w400,fontSize: 12,height: 1.5,color: Color(0xFF475569)),),
                        SizedBox(width: 10,),
                        Text("IRR",style: GoogleFonts.inter(fontWeight: FontWeight.w400,fontSize: 12,height: 1.5,color: Color(0xFF15803D)),),
                        SizedBox(width: 4,),
                        SvgPicture.asset(
                            "assets/images/info.svg",
                            colorFilter:const ColorFilter.mode(Color(0xFF7CD957), BlendMode.srcIn),
                            width: 12,
                            height: 12,
                            semanticsLabel: 'img'

                        ),
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("13.11 ",style: GoogleFonts.inter(fontWeight: FontWeight.w500,fontSize: 16,height: 1.5,color: Color(0xFF475569)),),
                        Text("%",style: GoogleFonts.inter(fontWeight: FontWeight.w500,letterSpacing: 1.5,fontSize: 12,height: 1.5,color: Color(0xFFA8A29E)),)
                      ],
                    ),

                  ],
                ),
              ),
            ),
            const Divider(thickness: 1,color: Color(0xFFDDDDD8),),
            Container(
              height: 56,
              margin: EdgeInsets.symmetric(horizontal: 24),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Tenure",style: GoogleFonts.inter(fontWeight: FontWeight.w400,fontSize: 12,height: 1.5,color: Color(0xFF475569)),),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text("61 ",style: GoogleFonts.inter(fontWeight: FontWeight.w500,fontSize: 16,height: 1.5,color: Color(0xFF475569)),),
                        Text("days",style: GoogleFonts.inter(fontWeight: FontWeight.w500,fontSize: 12,height: 1.6,color: Color(0xFFA8A29E)),)
                      ],
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Container(
        padding: EdgeInsets.symmetric(horizontal: 24,vertical: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(0xFF000000).withOpacity(0.04),
              spreadRadius: 0,
              blurRadius: 4,
              offset: Offset(0, -4), // changes position of shadow
            ),
            BoxShadow(
              color: Color(0xFF000000).withOpacity(0.06),
              spreadRadius: 0,
              blurRadius: 1,
              offset: Offset(0, -1), // changes position of shadow
            ),
          ],
        ),
        height: 117,
        width: screenSize.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Balance: ₹1,00,000", style: GoogleFonts.inter(color: Color(0xFF44403C), fontSize: 12, height: 1.5, fontWeight: FontWeight.w400),),
                  Text("Required: ₹0", style: GoogleFonts.inter(color: Color(0xFF44403C), fontSize: 12, height: 1.5, fontWeight: FontWeight.w400),),
                ],
              ),
            ),
            Container(
              height: 45,
              decoration: BoxDecoration(
                color: const Color(0xFFE4E4E7),
                borderRadius: BorderRadius.circular(6), // Adjust the radius as needed
              ),
              child: Stack(
                children: [
                  Center(child: Text("SWIPE TO PAY", style: GoogleFonts.inter(color: Color(0xFF1C1917), fontSize: 12, height: 1.5, fontWeight: FontWeight.w600),)),
                  Builder(
                      builder: (context) {
                        return Container(
                          alignment: Alignment.topLeft,
                          child: DragIncreaseWidget(maxWidth: screenSize.width*0.9,onIncreaseComplete: (){
                            Navigator.push(context, PageTransition(type: PageTransitionType.rightToLeftWithFade, child: ProcessingScreen()));
                          },));
                      }
                  ),
                ],
              ),
            )
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }


  Widget enterAmount(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SizedBox(
      width: screenSize.width,
      child: Center(
        child: Container(
          alignment: Alignment.center,
          width: _textFieldWidth,
          child: TextField(
            controller: _controller,
            inputFormatters: [
              LengthLimitingTextInputFormatter(10),
            ],
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            style: GoogleFonts.inter(fontSize: 24,fontWeight: FontWeight.w600,height: 1.5,color: Color(0xFF0C0A09)),
            decoration: InputDecoration(

              isDense: true,
              contentPadding: EdgeInsets.only(left: 17),
              prefixIcon: Container(height: 36,width: 14, child: Center(child: Text("₹",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500,height: 1.5,color: Colors.black.withOpacity(0.4)),))),
              prefixIconConstraints: BoxConstraints(maxWidth: 0),
              hintText: 'Min 50,000',
              hintStyle: GoogleFonts.inter(fontSize: 24,fontWeight: FontWeight.w500,height: 1.7,color: Colors.black.withOpacity(0.4)),
              border: InputBorder.none,
            ),
            onChanged: (value) {
              final String number = value.replaceAll(',', '');
              if(value.isNotEmpty){
                _controller.text = NumberFormat.decimalPattern().format(double.parse(number));
              }

              setState(() {
                // Update the width based on the length of the entered value
                if(value.isEmpty){
                  _textFieldWidth =168.0;
                  showEmptyAmountMessage=true;
                }else {
                  showEmptyAmountMessage=false;
                  _textFieldWidth = (value.length * 14.0) + 50;
                  if(num.parse(number)>=50000){
                    amount = int.parse(number);
                  }
                }
              });
            },
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _controller.dispose();
    super.dispose();
  }
}
