
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

List buildReturnAmountList(String value){
  value = value.replaceAll(',', '');
  final number = int.parse(value);
  double increaseAmount = (number * 13.11) / 100;
  double increasedNumber = number + increaseAmount;
  final String finalAmount = NumberFormat.decimalPattern().format(increasedNumber);
  int delay = 100;
  final valueInArray = finalAmount.split("");
  final widgetArray = [];
  for(int index=valueInArray.length-1;index>=0;index--){
    if(valueInArray[index] == ","){
      delay = delay + 50;
      widgetArray.add(FadeInUp(delay:Duration(milliseconds: delay),duration: Duration(milliseconds: 200),from:10,child: Text(valueInArray[index],style: GoogleFonts.inter(fontWeight: FontWeight.w500,fontSize: 14,height: 0.6,color: Color(0xFF475569)),),));
    }else{
      delay = delay + 100;
      widgetArray.add(FadeInUp(delay:Duration(milliseconds: delay),duration: Duration(milliseconds: 200),from:10,child: Text(valueInArray[index],style: GoogleFonts.inter(fontWeight: FontWeight.w500,fontSize: 14,height: 0.6,color: Color(0xFF475569)),),));
    }
  }
  final resultantArray =  widgetArray.reversed.toList();
  return resultantArray;
}