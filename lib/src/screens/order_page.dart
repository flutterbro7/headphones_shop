import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Stack(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            SizedBox(height: 100),
                            DecoratedBox(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                border: Border.all(
                                    color: Color(0xFFE54660), width: 2),
                              ),
                              child: Image(
                                image: AssetImage("assets/images/one.png"),
                              ),
                            ),
                            Spacer(),
                            DecoratedBox(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                border: Border.all(
                                    color: Color(0xFFE6E6E6), width: 2),
                              ),
                              child: Image(
                                image: AssetImage("assets/images/two.png"),
                              ),
                            ),
                            Spacer(),
                            DecoratedBox(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                border: Border.all(
                                    color: Color(0xFFE6E6E6), width: 2),
                              ),
                              child: Image(
                                width: 50,
                                height: 50,
                                image: AssetImage("assets/images/flutterbro.png"),
                              ),
                            ),
                            Spacer(),
                            DecoratedBox(
                              decoration: BoxDecoration(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(12)),
                                border: Border.all(
                                    color: Color(0xFFE6E6E6), width: 2),
                              ),
                              child: Image(
                                image: AssetImage("assets/images/four.png"),
                              ),
                            ),
                            SizedBox(height: 50),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: DecoratedBox(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20)),
                            color: Color(0xFFF6EAEC),
                          ),
                          child: Image(
                            image: AssetImage("assets/images/big.png"),
                            width: 300,
                            height: 400,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 20, left: 20, right: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        DecoratedBox(
                          decoration: BoxDecoration(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              border: Border.all(color: Colors.black)),
                          child: IconButton(
                            splashRadius: 28,
                            onPressed: () {},
                            icon: Image.asset("assets/images/search.png"),
                          ),
                        ),
                        DecoratedBox(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              border: Border.all(color: Colors.black)),
                          child: IconButton(
                            splashRadius: 28,
                            onPressed: () {},
                            icon: Image.asset(
                              "assets/images/Heart.png",
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Sony WH-1000XM4",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        OutlinedButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                ),
                                SizedBox(width: 5),
                                Text(
                                  "4.9",
                                  style: TextStyle(
                                    color: Color(0xFF0D0D0D),
                                    fontSize: 13,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ],
                            ))
                      ],
                    ),
                    Spacer(),
                    Text(
                      "FlutterBro | Samandar Takhirov Wireless Over-ear Industry Leading Noise Canceling Headphones with Microphone",
                    ),
                    Spacer(),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      trailing: Icon(Icons.navigate_next),
                      title: Text("Product Specifications"),
                      leading: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Color(0xFFF6EAEC),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image(
                              image: AssetImage("assets/images/Document.png")),
                        ),
                      ),
                    ),
                    Divider(),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      trailing: SizedBox(
                        width: 88,
                        height: 24,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CircleAvatar(
                              backgroundColor: Color(0xFFE54660),
                              radius: 12,
                              child: CircleAvatar(
                                radius: 10,
                                backgroundColor: Color(0xFF525252),
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: Color(0xFFCCCCCC),
                              radius: 12,
                              child: CircleAvatar(
                                radius: 10,
                                backgroundColor: Color(0xFFE6E6E6),
                              ),
                            ),
                            CircleAvatar(
                              backgroundColor: Color(0xFFFFFFFF),
                              radius: 12,
                              child: CircleAvatar(
                                radius: 10,
                                backgroundColor: Color(0xFFE6E6E6),
                              ),
                            ),
                          ],
                        ),
                      ),
                      title: Text("Colors"),
                      leading: DecoratedBox(
                        decoration: BoxDecoration(
                          color: Color(0xFFF6EAEC),
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image(
                              image:
                                  AssetImage("assets/images/colorfilter.png")),
                        ),
                      ),
                    ),
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              "\$349.",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            Text(
                              "99",
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                        FilledButton(
                          style: FilledButton.styleFrom(
                            backgroundColor: Color(0xFFE54660),
                          ),
                          onPressed: () {},
                          child: Row(
                            children: [
                              Text("Add To Card"),
                              Icon(Icons.navigate_next),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
