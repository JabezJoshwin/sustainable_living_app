import 'package:flutter/material.dart';
import 'package:sustainable_living_app/pages/home.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final TextEditingController _username = TextEditingController();
  final TextEditingController _password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login")),
      body: Center(
        child: Column(
          // mainAxisSize: MainAxisSize.min, // To keep Column tight to its content
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "LOGIN",
              style: TextStyle(
                fontSize: 20,
                color: Colors.black87,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text("Username: ", style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18
                      ),),
                      Expanded(
                        child: TextField(
                          controller: _username,
                          decoration: InputDecoration(
                            labelText: "E.g John Myers",
                          ),
                        ),
                      ),
                    ],
                  ),

                  Row(
                    children: [
                      Text("Password: ", style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 18
                      ),),
                      Expanded(
                        child: TextField(
                          controller: _password,
                          obscureText: true,
                          decoration: InputDecoration(
                            labelText: "Enter Your Password",
                          ),
                        ),
                      ),
                    ],
                  ),

                  ElevatedButton(onPressed: () {
                    print("User Logged In");
                    Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => Home())
                    );
                  }, child: Text("Login"))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
