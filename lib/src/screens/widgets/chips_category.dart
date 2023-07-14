import 'package:flutter/material.dart';

class ChipsCategory extends StatefulWidget {
  const ChipsCategory({Key? key}) : super(key: key);

  @override
  State<ChipsCategory> createState() => _ChipsCategoryState();
}

class _ChipsCategoryState extends State<ChipsCategory> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
        child: Row(
          children: [
            InputChip(
              side: const BorderSide(
                color: Colors.black,
                width: 1,
              ),
              onSelected: (value) {},
              disabledColor: const Color(0xFFE54660),
              selectedColor: const Color(0xFFE54660),
              backgroundColor: Colors.white,
              padding: const EdgeInsets.all(10),
              label: const Row(
                children: [
                  Image(
                    image: AssetImage("assets/images/headphone.png"),
                    color: Colors.black,
                  ),
                  SizedBox(width: 10),
                  Text("Headphone"),
                ],
              ),
            ),
            const SizedBox(width: 10),
            InputChip(
              side: const BorderSide(
                color: Colors.black,
                width: 1,
              ),
              onSelected: (value) {},
              disabledColor: const Color(0xFFE54660),
              selectedColor: const Color(0xFFE54660),
              backgroundColor: Colors.white,
              padding: const EdgeInsets.all(10),
              label: const Row(
                children: [
                  Image(
                    image: AssetImage("assets/images/Mobile.png"),
                    color: Colors.black,
                  ),
                  SizedBox(width: 10),
                  Text("Mobile"),
                ],
              ),
            ),
            const SizedBox(width: 10),
            InputChip(
              side: const BorderSide(
                color: Colors.black,
                width: 1,
              ),
              onSelected: (value) {},
              disabledColor: const Color(0xFFE54660),
              selectedColor: const Color(0xFFE54660),
              backgroundColor: Colors.white,
              padding: const EdgeInsets.all(10),
              label: const Row(
                children: [
                  Image(
                    image: AssetImage("assets/images/mouse.png"),
                    color: Colors.black,
                  ),
                  SizedBox(width: 10),
                  Text("Mouse & Keyboard"),
                ],
              ),
            ),
            const SizedBox(width: 10),
            InputChip(
              side: const BorderSide(
                color: Colors.black,
                width: 1,
              ),
              onSelected: (value) {},
              disabledColor: const Color(0xFFE54660),
              selectedColor: const Color(0xFFE54660),
              backgroundColor: Colors.white,
              padding: const EdgeInsets.all(10),
              label: const Row(
                children: [
                  Image(
                    image: AssetImage("assets/images/headphone.png"),
                    color: Colors.black,
                  ),
                  SizedBox(width: 10),
                  Text("Headphone"),
                ],
              ),
            ),
            const SizedBox(width: 10),
            InputChip(
              side: const BorderSide(
                color: Colors.black,
                width: 1,
              ),
              onSelected: (value) {},
              disabledColor: const Color(0xFFE54660),
              selectedColor: const Color(0xFFE54660),
              backgroundColor: Colors.white,
              padding: const EdgeInsets.all(10),
              label: const Row(
                children: [
                  Image(
                    image: AssetImage("assets/images/Mobile.png"),
                    color: Colors.black,
                  ),
                  SizedBox(width: 10),
                  Text("Mobile"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
