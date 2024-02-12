import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class ConnectFriends extends StatefulWidget {
  const ConnectFriends({super.key});

  @override
  State<ConnectFriends> createState() => _ConnectFriendsState();
}

class _ConnectFriendsState extends State<ConnectFriends> {
  Future<void> _launchGoogle() async {
    const url = 'https://www.google.com/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _launchFacebook() async {
    const url = 'https://www.facebook.com/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  Future<void> _launchInstagram() async {
    const url = 'https://www.instagram.com/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          "CONNECT FOR MORE FRIENDS",
          style: TextStyle(color: Colors.grey),
        ),
        const SizedBox(
          height: 20,
        ),
        Row(
          children: [
            TextButton(
              onPressed: () async {
                _launchGoogle;
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
                height: 40,
                child: SvgPicture.asset(
                  "assets/icons/google.svg",
                  height: 25,
                ),
              ),
            ),
            const Spacer(),
            TextButton(
              onPressed: _launchFacebook,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 46, 69, 184),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
                height: 40,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: SvgPicture.asset(
                    "assets/icons/facebook.svg",
                    color: Colors.white,
                    height: 40,
                  ),
                ),
              ),
            ),
            const Spacer(),
            TextButton(
              onPressed: _launchInstagram,
              child: Container(
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 200, 69, 141),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 12),
                height: 40,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SvgPicture.asset(
                    "assets/icons/instagram.svg",
                    color: Colors.white,
                    height: 40,
                  ),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
