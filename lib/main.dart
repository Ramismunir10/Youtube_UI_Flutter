import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

Widget content(String images, String text) {
  return Column(
    children: [
      Stack(
        children: [
          Image.asset(images),
          Positioned.fill(
            bottom: 10,
            right: 10,
            child: Align(
              alignment: Alignment.bottomRight,
              child: Container(
                child: const Text(
                  '2:45',
                  style: TextStyle(
                      backgroundColor: Colors.black, color: Colors.white),
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
      Container(
        color: const Color(0xff282828),
        child: ListTile(
          leading: const CircleAvatar(
            backgroundImage: AssetImage('assets/zeetv.png'),
          ),
          title: Text(
            text,
            style: const TextStyle(color: Colors.white, fontSize: 13),
          ),
          subtitle: Text(
            'Zee TV · 9.2M views · 3 months ago',
            style: TextStyle(color: Colors.grey[400]),
          ),
        ),
      )
    ],
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Image.asset(
            'assets/white.png',
            width: 100,
          ),
          backgroundColor: const Color(0xff282828),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.videocam),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search),
              color: Colors.white,
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.account_circle),
              color: Colors.white,
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            content('assets/12thfail.jpg',
                '12th Fail - Official Trailer | Vidhu Vinod Chopra | In Cinemas Worldwide 27th October, 2023'),
            content('assets/12thfail.jpg',
                '12th Fail - Official Trailer | Vidhu Vinod Chopra | In Cinemas Worldwide 27th October, 2023'),
            content('assets/12thfail.jpg',
                '12th Fail - Official Trailer | Vidhu Vinod Chopra | In Cinemas Worldwide 27th October, 2023'),
          ]),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: const Color(0xff282828),
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          currentIndex: 0,
          iconSize: 24,
          unselectedFontSize: 10,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.explore), label: "Explore"),
            BottomNavigationBarItem(
                icon: Icon(Icons.subscriptions), label: 'Subscription'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: "Notification"),
            BottomNavigationBarItem(
                icon: Icon(Icons.library_books), label: "Library")
          ],
        ),
      ),
    );
  }
}
