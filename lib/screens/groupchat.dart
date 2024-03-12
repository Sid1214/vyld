import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:vyld/main.dart';
import 'package:vyld/screens/camera.dart';
import 'package:vyld/theme/app_decoration.dart';
import 'package:vyld/theme/theme_helper.dart';
import 'package:vyld/widgets/custom_image_view.dart';

import '../core/utils/image_const.dart';
import '../widgets/custom_floating_ button.dart';

class GroupChat extends StatefulWidget {
  const GroupChat({super.key});

  @override
  State<GroupChat> createState() => _GroupChatState();
}

class _GroupChatState extends State<GroupChat> {
  TextEditingController messageController = TextEditingController();
  String _enteredmsg = "";

  @override
  void initState() {
    super.initState();
  }

  void showEmojiKeyboard() {
    SystemChannels.textInput.invokeMethod('TextInput.show');
  }

  @override
  void dispose() {
    messageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
          child: Container(
            child: Row(
              children: [
                TextFormField(
                  controller: messageController,
                  decoration: InputDecoration(
                      hintText: "Type a message",
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                      enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.grey,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(12.0)),
                      ),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            InkWell(
                              onTap: () {
                                // () async {
                                //   await Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //       builder: (context) =>
                                //           CameraScreen(camera: cameras!.first),
                                //     ),
                                //   );
                                // };
                              },
                              child: const Icon(
                                Icons.camera_alt,
                                color: Color.fromARGB(255, 124, 124, 124),
                              ),
                            ),
                            const SizedBox(width: 10),
                            InkWell(
                              onTap: () {},
                              child: const Icon(
                                Icons.mic,
                                size: 24,
                                color: Color.fromARGB(255, 114, 114, 114),
                              ),
                            ),
                            const SizedBox(width: 10),
                            InkWell(
                                onTap: () {
                                  showEmojiKeyboard();
                                },
                                child: SvgPicture.asset(
                                    "assets/icons/sticker.svg")),
                          ],
                        ),
                      )),
                  onFieldSubmitted: (value) {
                    setState(() {
                      _enteredmsg = value;
                    });
                  },
                ),
              ],
            ),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.arrow_back),
                        const SizedBox(
                          width: 10,
                        ),
                        const CircleAvatar(
                          backgroundImage: AssetImage("assets/logo.png"),
                        ),
                        const SizedBox(width: 10),
                        const Text(
                          "Vyld Gang",
                          style: TextStyle(
                            color: Color.fromARGB(255, 238, 107, 151),
                            fontSize: 20,
                          ),
                        ),
                        const Spacer(),
                        OutlinedButton(
                            onPressed: () {},
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.volume_up,
                                  color: Colors.black,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Join",
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            )),
                        const Spacer(),
                        const Icon(Icons.more_vert)
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 30),
                const Text(
                  "AUG",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 30),
                ),
                const Text(
                  "15",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 30, color: Colors.orange),
                ),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                        margin: const EdgeInsets.only(right: 129),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 10.0),
                        decoration: AppDecoration.fillCyanA.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderBL12),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // const SizedBox(height: 10),
                              Padding(
                                  padding: const EdgeInsets.only(right: 1.0),
                                  child: Row(
                                    children: [
                                      const CircleAvatar(
                                          radius: 12,
                                          backgroundImage:
                                              AssetImage("assets/user1.jpg")),
                                      const SizedBox(width: 10),
                                      Container(
                                          decoration: BoxDecoration(
                                              color: const Color.fromARGB(
                                                  255, 195, 246, 248),
                                              borderRadius:
                                                  BorderRadius.circular(25)),
                                          child: const Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 5, vertical: 0.3),
                                            child: Text(
                                              "John Thomas",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ))
                                    ],
                                  )),
                              Text(
                                  // _enteredmsg,
                                  "Hey Squad! What’s up? 💥",
                                  style: theme.textTheme.titleSmall)
                            ]))),
                const SizedBox(height: 20),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                        margin: const EdgeInsets.only(right: 129),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 10.0),
                        decoration: AppDecoration.fillCyanA.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderBL12),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // const SizedBox(height: 10),
                              Padding(
                                  padding: const EdgeInsets.only(right: 1.0),
                                  child: Row(
                                    children: [
                                      const CircleAvatar(
                                          radius: 12,
                                          backgroundImage:
                                              AssetImage("assets/user.png")),
                                      const SizedBox(width: 10),
                                      Container(
                                          decoration: BoxDecoration(
                                              color: const Color.fromARGB(
                                                  255, 195, 246, 248),
                                              borderRadius:
                                                  BorderRadius.circular(25)),
                                          child: const Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 5, vertical: 0.3),
                                            child: Text(
                                              "Alita",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ))
                                    ],
                                  )),
                              Text("Hey John",
                                  style: theme.textTheme.titleSmall)
                            ]))),
                Align(
                    alignment: Alignment.topRight,
                    child: Container(
                        margin: const EdgeInsets.only(left: 74.0, top: 20.0),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 8.0),
                        decoration: AppDecoration.fillPurpleA.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderTL12),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const SizedBox(height: 1.0),
                              SizedBox(
                                  width: 230.0,
                                  child: Text(
                                      "All good man, was quite busy, how's going",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: theme.textTheme.titleSmall!
                                          .copyWith(height: 1.20)))
                            ]))),
                const SizedBox(
                  height: 20,
                ),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                        margin: const EdgeInsets.only(right: 129),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 10.0),
                        decoration: AppDecoration.fillCyanA.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderBL12),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // const SizedBox(height: 10),
                              Padding(
                                  padding: const EdgeInsets.only(right: 1.0),
                                  child: Row(
                                    children: [
                                      const CircleAvatar(
                                          radius: 12,
                                          backgroundImage:
                                              AssetImage("assets/user.png")),
                                      const SizedBox(width: 10),
                                      Container(
                                          decoration: BoxDecoration(
                                              color: const Color.fromARGB(
                                                  255, 195, 246, 248),
                                              borderRadius:
                                                  BorderRadius.circular(25)),
                                          child: const Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 5, vertical: 0.3),
                                            child: Text(
                                              "Alita",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ))
                                    ],
                                  )),
                              Text("Hey John,when is the next party?",
                                  style: theme.textTheme.titleSmall)
                            ]))),
                Align(
                    alignment: Alignment.topRight,
                    child: Stack(children: [
                      Container(
                          margin: const EdgeInsets.only(
                              left: 74.0, top: 20.0, bottom: 20),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 8.0, vertical: 8.0),
                          decoration: AppDecoration.fillPurpleA.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL12),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const SizedBox(height: 1.0),
                                SizedBox(
                                    width: 230.0,
                                    child: Text("Lets's Plan something soon.",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: theme.textTheme.titleSmall!
                                            .copyWith(height: 1.20)))
                              ])),
                      // Positioned(
                      //   left: 260,
                      //   top: 30,
                      //   child: CircleAvatar(
                      //     radius: 22,
                      //     backgroundColor: Colors.greenAccent,
                      //     child: SvgPicture.asset("assets/icons/Game.svg"),
                      //   ),
                      // )
                    ])),
                Align(
                    alignment: Alignment.bottomLeft,
                    child: Container(
                        margin: const EdgeInsets.only(right: 129),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8.0, vertical: 10.0),
                        decoration: AppDecoration.fillCyanA.copyWith(
                            borderRadius: BorderRadiusStyle.customBorderBL12),
                        child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // const SizedBox(height: 10),
                              Padding(
                                  padding: const EdgeInsets.only(right: 1.0),
                                  child: Row(
                                    children: [
                                      const CircleAvatar(
                                          radius: 12,
                                          backgroundImage:
                                              AssetImage("assets/user1.jpg")),
                                      const SizedBox(width: 10),
                                      Container(
                                          decoration: BoxDecoration(
                                              color: const Color.fromARGB(
                                                  255, 195, 246, 248),
                                              borderRadius:
                                                  BorderRadius.circular(25)),
                                          child: const Padding(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 5, vertical: 0.3),
                                            child: Text(
                                              "John Thomas",
                                              style: TextStyle(fontSize: 12),
                                            ),
                                          ))
                                    ],
                                  )),
                              Text("Yes Pls !!",
                                  style: theme.textTheme.titleSmall)
                            ]))),
                const SizedBox(
                  height: 10,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: FloatingActionButton(
                    shape: const CircleBorder(),
                    backgroundColor: Colors.greenAccent,
                    onPressed: () {
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context) {
                            return Padding(
                              padding: const EdgeInsets.all(20.0),
                              child: GridView.count(
                                crossAxisCount: 4,
                                crossAxisSpacing: 10.0,
                                // mainAxisSpacing: 5.0,
                                padding: const EdgeInsets.all(10.0),
                                children: <Widget>[
                                  Container(
                                    child: Image.asset("assets/mario.jpg",
                                        width: 40, height: 40),
                                  ),
                                  Container(
                                    child: Image.asset("assets/mario.jpg",
                                        width: 40, height: 40),
                                  ),
                                  Container(
                                    child: Image.asset("assets/mario.jpg",
                                        width: 40, height: 40),
                                  ),
                                  Container(
                                    child: Image.asset("assets/mario.jpg",
                                        width: 40, height: 60),
                                  ),
                                  Container(
                                    child: Image.asset("assets/mario.jpg",
                                        width: 40, height: 60),
                                  ),
                                  // Add more items as needed
                                ],
                              ),
                            );
                          });
                    },
                    child: SvgPicture.asset("assets/icons/Game.svg"),
                  ),
                ),
                const SizedBox(
                  height: 5,
                )
              ],
            ),
          ),
        ),
        appBar: AppBar(
            title: const Text(
              "Vyld Gang",
              style: TextStyle(
                color: Color.fromARGB(255, 238, 107, 151),
              ),
            ),
            actions: [
              const Icon(Icons.arrow_back),
              const SizedBox(
                width: 10,
              ),
              const CircleAvatar(
                backgroundImage: AssetImage("assets/logo.png"),
              ),
              OutlinedButton(
                  onPressed: () {},
                  child: const Row(
                    children: [
                      Icon(
                        Icons.volume_up,
                        color: Colors.black,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Join",
                        style: TextStyle(color: Colors.black),
                      )
                    ],
                  )),
              const Spacer(),
              const Icon(Icons.more_vert)
            ]),
        floatingActionButton: FloatingActionButton(onPressed: () {}),
      ),
    );
  }
}
