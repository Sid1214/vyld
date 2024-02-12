import 'package:flutter/material.dart';

class Adda {
  final String name;
  final String description;
  final String membernumber;

  Adda({
    required this.name,
    required this.description,
    required this.membernumber,
  });
}

class AddaPage extends StatelessWidget {
  final List<Adda> addas = [
    Adda(
      name: 'Adda 1',
      description: 'Great TEAM',
      membernumber: '245',
    ),
    Adda(
      name: 'Adda 2',
      description: 'Nice people!!!!',
      membernumber: '126',
    ),
    Adda(
      name: 'Adda 3',
      description: 'HI!Welcome!',
      membernumber: '60',
    ),
    Adda(
      name: 'Adda 3',
      description: 'HI!Welcome!',
      membernumber: '60',
    ),
    Adda(
      name: 'Adda 3',
      description: 'HI!Welcome!',
      membernumber: '60',
    ),
    Adda(
      name: 'Adda 3',
      description: 'HI!Welcome!',
      membernumber: '60',
    ),
    Adda(
      name: 'Adda 3',
      description: 'HI!Welcome!',
      membernumber: '60',
    ),
  ];

  AddaPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 135, 76, 175),
        title: const Text(
          'Member Adda',
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
          itemCount: addas.length,
          itemBuilder: (context, index) {
            return AddaCard(adda: addas[index]);
          },
        ),
      ),
    );
  }
}

class AddaCard extends StatelessWidget {
  final Adda adda;

  const AddaCard({Key? key, required this.adda}) : super(key: key);

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
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  adda.name,
                  style: const TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  adda.description,
                  style: const TextStyle(fontSize: 14.0),
                ),
                const SizedBox(height: 8.0),
                Row(
                  children: [
                    const Icon(
                      Icons.person,
                      color: Color.fromARGB(255, 95, 92, 92),
                    ),
                    Text(
                      ' ${adda.membernumber}',
                      style: const TextStyle(fontSize: 16.0),
                    ),
                  ],
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
                        "assets/mario.jpg",
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
