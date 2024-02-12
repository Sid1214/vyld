import 'package:flutter/material.dart';
import 'package:vyld/screens/friends_screen.dart';

class FriendsSection extends StatelessWidget {
  final List<String> imageUrls = [
    'assets/user1.jpg',
    'assets/user2.jpg',
    'assets/user.png',
    'assets/user3.jpg',
    'assets/user4.jpg',
  ];
  FriendsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Text(
              "FRIENDS",
              style: TextStyle(color: Colors.grey),
            ),
            const Spacer(),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FriendsListPage()),
                );
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
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Suggestions(
                    imageUrls: imageUrls[0],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20, left: 40, right: 20),
                    child: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 71, 150, 215),
                      radius: 5,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15, right: 20),
                    child: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 236, 205, 112),
                      radius: 12,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20, left: 40, right: 20),
                      child: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 236, 205, 112),
                        radius: 12,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 71, 150, 215),
                        radius: 5,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Suggestions(
                      imageUrls: imageUrls[1],
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Suggestions(
                    imageUrls: imageUrls[2],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20, left: 40, right: 20),
                    child: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 71, 150, 215),
                      radius: 5,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15, right: 20),
                    child: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 236, 205, 112),
                      radius: 12,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20, left: 40, right: 20),
                      child: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 236, 205, 112),
                        radius: 12,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 71, 150, 215),
                        radius: 5,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Suggestions(
                      imageUrls: imageUrls[3],
                    ),
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Suggestions(
                    imageUrls: imageUrls[4],
                  ),
                  const Padding(
                    padding: EdgeInsets.only(top: 20, left: 40, right: 20),
                    child: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 71, 150, 215),
                      radius: 5,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15, right: 20),
                    child: CircleAvatar(
                      backgroundColor: Color.fromARGB(255, 236, 205, 112),
                      radius: 12,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10, right: 5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(top: 20, left: 40, right: 20),
                      child: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 236, 205, 112),
                        radius: 12,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 71, 150, 215),
                        radius: 5,
                      ),
                    ),
                    const SizedBox(height: 12),
                    Suggestions(
                      imageUrls: imageUrls[1],
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class Suggestions extends StatelessWidget {
  final String imageUrls;

  const Suggestions({super.key, required this.imageUrls});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          PageRouteBuilder(
              pageBuilder: (context, animation, secondaryAnimation) {
            return FriendsListPage();
          }, transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
            const begin = Offset(1.0, 0.0);
            const end = Offset.zero;
            const curve = Curves.ease;

            var tween =
                Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

            var offsetAnimation = animation.drive(tween);
            return SlideTransition(
              position: offsetAnimation,
              child: child,
            );
          }),
        );
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          CircleAvatar(
              radius: 35,
              foregroundImage:
                  imageUrls.isEmpty ? null : AssetImage(imageUrls)),
        ],
      ),
    );
  }
}
