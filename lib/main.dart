import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sample/screens/all_done_screen/all_done_screen.dart';
import 'package:sample/screens/contract_screen/contract_screen.dart';
import 'package:sample/screens/payment_screen/payment_screen.dart';
import 'package:sample/screens/processing_screen/processing_screen.dart';
import 'package:sample/screens/temp/temp.dart';

import 'package:vibration/vibration.dart';

import 'screens/details_screen/details_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: DetailsScreen(),
      routes: {
        DetailsScreen.id:(context) => const DetailsScreen(),
        PaymentScreen.id:(context) =>const PaymentScreen(),
        ProcessingScreen.id:(context) => const ProcessingScreen(),
        ContractScreen.id:(context) =>const ContractScreen(),
        AllDoneScreen.id:(context) =>const AllDoneScreen()
      },
    );
  }
}
