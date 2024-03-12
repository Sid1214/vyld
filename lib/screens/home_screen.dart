import 'package:flutter/material.dart';
import 'package:vyld/screens/group_chatscreen.dart';
import 'package:vyld/screens/groupchat.dart';
import 'package:vyld/screens/profile_screen.dart';
import 'package:vyld/sections/connect_section.dart';
import 'package:vyld/sections/friends_section.dart';
import 'package:vyld/sections/member_section.dart';
import 'package:vyld/sections/ongoing_section.dart';
import 'package:vyld/screens/search_screen.dart';
import 'package:vyld/sections/suggested_section.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
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
              Color.fromARGB(255, 40, 6, 56),
            ],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 15),
          child: SingleChildScrollView(
            physics: const AlwaysScrollableScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Icon(
                  Icons.arrow_back,
                  size: 28,
                  color: Color.fromARGB(255, 233, 75, 172),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    const Text(
                      "Circle",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.w900,
                          color: Colors.white),
                    ),
                    const Spacer(),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const GroupChat()));
                      },
                      child: Container(
                        width: 46,
                        height: 46,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 248, 216, 100),
                        ),
                        child: const Icon(
                          Icons.groups_2,
                          size: 27,
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SearchPage()));
                      },
                      child: Container(
                        width: 46,
                        height: 46,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 61, 60, 60),
                        ),
                        child: const Icon(Icons.search,
                            size: 25,
                            color: Color.fromARGB(255, 186, 184, 184)),
                      ),
                    ),
                    const SizedBox(width: 20),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const ProfilePage()));
                      },
                      child: Container(
                        width: 46,
                        height: 46,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Color.fromARGB(255, 248, 216, 100),
                        ),
                        child: const Icon(
                          Icons.person_outlined,
                          size: 27,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                FriendsSection(),
                const SizedBox(
                  height: 20,
                ),
                const MemberAddas(),
                const SizedBox(
                  height: 20,
                ),
                const ConnectFriends(),
                const SizedBox(
                  height: 20,
                ),
                const OngoingGames(),
                const SizedBox(
                  height: 20,
                ),
                SuggestedFriends()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
