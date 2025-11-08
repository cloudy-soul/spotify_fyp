import 'package:flutter/material.dart';
import 'package:marquee/marquee.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Spotify',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.lightGreen),
        useMaterial3: true,
      ),
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:

      SingleChildScrollView(
        child: Column(
          children: [
            topbar(),
            const SizedBox(height: 16),
            podcasts(),
            sectionTitle("Its New Music Friday!"),
            news(),
            sectionTitle("Your shows"),
            shows(),


          ],
        ),
      ),
      bottomNavigationBar: current(),
    );
  }

  Row topbar() {
    return Row(
      children: [
        usericon(),
        const SizedBox(width: 8),
        allicon(),
        const SizedBox(width: 8),
        musicicon(),
        const SizedBox(width: 8),
        podcastsicon()
      ],
    );
  }

  Widget usericon() {
    return const CircleAvatar(
      radius: 20,
      backgroundColor: Colors.pinkAccent,
      child: Text("C", style: TextStyle(color: Colors.white)),
    );
  }

  Widget allicon() {
    return TextButton(
      onPressed: () => {},
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        backgroundColor: Colors.grey[800],
        foregroundColor: Colors.white,
      ),
      child: const Text('All'),
    );
  }

  Widget musicicon() {
    return TextButton(
      onPressed: () => {},
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        backgroundColor: Colors.grey[800],
        foregroundColor: Colors.white,
      ),
      child: const Text('Music'),
    );
  }

  Widget podcastsicon() {
    return TextButton(
      onPressed: () => {},
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
        backgroundColor: Colors.grey[800],
        foregroundColor: Colors.white,
      ),
      child: const Text('Podcasts'),
    );
  }

  Widget podcasts() {
    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: [
        tby(),
        ye(),
        th(),
        ewit(),
        sv()
      ],
    );
  }

  Widget tby() {
    return Container(
      width: 200,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          Image.asset(
            "images/tby.jpg",
            height: 50,
            width: 50,
            fit: BoxFit.cover,
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(8),
              child:
                  Text(
                    "The Basement Yard",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),

              ),
            ),

        ],
      ),
    );
  }

  Widget ye() {
    return Container(
      width: 200,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            color: Colors.blue[100],
            child: Icon(Icons.bookmark, color: Colors.grey[700]),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8),
              child:
                  Text(
                    "Your Episodes",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),

              ),
            ),

        ],
      ),
    );
  }

  Widget th() {
    return Container(
      width: 200,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            color: Colors.orange[100],
            child:Image.asset(
              "images/th.jpg",
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8),
              child:
                  Text(
                    "The Hive",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),

              ),
            ),

        ],
      ),
    );
  }

  Widget ewit() {
    return Container(
      width: 200,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            color: Colors.purple[100],
            child: Image.asset(
              "images/ewit.jpg",
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8),
              child:
                  Text(
                    "Elevate Women in Tech",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
              ),
            ),

        ],
      ),
    );
  }

  Widget sv() {
    return Container(
      width: 200,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(4),
      ),
      child: Row(
        children: [
          Container(
            width: 50,
            height: 50,
            color: Colors.red[100],
            child:Image.asset(
              "images/sv.jpg",
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8),
              child:
                  Text(
                    "Soft Voices",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
              ),
            ),

        ],
      ),
    );
  }
  Widget sectionTitle(String text){
    return Align(
      alignment: AlignmentGeometry.centerLeft,
      child: Padding(
        padding: EdgeInsets.all(30),
        child: Text(
            text,
            style: TextStyle(
              fontWeight: FontWeight.w300,
              fontSize: 18,
              color: Colors.black,
            )
        ),
      ),
    );
  }
  Widget news() {
    return SizedBox(
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 16),
        children: [
          showSquare("arctic monkeys", "images/am.jpg"),
          showSquare("billie eilish", "images/b.jpg"),
          showSquare("Faouzia", "images/f.jpg"),
          showSquare("Tech Podcast", "images/micro.jpg"),
        ],
      ),
    );
  }
  Widget showSquare(String description, String imagePath){
    return Container(
      width: 100,
      height: 100,
        margin: EdgeInsets.only(right: 16),
        child: Column(
          children: [
            Container(
              width: 140,
              height: 140,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.grey[300],
              ),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return Icon(Icons.music_note, size: 40, color: Colors.grey[600]);
                },
              ),
            ),
            SizedBox(height: 8),
            SizedBox(height: 2),
            Text(
              description,
              style: TextStyle(
                fontSize: 10,
                color: Colors.grey[600],
              ),
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ],
        ),
      );
    }
    ////////////////////////////////////////////////////////////////////////

  Widget shows() {
    return SizedBox(
      height: 180,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 16),
        children: [
          showSquare("the basement yard", "images/tby.jpg"),
          showSquare("elevate women in tech", "images/ewit.jpg"),
          showSquare("quran", "images/quran.jpg"),
          showSquare("murder: true crimes stories", "images/murder.jpg"),
          showSquare("get judged by Bryon Br", "images/judge.jpg"),
        ],
      ),
    );
  }
  Widget current() {
    return Container(
      width: double.infinity,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.grey[300],
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          Image.asset(
            "images/ewit.jpg",
            height: 50,
            width: 50,
            fit: BoxFit.cover,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(8),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 30,
                      child: Marquee(
                        text: "elevate women in tech S1 EP26 Say yes to success how Natasha Barker became one of retail tech rising stars and elevate",
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                        scrollAxis: Axis.horizontal,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        blankSpace: 20.0,
                        velocity: 30.0,
                        pauseAfterRound: Duration(seconds: 1),
                        startPadding: 10.0,
                        accelerationDuration: Duration(seconds: 1),
                        accelerationCurve: Curves.linear,
                        decelerationDuration: Duration(milliseconds: 500),
                        decelerationCurve: Curves.easeOut,
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Icon(Icons.favorite_border, size: 20),
                  SizedBox(width: 8),
                  Icon(Icons.share, size: 20),
                  SizedBox(width: 8),
                  Icon(Icons.play_arrow, size: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  }
