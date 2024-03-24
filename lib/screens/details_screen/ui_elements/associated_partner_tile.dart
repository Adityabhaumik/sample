import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AssociatedPartnersTile extends StatelessWidget {
  const AssociatedPartnersTile({
    super.key,
    required this.title,
    required this.list
  });

  final String title;
  final List list;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: GoogleFonts.inter(color: Color(0xFF44403C), fontSize: 16, height: 1.5, fontWeight: FontWeight.w500)),
          Container(
            height: 35, // Set the desired height for the list
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                    margin: (index== 3-1)? const EdgeInsets.only(right: 0): const EdgeInsets.only(right: 15),
                    width: 66,
                    height: 32,
                    child: Image.asset("assets/images/google.png")
                );
              },
            ),
          )
        ],
      ),
    );
  }
}