import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';

class MainMenuPAGE extends StatelessWidget {
  const MainMenuPAGE({super.key});

  @override
  Widget build(BuildContext context) {
    Widget doctorCard(String img, String name, String role,){
      return Container(
        padding: const EdgeInsets.all(10),
        margin: EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17),
            color: Color(0xffFFFFFF)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              SizedBox(height: 24,),
              Container(
                height: 220,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
            image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              img,
              //"assets/img-doc2.png"
              )
            ),
          )
              ),
              SizedBox(height: 10,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                            name,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500,
                            fontSize:20,
                            color: const Color(0xff000000)
                            ),
                          ),
                           Text(
                            role,
                          style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w300,
                            fontSize:14,
                            color: const Color(0xff9698A9)
                            ),
                          ),
                      ],
                    ),
                  Row(
                    children: [
                      Container(
          width: 24,
          height: 24,
          decoration: const BoxDecoration(
            image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              "assets/ic-star.png"
              )
            ),
          )
        ),
        Text("4.8",
                  style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w600,
                    fontSize:18,
                    color: const Color(0xff308CF8),
                  )),
                    ],
                  ),
                  ],
                ),
              ),
            ],),
      );
    }


    return Scaffold(
      backgroundColor: Color(0xffFFFFFF),
      body: SafeArea(
       child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                          "HALLO, \nIsmail Nurhapid Jamal",
                          style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize:22,
                          color: const Color(0xff000000)
                        ),
                      ),
                      SizedBox(
                        height: 6,
                      ),
                      Text(
                          "Stay Safe With Our Special Doctor",
                          style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w300,
                          fontSize:16,
                          color: const Color(0xff514A4A)
                        ),
                      ),
                  ],
                ),
                    Container(
          width: 76,
          height: 76,
          decoration: const BoxDecoration(
            image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              "assets/img-profile.png"
              )
            ),
          )
        ),
              ],
            ),
          doctorCard("assets/img-doc2.png", "dr. Zizah Ayuningsih.", "Spesialis Kulit Kelamin"),
          doctorCard("assets/img-doc1.png", "dr. Mawar N.", "Spesialis Penyakit Dalam")
          ],),
        ),
       ),
      ),
    );
  }
}