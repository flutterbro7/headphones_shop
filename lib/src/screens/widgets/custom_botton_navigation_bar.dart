import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    required this.pageNumber,
    required this.onPageChange,
    super.key,
  });

  final int pageNumber;
  final void Function(int value) onPageChange;

  @override
  Widget build(BuildContext context) => Container(
        width: double.infinity,
        height: 60,
        child: const BottomAppBar(
          shape: CircularNotchedRectangle(),
          notchMargin: 5,
          child: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    children: [
                      Image(image: AssetImage("assets/images/Home.png")),
                      Text(
                        "Home",
                        style: TextStyle(
                          color: Color(0xFFE54660),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Image(image: AssetImage("assets/images/Category.png")),
                      Text(
                        "Category",
                        style: TextStyle(
                          color: Color(0xFFCCCCCC),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 40),
                Expanded(
                  child: Column(
                    children: [
                      Image(image: AssetImage("assets/images/Heart.png")),
                      Text(
                        "Interest",
                        style: TextStyle(
                          color: Color(0xFFCCCCCC),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Image(image: AssetImage("assets/images/Profile.png")),
                      Text(
                        "Profile",
                        style: TextStyle(
                          color: Color(0xFFCCCCCC),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      );
}
