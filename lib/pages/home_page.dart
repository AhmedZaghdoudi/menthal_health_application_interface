// ignore_for_file: prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:personal/util/emoticon_face.dart';
import 'package:personal/util/exercices.dart';

String now = DateFormat("yyyy-MM-dd").format(DateTime.now());

class HomePage extends StatefulWidget {
  var now = new DateTime.now();
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue[800],
        bottomNavigationBar: BottomNavigationBar(items: [
          const BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          const BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
          const BottomNavigationBarItem(
              icon: const Icon(Icons.settings), label: ''),
        ]),
        body: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  children: [
                    //greetings row
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        //Hi Ahmed!
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('Hi Ahmed',
                                style: TextStyle(
                                    fontSize: 24,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold)),
                            const SizedBox(
                              height: 8,
                            ),
                            Text(now,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.blue[200],
                                    fontWeight: FontWeight.bold)),
                          ],
                        ),

                        //Notification
                        Container(
                            decoration: BoxDecoration(
                              color: Colors.blue[600],
                              borderRadius: BorderRadius.circular(10),
                            ),
                            padding: const EdgeInsets.all(10),
                            child: const Icon(Icons.notifications,
                                color: Colors.white)),
                      ],
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    //search bar
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Text('Search',
                              style: TextStyle(color: Colors.white)),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 25,
                    )
                    //how do you feel?
                    ,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('How do you feel?',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold)),
                        const Icon(
                          Icons.more_horiz,
                          color: Colors.white,
                        ),
                      ],
                    ),

                    const SizedBox(
                      height: 25,
                    )
                    // 4 different faces

                    ,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        //bad
                        Column(
                          children: [
                            const EmoticonFace(
                              emoticonFace: '😞',
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text('bad',
                                style: const TextStyle(color: Colors.white)),
                          ],
                        ),

                        //fine
                        Column(
                          children: [
                            const EmoticonFace(
                              emoticonFace: '😊',
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text('fine',
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                        //well
                        Column(
                          children: [
                            const EmoticonFace(
                              emoticonFace: '😀',
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text('well',
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),

                        //excellent
                        Column(
                          children: [
                            const EmoticonFace(
                              emoticonFace: '😁',
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            const Text(
                              'excellent',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(25),
                  color: Colors.grey[200],
                  child: Center(
                      child: Column(
                    children: [
                      //exercice heading
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Exercices',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          const Icon(Icons.more_horiz),
                        ],
                      ),
                      const SizedBox(
                        height: 25,
                      ),
                      //listview of exercices
                      Expanded(
                        child: ListView(
                          children: [
                            Exercice(
                              icon: Icons.favorite,
                              exercicename: 'Speaking Skills',
                              numberofexercice: 10,
                              color: Colors.orange,
                            ),
                            Exercice(
                              icon: Icons.edit,
                              exercicename: 'Writing Skills',
                              numberofexercice: 20,
                              color: Colors.green,
                            ),
                            Exercice(
                              icon: Icons.person,
                              exercicename: 'Reading Skills',
                              numberofexercice: 15,
                              color: Colors.pink,
                            ),
                            Exercice(
                              icon: Icons.fitness_center,
                              exercicename: 'Phisical Skills',
                              numberofexercice: 5,
                              color: Colors.yellow,
                            ),
                            Exercice(
                              icon: Icons.lightbulb_outline,
                              exercicename: 'thinking Skills',
                              numberofexercice: 10,
                              color: Colors.blue,
                            ),
                          ],
                        ),
                      )
                    ],
                  )),
                ),
              ),
            ],
          ),
        ));
  }
}
