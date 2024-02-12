import 'package:flutter/material.dart';

class AppbarSection extends StatefulWidget {
  const AppbarSection({super.key});

  @override
  State<AppbarSection> createState() => _AppbarSectionState();
}

class _AppbarSectionState extends State<AppbarSection> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "Circle",
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.w900, color: Colors.white),
        ),
        const Spacer(),
        InkWell(
          onTap: () {
            // handle button press
          },
          child: Container(
            width: 46,
            height: 46,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 61, 60, 60),
            ),
            child: const Icon(Icons.search,
                size: 25, color: Color.fromARGB(255, 186, 184, 184)),
          ),
        ),
        const SizedBox(width: 20),
        InkWell(
          onTap: () {
            // handle button press
          },
          child: Container(
            width: 46,
            height: 46,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromARGB(255, 248, 216, 100),
            ),
            child: const Icon(
              Icons.person_add_outlined,
              size: 25,
            ),
          ),
        ),
      ],
    );
  }
}
