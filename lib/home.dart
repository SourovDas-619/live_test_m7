import 'package:flutter/material.dart';
import 'package:livetest_m7/second.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Counter App',
          style: TextStyle(fontSize: 24),
        ),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Counter Value:',
            style: TextStyle(fontSize: 24),
          ),
          Text(
            counter.toString(),
            style: TextStyle(fontSize: 32),
          ),
          Wrap(
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 5,
                      backgroundColor: Colors.red,
                      padding:
                          EdgeInsets.symmetric(horizontal: 80, vertical: 15)),
                  onPressed: () {
                    counter = counter + 1;
                    setState(() {});
                    if (counter == 5) {
                      showDialog(
                          context: context,
                          barrierDismissible: false,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text('Alert!'),
                              content: Text('Counter Value is 5! '),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                      counter = 5;
                                    },
                                    child: Text('Ok'))
                              ],
                            );
                          });
                    } else if (counter == 10) {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => SeeeccondScreen(),
                        ),
                      );
                    }
                  },
                  child: Icon(Icons.add)),
              SizedBox(
                width: 10,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      elevation: 5,
                      backgroundColor: Colors.green,
                      padding:
                          EdgeInsets.symmetric(horizontal: 30, vertical: 13)),
                  onPressed: () {
                    counter = counter - 1;
                    setState(() {});
                  },
                  child: Text(
                    '-',
                    style: TextStyle(fontSize: 24),
                  )),
            ],
          )
        ],
      )),
    );
  }
}
