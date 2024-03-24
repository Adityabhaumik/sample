
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HighlightsTile extends StatelessWidget {
  const HighlightsTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding:EdgeInsets.only(left: 24),child: Text("Highlights", style: GoogleFonts.inter(color: Color(0xFF44403C), fontSize: 16, height: 1.5, fontWeight: FontWeight.w500))),
          const SizedBox(height: 16,),
          Container(
            // Set the desired height for the list
            height: 173,
            child: ListView.builder(
              padding: const EdgeInsets.only(left: 24,right: 24),
              scrollDirection: Axis.horizontal,
              itemCount: 3,
              itemBuilder: (context, index) {
                return Container(
                    margin: (index== 3-1)? const EdgeInsets.only(right: 0): const EdgeInsets.only(right: 15),
                    width: 300,
                    height: 173,
                    decoration:  BoxDecoration(
                      border: Border.all(color: Color(0xFFE7E5E4), width: 1.0),
                      borderRadius: BorderRadius.all(
                        Radius.circular(8.0),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset("assets/images/bulb_icon.png"),
                        SizedBox(height: 10,),
                        Text("Agrizy was founded in 2021 by Vicky Dodani and Saket Chirania to provide an end-to-end solution to the agri processing market.",softWrap: true, overflow: TextOverflow.ellipsis,maxLines:4,style: GoogleFonts.inter(color: Color(0xFF44403C), fontSize: 14, height: 1.5, fontWeight: FontWeight.w400)),
                      ],
                    )
                );
              },
            ),
          )
        ],
      ),
    );
  }
}


