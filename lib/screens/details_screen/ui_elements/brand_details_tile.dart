
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BrandDetailsTile extends StatelessWidget {
  const BrandDetailsTile({
    required this.investIn,
    required this.investBy,
    required this.investInBio,
    super.key,
  });
  final String investIn;
  final String investBy;
  final String investInBio;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          Row(
            children: [
              Text(investIn,style: GoogleFonts.inter(fontWeight: FontWeight.w600,fontSize: 18,height: 1.5,color: const Color(0xFF152420)),),
              const SizedBox(width: 4,),
              const Icon(Icons.arrow_back,color:Color(0xFF9FA5A0),size: 24,),
              const SizedBox(width: 1.5,),
              Text(investBy,style: GoogleFonts.inter(fontWeight: FontWeight.w600,fontSize: 18,height: 1.5,color: const Color(0xFF78716C)),),
            ],
          ),
          const SizedBox(height: 4,),
          Text(investInBio,style: GoogleFonts.inter(fontWeight: FontWeight.w400,fontSize: 14,height: 1.5,color:  const Color(0xFF78716C),),maxLines: 2,overflow: TextOverflow.ellipsis,),
        ],
      ),
    );
  }
}
