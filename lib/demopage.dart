import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DemoPage extends StatelessWidget {
  const DemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Column(
        children: [
          SizedBox(
            height: 100,
          ),
          Row(
            children: [
              Text(
                "Products by Category",
                style: GoogleFonts.robotoSlab(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          Container(
            height: 300,
            color: Colors.grey,
            child: GridView.builder(
              padding: EdgeInsets.zero,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                mainAxisSpacing: 1,
                crossAxisSpacing: 1,
              ),
              itemCount: 8,
              itemBuilder: (context, index) {
                return Container(
                  height: 130,
                  width: 100,
                  color: Colors.green,
                  child: Column(
                    children: [
                      Image.asset(
                        "assets/images/bashundhara.png",
                        height: 80,
                        width: 80,
                      ),
                      Text("data")
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
