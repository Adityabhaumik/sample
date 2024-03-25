
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.handler,
    required this.label
  });

  final Function handler;
  final String label;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        handler();
      },
      child: Container(
          height: 42,
          width: 143,
          decoration:  BoxDecoration(
            color: Color(0xFF16A34A),
            border: Border.all(color: Color(0xFF147639), width: 1.0),
            borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            ),
          ),
          child: Center(child: Builder(
              builder: (context) {
                return Text(label, style: GoogleFonts.inter(color: Colors.white, fontSize: 14, height: 1.5, fontWeight: FontWeight.w600));
              }
          ))
      ),
    );
  }
}
