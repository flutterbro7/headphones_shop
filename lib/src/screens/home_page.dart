import 'package:flutter/material.dart';

import 'order_page.dart';
import 'widgets/chips_category.dart';
import 'widgets/custom_botton_navigation_bar.dart';
import 'widgets/custom_search_delegate.dart';
import 'widgets/product.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageNumber = 0;
  late final PageController controller;

  @override
  void initState() {
    super.initState();
    controller = PageController();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  void pageChanger(int value) {
    controller.animateToPage(
      value,
      duration: const Duration(milliseconds: 300),
      curve: Curves.linear,
    );
    setState(() {
      pageNumber = value;
    });
  }

  void showCustomSearch() {
    showSearch(
      context: context,
      delegate: CustomSearchDelegate(),
    );
  }

  void openOrderPage() => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const OrderPage()),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomBottomNavigationBar(
        pageNumber: pageNumber,
        onPageChange: pageChanger,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFE54660),
        onPressed: () {},
        child: const Image(
            image: AssetImage("assets/images/Scan.png")), //icon inside button
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    DecoratedBox(
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.black)),
                      child: IconButton(
                        splashRadius: 28,
                        onPressed: showCustomSearch,
                        icon: Image.asset("assets/images/search.png"),
                      ),
                    ),
                    DecoratedBox(
                      decoration: BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(10)),
                          border: Border.all(color: Colors.black)),
                      child: Badge(
                        label: const Text("3"),
                        child: IconButton(
                          splashRadius: 28,
                          onPressed: () {},
                          icon: Image.asset("assets/images/notification.png"),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 20,
                      right: 20,
                      top: 60,
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      height: 150,
                      child: DecoratedBox(
                        decoration: const BoxDecoration(
                          color: Color(0xFFE54660),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Expanded(
                                child: Text(
                                  "Music and FlutterBro",
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              const Expanded(
                                child: Text(
                                  "10% off for One of the best\nheadphones in the world",
                                  style: TextStyle(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                              Expanded(
                                child: SizedBox(
                                  width: 150,
                                  height: 40,
                                  child: FilledButton(
                                    style: FilledButton.styleFrom(
                                      backgroundColor: const Color(0xFFFFFFFF),
                                    ),
                                    onPressed: openOrderPage,
                                    child: const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Text(
                                          "Order Now",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontSize: 16,
                                            fontWeight: FontWeight.w600,
                                          ),
                                        ),
                                        Icon(
                                          Icons.navigate_next,
                                          color: Colors.black,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.topRight,
                    child: Image(
                      image: AssetImage("assets/images/thumbnails.png"),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.all(20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Popular Category",
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: Color(0xFF0D0D0D),
                      fontWeight: FontWeight.w700,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              const ChipsCategory(),
              Product(
                onTap: openOrderPage,
                productPrice: "\$379.00",
                productName: "Bose QC-700",
                image: "assets/images/image1.png",
              ),
              Product(
                onTap: openOrderPage,
                productPrice: "\$379.00",
                productName: "Bose QC-700",
                image: "assets/images/flutterbro.png",
              ),
              Product(
                onTap: openOrderPage,
                productPrice: "\$379.00",
                productName: "Bose QC-700",
                image: "assets/images/image1.png",
              ),
              Product(
                onTap: openOrderPage,
                productPrice: "\$379.00",
                productName: "Bose QC-700",
                image: "assets/images/image2.png",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
