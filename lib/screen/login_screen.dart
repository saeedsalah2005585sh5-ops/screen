import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController emilController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool ischecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("login"),
        centerTitle: true,
        backgroundColor: Colors.tealAccent,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            children: [
              Text(
                "welcome to our app",
                style: TextStyle(color: Colors.tealAccent),
              ),
              SizedBox(height: 60),
              TextField(
                controller: emilController,
                decoration: InputDecoration(
                  label: Text("email"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  icon: Icon(Icons.email),
                ),
              ),
              SizedBox(height: 60),
              TextField(
                controller: passwordController,
                obscureText: true,
                decoration: InputDecoration(
                  label: Text("Password"),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  icon: Icon(Icons.password),
                ),
              ),
              SizedBox(
                height: 60,
                child: Row(
                  children: [
                    Checkbox(
                      checkColor: Colors.white,
                      value: ischecked,
                      onChanged: (bool? value) {
                        setState(() {
                          ischecked = value!;
                        });
                         print("remeber me value is : $ischecked");
                      },
                    ),
                    Text("remeber me")
                  ],
                ),
              ),
              SizedBox(height: 25 ),
              ElevatedButton(
                onPressed: () async{
                  final SharedPreferences prefs =
                  await SharedPreferences.getInstance();

                  print("email is : ${emilController.text}");
                  print("password is : ${passwordController.text}");
                },
                child: Text("login"),
              ),
              SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account?"),
                  TextButton(onPressed: () {}, child: Text("Signup")),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
