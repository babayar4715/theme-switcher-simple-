import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHome(),
    );
  }
}

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  bool _switch = false;
  ThemeData _dark = ThemeData(
    brightness: Brightness.dark,
    primaryColor: Colors.white,
  );
  ThemeData _light = ThemeData(
    brightness: Brightness.light,
    primaryColor: Colors.black,
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _switch ? _dark : _light,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Light & Dark"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.lightbulb_outline,
                  size: 55,
                  color: Colors.yellowAccent,
                ),
                const SizedBox(
                  height: 30,
                ),
                const Text(
                  "Switch",
                  style: TextStyle(
                    fontSize: 40,
                  ),
                ),
                const SizedBox(height: 20),
                Switch(
                    value: _switch,
                    onChanged: (_newvalue) {
                      setState(() {
                        _switch = _newvalue;
                      });
                    })
              ],
            ),
          )),
    );
  }
}
