import 'package:flutter/material.dart';
import 'package:foodshop/components/button.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(240, 147, 16, 16),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(height: 25),
            // shop name
            // Text(
            //   "FOOD",
            //   style: GoogleFonts.dmSerifDisplay(
            //     fontSize: 28,
            //     color: Colors.white,
            //   ),
            // ),

            const SizedBox(height: 25),

            // icon
            Padding(
              padding: const EdgeInsets.all(50.0),
              child: Image.asset('lib/images/ramen.png'),
            ),

            const SizedBox(height: 25),

            // title
            Text(
              "RASAKAN MAKANAN INDONESIA",
              // "WARTEG BAROKAH",
              style: GoogleFonts.dmSans(
                fontSize: 33,
                color: Colors.white,
              ),
            ),

            const SizedBox(height: 10),

            // subtitle
            Text(
              "rasakan cita rasa makanan indonesia terpopuler dari mana saja dan kapan saja",
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey[300],
                height: 2,
              ),
            ),

            const SizedBox(height: 25),

            // get started button
            MyButton(
              text: "Beli Sekarang",
              onTap: () {
                // go to menu page
                Navigator.pushNamed(context, '/menupage');
              },
            )
          ],
        ),
      ),
    );
  }
}
