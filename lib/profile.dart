import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyProfile extends StatelessWidget {
  const MyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final h = MediaQuery.of(context).size.height;
    final w = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              Image.asset(
                "assets/background.jpg",
                height: h / 3,
              ),
              const Positioned(
                bottom: -40,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage("assets/Talha.jpg"),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          const Center(
            child: Column(
              children: [
                Text(
                  "Name :Talha Abbas",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Text(
                  "Flutter Student",
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              children: [
                Expanded(
                  child: CircleAvatar(
                    backgroundColor: const Color.fromARGB(255, 248, 246, 246),
                    radius: w / 15,
                    child: Icon(FontAwesomeIcons.facebook, size: w / 8),
                  ),
                ),
                const SizedBox(
                  width: 11,
                ),
                Expanded(
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: w / 15,
                    child: Icon(
                      FontAwesomeIcons.instagram,
                      color: Colors.red,
                      size: w / 8,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 11,
                ),
                Expanded(
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: w / 15,
                    child: Icon(
                      FontAwesomeIcons.github,
                      color: Colors.black,
                      size: w / 8,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 11,
                ),
                Expanded(
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: w / 15,
                    child: Icon(
                      FontAwesomeIcons.whatsapp,
                      color: Colors.green,
                      size: w / 8,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 11,
                ),
                Expanded(
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: w / 15,
                    child: Icon(
                      FontAwesomeIcons.linkedin,
                      size: w / 8,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 11,
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "About",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 8.0),
            child: Text(
              "Hi, I'm Talha! I'm currently learning about Flutter, a cool framework for making mobile apps. I'm really excited about it and eager to learn more. I love solving problems and being creative, so I think Flutter is a great fit for me. I'm looking forward to working on interesting projects and collaborating with others who share my passion for app development.",
              style: TextStyle(fontSize: 17),
            ),
          )
        ],
      ),
    ));
  }
}
