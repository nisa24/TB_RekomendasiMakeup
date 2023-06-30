import 'package:flutter/material.dart';
import 'package:makeup/home_screen.dart';
import 'colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: colors.whiteClr,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "        MAKEUP\nA STYLE FOR LIFE",
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
              wordSpacing: 0.5,
            ),
          ),
          Image.asset(
            "images/welcome.png",
            fit: BoxFit.cover,
            scale: 1.7,
          ),
          Text(
            "Kecantikan adalah kekuatan\n    tingkatkan kekuatanmu\n          dengan MAKEUP",
            style: TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
              letterSpacing: 0.5,
              wordSpacing: 0.5,
            ),
          ),
          SizedBox(height: 35),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomeScreen(),
                  ));
            },
            child: Container(
              padding: EdgeInsets.all(14),
              decoration: BoxDecoration(
                color: colors.grnClr,
                shape: BoxShape.circle,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6,
                    spreadRadius: 4,
                  ),
                ],
              ),
              child: Text(
                "GO",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
