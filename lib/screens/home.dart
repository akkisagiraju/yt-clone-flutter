import 'package:flutter/material.dart';
import 'package:youtube_clone/widgets/header_tags.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  void onCast() {}

  void seeNotifications() {}

  void search() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('YouTube'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(onPressed: onCast, icon: const Icon(Icons.cast)),
                IconButton(
                    onPressed: seeNotifications,
                    icon: const Icon(Icons.notifications_outlined)),
                IconButton(
                    onPressed: search, icon: const Icon(Icons.search_sharp)),
                CircleAvatar(
                  maxRadius: 14.0,
                  backgroundColor: Colors.red.shade600,
                  child: const Text(
                    'AS',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  foregroundColor: Colors.white,
                )
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: const [HeaderTags()],
      ),
    );
  }
}
