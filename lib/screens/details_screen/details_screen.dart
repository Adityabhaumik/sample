import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample/app_constants.dart';
import 'package:sample/screens/details_screen/ui_elements/associated_partner_tile.dart';
import 'package:sample/screens/details_screen/ui_elements/documents_tile.dart';
import 'package:sample/screens/details_screen/ui_elements/highlights_tile.dart';
import 'package:sample/screens/details_screen/ui_elements/investment_details_tile.dart';

import 'ui_elements/brand_details_tile.dart';
import 'ui_elements/brand_logo_tile.dart';
import 'ui_elements/key_metrics_tile.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  int selectedKeyMetrics = 0;
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
      scrolledUnderElevation: 0,
        leading: Container(margin: const EdgeInsets.only(left: 24), child: const Icon(Icons.arrow_back, color: primaryColor, size: 21,)),
        leadingWidth: 47,
        title: Text("Back to Deals", style: GoogleFonts.inter(color: primaryColor, fontSize: 14, height: 1.5, fontWeight: FontWeight.w500),),
      ),
      body: SingleChildScrollView(
        physics:const BouncingScrollPhysics(),
        child: Container(
          margin: const EdgeInsets.only(top: 24),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(padding: const EdgeInsets.symmetric(horizontal: 24),child: const BrandLogoTile(img: "assets/images/logo.svg",)),
              const SizedBox(height: 12,),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: const BrandDetailsTile(
                  investBy: "Keshav Industries",
                  investIn: "Agrizy",
                  investInBio: "Agrizy offers solutions across digital vendor management, and supply and value chainautomation to its agri processing units. Agrizy, a Bengaluru-based agri tech startup.",
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: InvestmentDetailsTile(
                    topLeftTitle: "MIN INVT",
                    topLeftValues: Row(
                      children: [
                        Text("₹", style: GoogleFonts.inter(color: Color(0xFF78716C), fontSize: 16, height: 1.5, fontWeight: FontWeight.w500),),
                        const SizedBox(width: 4,),
                        Text("1", style: GoogleFonts.inter(color: Color(0xFF44403C), fontSize: 16, height: 1.5, fontWeight: FontWeight.w500),),
                        const SizedBox(width: 4,),
                        Text("Lakh", style: GoogleFonts.inter(color: Color(0xFF78716C), fontSize: 16, height: 1.5, fontWeight: FontWeight.w500),),
                      ],
                    ),
                    topRightTitle: "TENURE",
                    topRightValues: Row(
                      children: [
                        Text("61", style: GoogleFonts.inter(color: Color(0xFF44403C), fontSize: 16, height: 1.5, fontWeight: FontWeight.w500),),
                        const SizedBox(width: 4,),
                        Text("days", style: GoogleFonts.inter(color: Color(0xFF78716C), fontSize: 16, height: 1.5, fontWeight: FontWeight.w500),),
                      ],
                    ),
                    bottomLeftTitle: "NET YIELD",
                    bottomLeftValues: Row(
                      children: [
                        Text("13.23", style: GoogleFonts.inter(color: Color(0xFF44403C), fontSize: 16, height: 1.5, fontWeight: FontWeight.w500),),
                        const SizedBox(width: 4,),
                        Text("%", style: GoogleFonts.inter(color: Color(0xFF78716C), fontSize: 16, height: 1.5, fontWeight: FontWeight.w500),),
                      ],
                    ),
                    bottomRightTitle: "RAISED",
                    bottomRightValues: Row(
                      children: [
                        Text("70", style: GoogleFonts.inter(color: Color(0xFF44403C), fontSize: 16, height: 1.5, fontWeight: FontWeight.w500),),
                        const SizedBox(width: 4,),
                        Text("%", style: GoogleFonts.inter(color: Color(0xFF78716C), fontSize: 16, height: 1.5, fontWeight: FontWeight.w500),),
                      ],
                    ),
                  ),),
              const SizedBox(
                height: 32,
              ),
              Divider(thickness: 1,color: Color(0xFFE7E5E4),),
              const SizedBox(
                height: 24,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 24),
                child: AssociatedPartnersTile(title: "Clients",list: [],),
              ),
              const SizedBox(
                height: 24,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 24),
                child: AssociatedPartnersTile(title: "Backed By",list: [],),
              ),
              const SizedBox(
                height: 36,
              ),
              const Divider(thickness: 1,color: Color(0xFFE7E5E4),),
              const SizedBox(
                height: 24,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 0),
                child: HighlightsTile(),
              ),
              const SizedBox(
                height: 36,
              ),
              const Divider(thickness: 1,color: Color(0xFFE7E5E4),),
              const SizedBox(
                height: 24,
              ),
              KeyMetricsTile(
                handler: (index){
                  setState(() {
                    selectedKeyMetrics=index;
                  });
                },
                selectedIndex: selectedKeyMetrics,
                values: keyMetrics,
              ),
              const SizedBox(
                height: 24,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: InvestmentDetailsTile(
                  topLeftTitle: "ACTIVE DEALS",
                  topLeftValues: Row(
                    children: [
                      Text("6", style: GoogleFonts.inter(color: Color(0xFF44403C), fontSize: 16, height: 1.5, fontWeight: FontWeight.w500),),
                      const SizedBox(width: 4,),
                      Text("of", style: GoogleFonts.inter(color: Color(0xFF78716C), fontSize: 16, height: 1.5, fontWeight: FontWeight.w500),),
                      const SizedBox(width: 4,),
                      Text("18", style: GoogleFonts.inter(color: Color(0xFF78716C), fontSize: 16, height: 1.5, fontWeight: FontWeight.w500),),
                    ],
                  ),
                  topRightTitle: "RAISED",
                  topRightValues: Row(
                    children: [
                      Text("₹", style: GoogleFonts.inter(color: Color(0xFF78716C), fontSize: 16, height: 1.5, fontWeight: FontWeight.w500),),
                      const SizedBox(width: 4,),
                      Text("6.94", style: GoogleFonts.inter(color: Color(0xFF44403C), fontSize: 16, height: 1.5, fontWeight: FontWeight.w500),),
                      const SizedBox(width: 4,),
                      Text("Cr.", style: GoogleFonts.inter(color: Color(0xFF78716C), fontSize: 16, height: 1.5, fontWeight: FontWeight.w500),),
                    ],
                  ),
                  bottomLeftTitle: "MATURE DEALS",
                  bottomLeftValues: Row(
                    children: [
                      Text("12", style: GoogleFonts.inter(color: Color(0xFF44403C), fontSize: 16, height: 1.5, fontWeight: FontWeight.w500),),
                      const SizedBox(width: 4,),
                      Text("of", style: GoogleFonts.inter(color: Color(0xFF78716C), fontSize: 16, height: 1.5, fontWeight: FontWeight.w500),),
                      const SizedBox(width: 4,),
                      Text("16", style: GoogleFonts.inter(color: Color(0xFF78716C), fontSize: 16, height: 1.5, fontWeight: FontWeight.w500),),
                    ],
                  ),
                  bottomRightTitle: "ON TIME PAYMENT",
                  bottomRightValues: Row(
                    children: [
                      Text("100", style: GoogleFonts.inter(color: Color(0xFF44403C), fontSize: 16, height: 1.5, fontWeight: FontWeight.w500),),
                      const SizedBox(width: 4,),
                      Text("%", style: GoogleFonts.inter(color: Color(0xFF78716C), fontSize: 16, height: 1.5, fontWeight: FontWeight.w500),),
                    ],
                  ),
                ),),
              const SizedBox(
                height: 36,
              ),
              const Divider(thickness: 1,color: Color(0xFFE7E5E4),),
              const SizedBox(
                height: 24,
              ),
              const DocumentsTile()
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        padding: EdgeInsets.symmetric(horizontal: 24),
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Color(0xFF000000).withOpacity(0.04),
              spreadRadius: 0,
              blurRadius: 4,
              offset: Offset(0, -4), // changes position of shadow
            ),
            BoxShadow(
              color: Color(0xFF000000).withOpacity(0.06),
              spreadRadius: 0,
              blurRadius: 1,
              offset: Offset(0, -1), // changes position of shadow
            ),
          ],
        ),
        height: 84,
        width: screenSize.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("FILLED", style: GoogleFonts.inter(color: Color(0xFF000000).withOpacity(0.4), fontSize: 10, height: 1.5, fontWeight: FontWeight.w500),),
                  Text("30%", style: GoogleFonts.inter(color: Color(0xFF374151), fontSize: 16, height: 1.5, fontWeight: FontWeight.w500),),
                ],
              ),
            ),
      Container(
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
                return Text("Tap to Invest", style: GoogleFonts.inter(color: Colors.white, fontSize: 14, height: 1.5, fontWeight: FontWeight.w600));
              }
          ))
      ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }




}
