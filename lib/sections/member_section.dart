import 'package:flutter/material.dart';
import 'package:vyld/screens/adda_screen.dart';

class MemberAddas extends StatefulWidget {
  const MemberAddas({super.key});

  @override
  State<MemberAddas> createState() => _MemberAddasState();
}

class _MemberAddasState extends State<MemberAddas> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const Text(
              "MEMBER ADDAS",
              style: TextStyle(color: Colors.grey),
            ),
            const Spacer(),
            TextButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AddaPage()));
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
                  return AddaPage();
                }, transitionsBuilder:
                        (context, animation, secondaryAnimation, child) {
                  return FadeTransition(
                    opacity: animation,
                    child: child,
                  );
                }),
              );
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                AddaDetails,
                const SizedBox(width: 10),
                AddaDetails,
                const SizedBox(width: 10),
                AddaDetails,
                const SizedBox(width: 10),
                AddaDetails,
              ],
            ),
          ),
        )
      ],
    );
  }
}

final AddaDetails = Container(
  child: SizedBox(
    width: 250,
    height: 280,
    child: Stack(
      children: <Widget>[
        Card(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          color: const Color.fromARGB(255, 57, 56, 56),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          margin: const EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                  width: 335,
                  height: 160,
                  child: Image.asset(
                    "assets/mario.jpg",
                    fit: BoxFit.fill,
                  )),
            ],
          ),
        ),
        const Positioned(
          bottom: 30,
          left: 20,
          right: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                  radius: 30, backgroundImage: AssetImage("assets/user.png")),
              SizedBox(
                width: 10,
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "ADDA Name",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: "Inter",
                          fontWeight: FontWeight.w600),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                            radius: 15,
                            backgroundImage: AssetImage("assets/user.png")),
                        SizedBox(width: 5),
                        CircleAvatar(
                            radius: 15,
                            backgroundImage: AssetImage("assets/user.png")),
                        SizedBox(width: 30),
                        Icon(
                          Icons.person,
                          size: 18,
                          color: Colors.grey,
                        ),
                        SizedBox(width: 3),
                        Text(
                          "128",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    ),
  ),
);
