import 'package:flutter/material.dart';
import 'package:vyld/screens/suggested_screen.dart';

class SuggestedFriends extends StatelessWidget {
  final List<Color> colorList = [
    const Color.fromARGB(255, 245, 130, 157),
    const Color.fromARGB(255, 132, 247, 166),
    const Color.fromARGB(255, 235, 207, 123),
    const Color.fromARGB(255, 92, 188, 217),
  ];

  SuggestedFriends({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text(
              "SUGGESTED FRIENDS",
              style: TextStyle(color: Colors.grey),
            ),
            const Spacer(),
            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SuggestedFriendsPage()));
              },
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 61, 60, 60),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
                child: const Text(
                  'See All',
                  style: TextStyle(
                    color: Color.fromARGB(255, 132, 129, 129),
                    fontSize: 12.0,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: InkWell(
            onTap: () {
              Navigator.push(
                context,
                PageRouteBuilder(
                    pageBuilder: (context, animation, secondaryAnimation) {
                  return SuggestedFriendsPage();
                }, transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                  const begin = Offset(0.0, 1.0);
                  const end = Offset.zero;
                  const curve = Curves.ease;

                  var tween = Tween(begin: begin, end: end)
                      .chain(CurveTween(curve: curve));

                  var offsetAnimation = animation.drive(tween);
                  return SlideTransition(
                    position: offsetAnimation,
                    child: child,
                  );
                }),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Suggestions(color: colorList[0]),
                const SizedBox(width: 10),
                Suggestions(color: colorList[1]),
                const SizedBox(width: 10),
                Suggestions(color: colorList[2]),
                const SizedBox(width: 10),
                Suggestions(color: colorList[3]),
              ],
            ),
          ),
        )
      ],
    );
  }
}

class Suggestions extends StatelessWidget {
  final Color color;

  const Suggestions({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CircleAvatar(
            radius: 40,
            backgroundColor: color,
            foregroundImage: const AssetImage("assets/user.png")),
        const Text(
          "Ramanujan",
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w800,
          ),
        ),
        // const SizedBox(height: 5),
        TextButton(
          onPressed: () {},
          child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 61, 60, 60),
              borderRadius: BorderRadius.circular(15.0),
            ),
            padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 16),
            child: const Text(
              'Add',
              style: TextStyle(
                color: Color.fromARGB(255, 167, 165, 165),
                fontSize: 14.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
