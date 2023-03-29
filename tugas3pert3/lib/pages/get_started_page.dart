import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tugas3pert3/pages/main_menu.dart';

class GetstartedPage extends StatelessWidget {
  const GetstartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              "assets/img-started.png"
              )
            ),
          )
        ),
        Container(
          height: 444,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter, 
              colors: [
                Colors.black.withOpacity(0.9),
                Colors.black.withOpacity(0.0)
              ],
            )
          ),
        ),
        Center(
          child: SafeArea(
            child: Column(
              children: [
                const SizedBox(
                  height: 64,
                ),
                Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Treat ",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize:24,
                        color: const Color(0xffFFFFFF),
                      )),
                      Text("Patient ",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize:24,
                        color: const Color(0xff2F8EF9),
                      )),
                      Text("Like A ",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize:24,
                        color: const Color(0xffFFFFFF),
                      )),
                      Text("Queen",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontSize:24,
                        color: const Color(0xff2F8EF9),
                      )),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text("Explore the best our services with\nprofessional specialist doctor",
                style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w300,
                  fontSize:16,
                  color: const Color(0xffFFFFFF)
                ),
                textAlign: TextAlign.center,
                ),
                const Spacer(),
        
                GestureDetector(
                  onTap: (){
                    Navigator.push(
                      context, 
                      MaterialPageRoute(
                        builder: (context) => const MainMenuPAGE()),
                    );
                  },
                  child: Center(
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 80),
                      padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(
                          80
                        )
                      ),
                      child: Text(
                        "Get Started",
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w500,
                        fontSize:20,
                        color: const Color(0xff000000)
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      ]),
    );
  }
}