import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return dice();
  }
}

class dice extends StatefulWidget {
  const dice({Key? key}) : super(key: key);

  @override
  State<dice> createState() => _diceState();
}

class _diceState extends State<dice> {
  int lc = Random().nextInt(6)+1;
  int rc = Random().nextInt(6)+1;
  bool equal = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
              backgroundColor: Colors.brown,
              title:const Center(
                child: Text(
                  'Dice n Roll',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontStyle:  FontStyle.italic,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
          ),
          backgroundColor: Colors.black,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                          height: 300,
                          width: 200,
                          child: GestureDetector(
                              onTap: (){
                                setState(() {
                                  lc = Random().nextInt(6)+1;
                                  rc = Random().nextInt(6)+1;
                                  if(lc == rc)
                                  {
                                    equal = true;
                                  }
                                  else
                                  {
                                    equal = false;
                                  }
                                }
                                );
                              },

                              child: Image(image: AssetImage('image/dice$lc.png'),))
                      ),
                      const Text('A', style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 30
                      ),),
                      const SizedBox(
                        height: 20,
                      ),
                      Text("Dice count = $lc", style: const TextStyle(color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w700
                      ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      SizedBox(
                          height: 300,
                          width: 200,
                          child: GestureDetector(
                              onTap: (){
                                setState(() {
                                  lc = Random().nextInt(6)+1;
                                  rc = Random().nextInt(6)+1;
                                  if(lc == rc)
                                  {
                                    equal = true;
                                  }
                                  else
                                  {
                                    equal = false;
                                  }
                                });
                              },
                              child: Image(image: AssetImage("image/dice$rc.png"),))
                      ),
                      const Text('B', style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 30
                      ),),
                      const SizedBox(
                        height: 20,
                      ),
                      Text("Dice count = $rc", style: const TextStyle(color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w700
                      ),
                      ),
                    ],
                  ),
                ],

              ),
              const SizedBox(
                height: 30,
              ),
              equal ? const Text('Woww A and B have equal dice count!!!', style: TextStyle(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500),):Text(''),
            ],
          ),




        ),
      ),


    );
  }
}
