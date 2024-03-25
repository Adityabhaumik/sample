
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sample/app_constants.dart';

class KeyMetricsTile extends StatelessWidget {
  const KeyMetricsTile({
    super.key,
    required this.handler,
    required this.selectedIndex,
    required this.values

  });
  final Function handler;
  final int selectedIndex;
  final List values;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(padding: EdgeInsets.only(left: 24),child: Text("Key Metrics", style: GoogleFonts.inter(color: Color(0xFF44403C), fontSize: 16, height: 1.5, fontWeight: FontWeight.w500))),
          const SizedBox(height: 16,),
          Container(
            height: 27,
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 24),
              scrollDirection: Axis.horizontal,
              itemCount: keyMetrics.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: (){
                    handler(index);
                  },
                  child: Builder(
                      builder: (context) {
                        if(index != selectedIndex){
                          return Container(
                              margin: (index== values.length-1)? const EdgeInsets.only(right: 0): const EdgeInsets.only(right: 15),
                              padding: EdgeInsets.symmetric(horizontal: 12,vertical: 6),
                              decoration:  BoxDecoration(
                                color: Color(0xFFE7E5E4),
                                border: Border.all(color: Color(0xFFE7E5E4), width: 1.0),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(4.0),
                                ),
                              ),
                              child: Center(child: Builder(
                                  builder: (context) {
                                    return Text(values[index], style: GoogleFonts.inter(color: Color(0xFF78716C), fontSize: 10, height: 1.3, fontWeight: FontWeight.w600));
                                  }
                              ))
                          );
                        }
                        return Container(
                            margin: (index== values.length-1)? const EdgeInsets.only(right: 0): const EdgeInsets.only(right: 15),
                            padding: EdgeInsets.symmetric(horizontal: 12,vertical: 6),
                            decoration:  BoxDecoration(
                              color: Color(0xff15803D),
                              border: Border.all(color: Color(0xFFE7E5E4), width: 1.0),
                              borderRadius: BorderRadius.all(
                                Radius.circular(4.0),
                              ),
                            ),
                            child: Center(child: Builder(
                                builder: (context) {
                                  return Text(keyMetrics[index], style: GoogleFonts.inter(color: Colors.white, fontSize: 10, height: 1.5, fontWeight: FontWeight.w600));
                                }
                            ))
                        );
                      }
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
