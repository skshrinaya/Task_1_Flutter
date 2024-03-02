import 'package:flutter/material.dart';
import 'package:task_1/signup.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 50,
            left: 0,
            right: 0,
            child: Image.asset(
              'asset/login1.jpg',
              alignment: Alignment.topCenter,

            ),
          ),
          Positioned(
            bottom: 200,
            left: 20,
            right: 20,
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                  ),
                ),
                SizedBox(height: 20),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Password',

                  ),
                ),
                SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () => {},
                  child: Text('Login'),
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
          Positioned(
            bottom: 100,
            left: 20,
            right: 20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween, // Align buttons
              children: [
                   Text(
                    'Don\'t have an account?',
                    style: TextStyle(color: Colors.indigoAccent),
                  ),

                TextButton(
                  onPressed: () => {
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) => SignUpPage())),
                  },
                  child: Text(
                    'Sign Up Now',
                    style: TextStyle(color: Colors.indigoAccent),
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