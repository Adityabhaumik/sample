
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class InvestmentDetailsTile extends StatelessWidget {
  const InvestmentDetailsTile({
    super.key,
    required this.topLeftTitle,
    required this.topLeftValues,
    required this.topRightTitle,
    required this.topRightValues,
    required this.bottomLeftTitle,
    required this.bottomLeftValues,
    required this.bottomRightTitle,
    required this.bottomRightValues
  });
  final String topLeftTitle;
  final Row topLeftValues;
  final String topRightTitle;
  final Row topRightValues;
  final String bottomLeftTitle;
  final Row bottomLeftValues;
  final String bottomRightTitle;
  final Row bottomRightValues;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      height: 147,
      width: screenSize.width,
      decoration: BoxDecoration(
        color:const Color(0xFFF6F6F1),
        borderRadius: BorderRadius.circular(6.0),
        border: Border.all(color:const Color(0xFFD6D3D1), width: 1.0),
      ),
      child:Column(
        children: [
          Row(
            children: [
              Expanded(child: topLeft(title: topLeftTitle,value: topLeftValues)),
              Container(width: 1,height: 71,color:const Color(0xFFD6D3D1)),
              Expanded(child: topRight(title: topRightTitle,value: topRightValues)),
            ],
          ),
          Container(width: screenSize.width,height: 1,color: const Color(0xFFD6D3D1)),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(child: bottomLeft(title: bottomLeftTitle,value: bottomLeftValues)),
              Container(width: 1,height: 71,color:const Color(0xFFD6D3D1)),
              Expanded(child: bottomRight(title: bottomRightTitle,value: bottomRightValues)),
            ],
          ),
        ],
      ),
    );
  }

  Widget topLeft({required String title,required Widget value}) {
    const  BoxDecoration decoration =  BoxDecoration(
      color: Color(0xFFF6F6F1),
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(6.0),
      ),);


    return Container(
      height: 71,
      decoration:decoration,
      padding: EdgeInsets.only(left: 16,bottom: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: GoogleFonts.inter(color: Color(0xFF78716C), fontSize: 10, height: 1.5, fontWeight: FontWeight.w500),),
          value,

        ],
      ),
    );
  }

  Widget topRight({required String title,required Widget value}) {
    late final BoxDecoration decoraion  =  BoxDecoration(
      color: Color(0xFFF6F6F1),
      borderRadius: BorderRadius.only(
        topRight: Radius.circular(6.0),
      ),);


    return Container(
      height: 71,
      decoration:decoraion,
      padding: EdgeInsets.only(left: 16,bottom: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: GoogleFonts.inter(color: Color(0xFF78716C), fontSize: 10, height: 1.5, fontWeight: FontWeight.w500),),
          value,

        ],
      ),
    );
  }

  Widget bottomLeft({required String title,required Widget value}) {
    const BoxDecoration decoration =  BoxDecoration(
      color: Color(0xFFF6F6F1),
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(6.0),
      ),);


    return Container(
      height: 71,
      decoration:decoration,
      padding: EdgeInsets.only(left: 16,bottom: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: GoogleFonts.inter(color: Color(0xFF78716C), fontSize: 10, height: 1.5, fontWeight: FontWeight.w500),),
          value,

        ],
      ),
    );
  }

  Widget bottomRight({required String title,required Widget value}) {
    BoxDecoration decoration =  const BoxDecoration(
      color: Color(0xFFF6F6F1),
      borderRadius: BorderRadius.only(
        bottomRight: Radius.circular(6.0),
      ),);

    return Container(
      height: 71,
      decoration:decoration,
      padding: EdgeInsets.only(left: 16,bottom: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: GoogleFonts.inter(color: Color(0xFF78716C), fontSize: 10, height: 1.5, fontWeight: FontWeight.w500),),
          value,

        ],
      ),
    );
  }
}
