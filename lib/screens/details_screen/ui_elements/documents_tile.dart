
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../app_constants.dart';

class DocumentsTile extends StatelessWidget {
  const DocumentsTile({
    super.key,

  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              padding:EdgeInsets.only(left: 24),child: Text("Documents", style: GoogleFonts.inter(color: Color(0xFF44403C), fontSize: 16, height: 1.5, fontWeight: FontWeight.w500))),
          const SizedBox(height: 16,),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 24),
              width: screenSize.width,
              child: Column(
                children: [...documentsList(documents),SizedBox(height: 300,)],
              )
          )
        ],
      ),
    );
  }List<Widget> documentsList(List data) {
    return List.generate(data.length, (index)
    {
      return Container(
          margin: (index== data.length-1)? const EdgeInsets.only(right: 0): const EdgeInsets.only(bottom: 15),
          height: 170,
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
              CircleAvatar(
                  backgroundColor:const Color(0xFFE7E5E4),
                  child: Container(padding:const  EdgeInsets.all(9), child: Image.asset(data[index][0]))),
              const SizedBox(height: 16,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SizedBox(width: 242,child: Text(data[index][1], overflow: TextOverflow.ellipsis,maxLines:2,style: GoogleFonts.inter(color: Color(0xFF44403C), fontSize: 14, height: 1.5, fontWeight: FontWeight.w500))),
                      SizedBox(height: 4,),
                      SizedBox(width: 242,child: Text(data[index][2], overflow: TextOverflow.ellipsis,maxLines:2,style: GoogleFonts.inter(color: Color(0xFF78716C), fontSize: 14, height: 1.5, fontWeight: FontWeight.w400))),
                    ],
                  ),
                  SvgPicture.asset(
                      "assets/images/download.svg",
                      colorFilter:const ColorFilter.mode(Color(0xFF78716C), BlendMode.srcIn),
                      height: 20,
                      width: 20,
                      semanticsLabel: 'img'

                  ),
                ],
              ),

            ],
          )
      );
    });
  }
}
