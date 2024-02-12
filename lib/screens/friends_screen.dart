import 'package:flutter/material.dart';

class FriendsListPage extends StatelessWidget {
  final List<String> friendNames = [
    'Monica Geller',
    'Ross Geller',
    'Joey',
    'Chandler Bing',
    'Rachel Green',
  ];
  final List<String> profileImages = [
    'assets/user.png',
    'assets/user1.jpg',
    'assets/user2.jpg',
    'assets/user3.jpg',
    'assets/user4.jpg',
  ];
  FriendsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 135, 76, 175),
        centerTitle: true,
        title: const Text(' My Friends ',
            style: TextStyle(color: Colors.white, fontSize: 24)),
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
          itemCount: friendNames.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundImage: AssetImage(profileImages[index]),
                  ),
                  title: Text(
                    friendNames[index],
                    style: const TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  onTap: () {
                    Navigator.push(
                      context,
                      PageRouteBuilder(pageBuilder:
                          (context, animation, secondaryAnimation) {
                        return FriendProfilePage(
                          friendName: friendNames[index],
                          profileImage: profileImages[index],
                        );
                      }, transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        const begin = Offset(1.0, 0.0);
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
                ),

                const Divider(), // Horizontal line
                const SizedBox(height: 10),
              ],
            );
          },
        ),
      ),
    );
  }
}

class FriendProfilePage extends StatelessWidget {
  final String friendName;
  final String profileImage;

  const FriendProfilePage(
      {super.key, required this.friendName, required this.profileImage});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 135, 76, 175),
        centerTitle: true,
        title: const Text(
          'Friend Profile',
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
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(profileImage),
              ),
              const SizedBox(height: 20),
              Text(
                friendName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const Text(
                'Software Engineer',
                style: TextStyle(
                  fontSize: 18,
                  color: Color.fromARGB(255, 158, 147, 147),
                ),
              ),
              const SizedBox(height: 20),
              const Divider(), // Horizontal line
              const SizedBox(height: 20),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'About Me',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                    'Sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Contact Information',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Phone: +1 (123) 456-7890',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 30),
                  Text(
                    'Address',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  // SizedBox(height: 10),
                  Text(
                    '123 Main Street, Cityville, State, Zipcode',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
//      Scaffold(
//       appBar: AppBar(
//         title: const Text('Friend Profile'),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             CircleAvatar(
//               radius: 80,
//               backgroundImage: AssetImage(profileImage),
//             ),
//             const SizedBox(height: 20),
//             Text(
//               friendName,
//               style: const TextStyle(
//                 fontSize: 26,
//                 fontFamily: "Inter",
//                 color: Colors.white,
//                 fontWeight: FontWeight.bold,
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
  }
}
