import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sales_user_app/cart_page.dart';

class CategoryProduct extends StatelessWidget {
  const CategoryProduct({super.key});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text(
          "Category Name",
          style: GoogleFonts.robotoSlab(
            fontWeight: FontWeight.w700,
            color: Colors.black,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            Expanded(
              flex: 9,
              child: ListView.separated(
                physics: BouncingScrollPhysics(),
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 5,
                  );
                },
                itemCount: 22,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Get.to(() => CartPage());
                    },
                    child: Container(
                      decoration: BoxDecoration(
                          border: Border.all(
                        width: 1,
                        color: Colors.black,
                      )),
                      width: screenWidth,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Text(
                            "Product Name",
                            style: GoogleFonts.robotoSlab(
                              fontWeight: FontWeight.w300,
                              color: Colors.black,
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              flex: 1,
              child: InkWell(
                onTap: () {
                  Get.back();
                },
                child: Container(
                  width: screenWidth,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xff3498db),
                  ),
                  child: Center(
                      child: Text(
                    "Back",
                    style: GoogleFonts.robotoSlab(
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                      fontSize: 22,
                    ),
                  )),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
