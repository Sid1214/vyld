import 'package:flutter/material.dart';

class Game {
  final String name;
  final String description;
  final String status;

  Game({
    required this.name,
    required this.description,
    required this.status,
  });
}

class GamePage extends StatelessWidget {
  final List<Game> games = [
    Game(
        name: 'Game 1', description: 'Description of Game 1', status: 'Active'),
    Game(
        name: 'call of duty cod',
        description: 'Description of Game 2',
        status: 'Inactive'),
    Game(
        name: 'Game 3', description: 'Description of Game 3', status: 'Active'),
    Game(
        name: 'Game 3',
        description: 'Description of Game 3',
        status: 'Inactive'),
    Game(
        name: 'Game 3',
        description: 'Description of Game 3',
        status: 'Inactive'),
    Game(
        name: 'Game 3', description: 'Description of Game 3', status: 'Active'),
    Game(
        name: 'Game 3', description: 'Description of Game 3', status: 'Active'),
  ];

  GamePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 135, 76, 175),
        title: const Text(
          'Ongoing Games',
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
      body: Container(
        height: screenHeight,
        width: screenWidth,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 135, 76, 175),
              Color.fromARGB(255, 40, 6, 56),
              Color.fromARGB(255, 40, 6, 56),
            ],
          ),
        ),
        child: ListView.builder(
          itemCount: games.length,
          itemBuilder: (context, index) {
            return GameCard(game: games[index]);
          },
        ),
      ),
    );
  }
}

class GameCard extends StatelessWidget {
  final Game game;

  const GameCard({Key? key, required this.game}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 235, 206, 244),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  game.name,
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  game.description,
                  style: const TextStyle(fontSize: 14.0),
                ),
                Text(
                  game.status,
                  style: const TextStyle(fontSize: 14.0),
                ),
              ],
            ),
            const Spacer(),
            Card(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              color: const Color.fromARGB(255, 57, 56, 56),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              // margin: const EdgeInsets.all(10),
              child: Column(
                children: [
                  SizedBox(
                      width: 100,
                      height: 90,
                      child: Image.asset(
                        "assets/games.png",
                        fit: BoxFit.fill,
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
