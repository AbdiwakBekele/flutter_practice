import 'package:flutter/material.dart';
import 'package:test_flutter/screens/second.dart';

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int height = 0;
  int weight = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Welcome"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Weight'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        weight--;
                      });
                    },
                    icon: Icon(Icons.minimize),
                  ),
                  Text(weight.toString()),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          weight++;
                        });
                      },
                      icon: Icon(Icons.add))
                ],
              ),
              Divider(),
              Text('Height'),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        height--;
                      });
                    },
                    icon: Icon(Icons.minimize),
                  ),
                  Text(height.toString()),
                  IconButton(
                      onPressed: () {
                        setState(() {
                          height++;
                        });
                      },
                      icon: Icon(Icons.add))
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  double result = weight / (height * height);
                  Color res_color;
                  if (result < 17) {
                    res_color = Colors.red;
                  } else {
                    res_color = Colors.green;
                  }

                  Navigator.push(context, MaterialPageRoute(
                    builder: (context) {
                      return Second(
                        result: result,
                        res_color: res_color,
                      );
                    },
                  ));
                },
                child: Text("Calculate"),
              )
            ],
          ),
        ));
  }
}
