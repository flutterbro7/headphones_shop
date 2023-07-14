import 'package:flutter/material.dart';

class Product extends StatefulWidget {
  final String productName;
  final String image;
  final String productPrice;
  final Function() onTap;

  const Product({
    required this.onTap,
    required this.productName,
    required this.image,
    required this.productPrice,
  });

  @override
  State<Product> createState() => _ProductState();
}

class _ProductState extends State<Product> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: SizedBox(
        height: 150,
        width: double.infinity,
        child: InkWell(
          onTap: widget.onTap,
          child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: SizedBox(
                      width: 108,
                      height: 108,
                      child: DecoratedBox(
                        decoration: const BoxDecoration(
                            color: Color(0xFFFDF0F3),
                            borderRadius: BorderRadius.all(Radius.circular(10))),
                        child: Image(
                          image: AssetImage(widget.image),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              widget.productName,
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.all(10),
                              width: 30,
                              height: 30,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x1F000000),
                                      offset: Offset(0, 1),
                                      blurRadius: 10,
                                    )
                                  ]),
                              child: IconButton.filledTonal(
                                splashRadius: 20,
                                onPressed: () {},
                                icon: const Icon(
                                  Icons.favorite_border,
                                  color: Colors.black,
                                  size: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Text(
                          "Over Ear, Wireless Bluetooth Headphones with Built-In Microphone",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                            color: Color(0xFF696969),
                          ),
                        ),
                        const Spacer(),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              widget.productPrice,
                              style: const TextStyle(
                                color: Color(0xFFE54660),
                                fontSize: 16,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              width: 64,
                              height: 24,
                              child: FilledButton(
                                style: FilledButton.styleFrom(
                                  backgroundColor: const Color(0xFFE54660),
                                ),
                                onPressed: widget.onTap,
                                child: const Text("Buy"),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
