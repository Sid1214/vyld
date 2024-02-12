import 'package:flutter/material.dart';
import 'package:vyld/screens/ongoing_screen.dart';

class OngoingGames extends StatefulWidget {
  const OngoingGames({super.key});

  @override
  State<OngoingGames> createState() => _OngoingGamesState();
}

class _OngoingGamesState extends State<OngoingGames> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text(
              "ONGOING GAMES",
              style: TextStyle(color: Colors.grey),
            ),
            const Spacer(),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => GamePage()));
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
                      fontSize: 12.0),
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
                  return GamePage();
                }, transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                  const begin = Offset(1.0, 1.0);
                  const end = Offset.zero;
                  const curve = Curves.easeInCirc;

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
                GameDetails,
                const SizedBox(width: 10),
                GameDetails,
                const SizedBox(width: 10),
                GameDetails,
                const SizedBox(width: 10),
                GameDetails,
              ],
            ),
          ),
        )
      ],
    );
  }
}

final GameDetails = Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Image.asset(
        "assets/games.png",
        height: 160,
        width: 140,
        fit: BoxFit.cover,
      ),
    ),
    // const SizedBox(height: 5),
    const Text(
      "Game Name",
      style: TextStyle(
          color: Colors.white, fontSize: 14, fontWeight: FontWeight.w800),
    ),
    const SizedBox(height: 5),
    const Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(Icons.home_filled, color: Colors.grey, size: 20),
        SizedBox(width: 5),
        Text(
          "Game Location",
          style: TextStyle(color: Colors.grey, fontSize: 14),
        ),
      ],
    ),
  ],
);
