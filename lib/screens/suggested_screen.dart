import 'package:flutter/material.dart';

// Define a class to represent a suggested friend
class SuggestedFriend {
  final String name;
  final String description;
  final String imageUrl;

  SuggestedFriend({
    required this.name,
    required this.description,
    required this.imageUrl,
  });
}

// Define a widget for the suggested friend card
class SuggestedFriendCard extends StatelessWidget {
  final SuggestedFriend friend;

  const SuggestedFriendCard({Key? key, required this.friend}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 235, 206, 244),
      margin: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(friend.imageUrl),
        ),
        title: Text(friend.name),
        subtitle: Text(friend.description),
        trailing: IconButton(
          icon: const Icon(Icons.add),
          onPressed: () {
            // Add functionality to add the friend
          },
        ),
      ),
    );
  }
}

// Define a page widget to display suggested friends
class SuggestedFriendsPage extends StatelessWidget {
  final List<SuggestedFriend> suggestedFriends = [
    SuggestedFriend(
      name: 'John Doe',
      description: 'Mutual friend: Jane Doe',
      imageUrl: 'assets/user.png',
    ),
    SuggestedFriend(
      name: 'Alice Smith',
      description: 'Loves hiking and traveling',
      imageUrl: 'assets/user4.jpg',
    ),
    SuggestedFriend(
      name: 'Peter Kavinsky',
      description: 'Loves hiking and traveling',
      imageUrl: 'assets/user1.jpg',
    ),
    SuggestedFriend(
      name: 'Chandler Bing',
      description: 'Loves hiking and traveling',
      imageUrl: 'assets/user3.jpg',
    ),
    SuggestedFriend(
      name: 'Phoebe Buffay',
      description: 'Loves hiking and traveling',
      imageUrl: 'assets/user.png',
    ),
    SuggestedFriend(
      name: 'Jim Halpert',
      description: 'Loves hiking and traveling',
      imageUrl: 'assets/user2.jpg',
    ),
    SuggestedFriend(
      name: 'Michael Scott',
      description: 'Loves hiking and traveling',
      imageUrl: 'assets/user3.jpg',
    ),
  ];

  SuggestedFriendsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 135, 76, 175),
        title: const Text('Suggested Friends',
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
          itemCount: suggestedFriends.length,
          itemBuilder: (context, index) {
            return SuggestedFriendCard(friend: suggestedFriends[index]);
          },
        ),
      ),
    );
  }
}
