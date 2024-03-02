import 'package:flutter/material.dart';
import './login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: WelcomePage(), // Start with WelcomePage
    );
  }
}

class WelcomePage extends StatefulWidget {
  @override
  _WelcomePageState createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'asset/start.jpg',
              alignment: Alignment.topCenter,
            ),
          ),
          Positioned(
            bottom: 200,
            left: 20,
            right: 20,
            child: Column(
              children: [
                Text(
                  'Task Management',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'This productivity tool helps you manage tasks conveniently!',
                  style: TextStyle(
                    fontFamily: 'Poppins-Regular',
                    fontSize: 20.0,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () => Navigator.push(
                      context, MaterialPageRoute(builder: (context) => LoginPage())),
                  child: Text('Let\'s Start'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.indigoAccent,
                    fixedSize: Size(200, 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}