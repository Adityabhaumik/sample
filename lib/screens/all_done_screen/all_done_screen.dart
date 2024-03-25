import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:sample/screens/contract_screen/contract_screen.dart';
import 'package:vibration/vibration.dart';

class AllDoneScreen extends StatefulWidget {
  static const id = "AllDoneScreen";
  const AllDoneScreen({super.key});

  @override
  State<AllDoneScreen> createState() => _AllDoneScreenState();
}

class _AllDoneScreenState extends State<AllDoneScreen> {

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            Container(
              height: screenSize.height,
              width: screenSize.width,
              color: Color(0xFF15803D),
              child: Lottie.asset('assets/lottie/flow.json'),
            ),
            Container(
              height: screenSize.height,
              width: screenSize.width,
              child: Column(
                children: [
                  SizedBox(height: 105,),
              Container(
                decoration: BoxDecoration(
                    color: Color(0xFF166534),
                    borderRadius: BorderRadius.all(Radius.circular(13.5))
                ),
                width: 111,
                height: 111,
                child: Center(
                  child: SvgPicture.asset(
                      "assets/images/all_done.svg",
                      colorFilter:const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                      width: 47,
                      height: 47,
                      semanticsLabel: 'img'

                  ),
                ),
              ),
                  SizedBox(height: 105,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("All Done",style: GoogleFonts.inter(fontWeight: FontWeight.w600,fontSize: 16,height: 1.5,color: Color(0xFFFFFFFF)),),
                      SizedBox(height: 16,),
                      Container(margin: EdgeInsets.symmetric(horizontal: 36), child: Text("Redirecting you to the DashBoard",textAlign: TextAlign.center ,style: GoogleFonts.inter(fontWeight: FontWeight.w400,fontSize: 12,height: 1.5,color: Color(0xFFA1CCB1)),)),
                    ],

                  ),
                ],
              ),
            )
          ],
        ));
  }
}
//
// class ZoomInWidget extends StatefulWidget {
//   @override
//   _ZoomInWidgetState createState() => _ZoomInWidgetState();
// }
//
// class _ZoomInWidgetState extends State<ZoomInWidget> with SingleTickerProviderStateMixin{
//   double _boxScale = 0.0;
//   bool _isBoxVisible = false;
//   bool _isCheckVisible = false;
//   double _checkScale = 0.0;
//   String img = "assets/images/processing_payment.svg";
//   late AnimationController _controller;
//   @override
//   void initState() {
//     _controller = AnimationController(
//       vsync: this,
//       duration: Duration(seconds: 5),
//     );
//     _controller.stop();
//     super.initState();
//     Future.delayed(Duration(seconds: 2), () {
//       setState(() {
//         _isBoxVisible = true;
//         _boxScale = 1;
//       });
//     });
//     Future.delayed(Duration(seconds: 3), () {
//       setState(() {
//         _isCheckVisible=true;
//         _checkScale=1;
//         _controller.repeat();
//       });
//     });
//     Future.delayed(Duration(seconds: 6), () {
//       setState(() {
//         img = "assets/images/generating_contract.svg";
//       });
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return AnimatedOpacity(
//       opacity: _isBoxVisible ? 1.0 : 0.0, // Make container visible or invisible based on _isVisible
//       duration: Duration(milliseconds: 500),
//       curve: Curves.easeInOut,
//       child: AnimatedContainer(
//         duration: Duration(milliseconds: 175),
//         curve: Curves.fastEaseInToSlowEaseOut,
//         transform: Matrix4.diagonal3Values(_boxScale, _boxScale, 1.0),
//         child: AnimatedSwitcher(
//           duration: const Duration(milliseconds: 900),
//           transitionBuilder: (Widget child, Animation<double> animation) {
//             return ScaleTransition(scale: animation, child: child);
//           },
//           child: Container(
//             decoration: BoxDecoration(
//                 color: Color(0xFF166534),
//                 borderRadius: BorderRadius.all(Radius.circular(13.5))
//             ),
//             width: 111,
//             height: 111,
//             child: Center(
//                 child: Stack(
//                   children: [
//                     AnimatedBuilder(
//                         animation: _controller,
//                         builder: (BuildContext context, Widget? child){
//                           if(!img.contains("processing")){
//                             return SvgPicture.asset(
//                                 img,
//                                 colorFilter:const ColorFilter.mode(Colors.white, BlendMode.srcIn),
//                                 width: 47,
//                                 height: 47,
//                                 semanticsLabel: 'img'
//
//                             );
//                           }
//                           return Transform.rotate(
//                             angle: _controller.value * 2.0 * (22/7),
//                             child:  SvgPicture.asset(
//                                 img,
//                                 colorFilter:const ColorFilter.mode(Colors.white, BlendMode.srcIn),
//                                 width: 47,
//                                 height: 47,
//                                 semanticsLabel: 'img'
//
//                             ),
//                           );
//                         }
//                     ),
//                     if(img.contains("processing"))
//                       Positioned(
//                         top: 13,
//                         left: 13,
//                         child: AnimatedOpacity(
//                           opacity: _isCheckVisible ? 1.0 : 0.0, // Make container visible or invisible based on _isVisible
//                           duration: Duration(milliseconds: 500),
//                           curve: Curves.easeInOut,
//                           child: AnimatedContainer(
//                             duration: Duration(milliseconds: 250),
//                             curve: Curves.fastEaseInToSlowEaseOut,
//                             transform: Matrix4.diagonal3Values(_checkScale, _checkScale, 1.0),
//                             child: SvgPicture.asset(
//                                 "assets/images/check.svg",
//                                 colorFilter:const ColorFilter.mode(Color(0xFF116631), BlendMode.srcIn),
//                                 width: 19,
//                                 height: 19,
//                                 semanticsLabel: 'img'
//
//                             ),
//                           ),
//                         ),
//                       ),
//                   ],
//                 )
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class ZoomInText extends StatefulWidget {
//   @override
//   _ZoomInTextState createState() => _ZoomInTextState();
// }
//
// class _ZoomInTextState extends State<ZoomInText> with SingleTickerProviderStateMixin{
//   double _paymentDone = 0.0;
//   bool _isBoxVisible = false;
//   bool _isCheckVisible = false;
//   double _checkScale = 0.0;
//   String label = "Payment done";
//   late AnimationController _controller;
//   @override
//   void initState() {
//     _controller = AnimationController(
//       vsync: this,
//       duration: Duration(seconds: 5),
//     );
//     _controller.stop();
//     super.initState();
//     Future.delayed(Duration(seconds: 3), () {
//       setState(() {
//         _isBoxVisible = true;
//         _paymentDone = 1;
//       });
//     });
//     Future.delayed(Duration(seconds: 6), () {
//       setState(() {
//         label = "Generating Contract";
//       });
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return AnimatedOpacity(
//       opacity: _isBoxVisible ? 1.0 : 0.0, // Make container visible or invisible based on _isVisible
//       duration: Duration(milliseconds: 500),
//       curve: Curves.easeInOut,
//       child: AnimatedContainer(
//         duration: Duration(milliseconds: 175),
//         curve: Curves.fastEaseInToSlowEaseOut,
//         transform: Matrix4.diagonal3Values(_paymentDone, _paymentDone, 1.0),
//         child: AnimatedSwitcher(
//           duration: const Duration(milliseconds: 500),
//           transitionBuilder: (Widget child, Animation<double> animation) {
//             return ScaleTransition(scale: animation, child: child);
//           },
//           child: Container(
//             key: ValueKey<String>(label),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text(label,style: GoogleFonts.inter(fontWeight: FontWeight.w600,fontSize: 16,height: 1.5,color: Color(0xFFFFFFFF)),),
//                 SizedBox(height: 16,),
//                 Container(margin: EdgeInsets.symmetric(horizontal: 36), child: Text("You are almost there!\nDo not leave this page, or press back button",textAlign: TextAlign.center ,style: GoogleFonts.inter(fontWeight: FontWeight.w400,fontSize: 12,height: 1.5,color: Color(0xFFA1CCB1)),)),
//               ],
//
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }