import 'package:flutter/material.dart';

import '../models/user_models.dart';

class WelcomePage extends StatelessWidget {
  WelcomePage({super.key, required this.userModel});

  final UserData userModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          SizedBox(
            width: 50,
            child: Icon(
              Icons.heart_broken,
              color: Colors.white,
            ),
          )
        ],
        title: const Text(
          "Senin için",
          style: TextStyle(color: Colors.white),
        ),
      ),
      // ignore: prefer_const_constructors
      body: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(backgroundColor: Colors.white, radius: 50),
              CircleAvatar(backgroundColor: Colors.white, radius: 50),
              CircleAvatar(backgroundColor: Colors.white, radius: 50),
              CircleAvatar(backgroundColor: Colors.white, radius: 50)
            ],
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Title(
                  color: Colors.white,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Senin için önerilenler",
                        style: TextStyle(color: Colors.white)),
                  )),
              Title(
                  color: Colors.white,
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text("Daha eski gönderiler",
                        style: TextStyle(color: Colors.blue)),
                  ))
            ],
          ),
          SizedBox(height: 5),
          Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    child: CircleAvatar(radius: 25),
                  ),
                  Text(
                    "forzaspor",
                    style: TextStyle(color: Colors.white),
                  ),
                  Spacer(flex: 1),
                  Icon(Icons.linear_scale, color: Colors.white),
                  SizedBox(width: 10)
                ],
              ),
              Container(
                width: 400,
                height: 500,
                decoration: BoxDecoration(
                  color: Colors.red[800],
                ),
              ),
              BottomAppBar(
                color: Colors.black,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Icon(Icons.home, color: Colors.white, size: 45),
                    Icon(Icons.search, color: Colors.white, size: 45),
                    Icon(Icons.public_sharp, color: Colors.white, size: 45),
                    Icon(Icons.person, color: Colors.white, size: 45)
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
