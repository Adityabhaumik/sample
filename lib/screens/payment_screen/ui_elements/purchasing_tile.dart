
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PurchasingTile extends StatelessWidget {
  const PurchasingTile({
    super.key,
    required this.purchasedBy,
    required this.purchasingFrom
  });

  final String purchasingFrom;
  final String purchasedBy;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Purchasing",style: GoogleFonts.inter(fontWeight: FontWeight.w600,fontSize: 18,height: 1.5,color: const Color(0xFF152420)),),
          Row(
            children: [
              Text(purchasingFrom,style: GoogleFonts.inter(fontWeight: FontWeight.w400,fontSize: 14,height: 1.5,color: const Color(0xFF152420)),),
              const SizedBox(width: 4,),
              const Icon(Icons.arrow_back,color:Color(0xFF9FA5A0),size: 17,),
              const SizedBox(width: 2.5,),
              Text(purchasedBy,style: GoogleFonts.inter(fontWeight: FontWeight.w400,fontSize: 14,height: 1.5,color: const Color(0xFF78716C)),),
            ],
          ),
        ],
      ),
    );
  }
}
