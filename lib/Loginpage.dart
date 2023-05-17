import 'package:flutter/material.dart';

import 'HomePage.dart';

class Loginpage extends StatefulWidget {
  @override
  State<Loginpage> createState() => _Loginpage();
}

class _Loginpage extends State<Loginpage> {
  //bool TextEditingController() = true;
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(children: <Widget>[
          Container(
            height: 300.0,
            width: 300.0,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage('assets/logo.png'),
            )),
          ),
          Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: Text(
                'Sign in',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                    color: Colors.purple[300]),
              )),
          Container(
            padding: const EdgeInsets.all(10),
            child: TextField(
              cursorColor: Colors.black,
              style: TextStyle(color: Colors.purple[800]),
              controller: nameController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.purple[100],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide.none,

                  // borderSide: BorderSide.none
                ),
                // labelText: 'User Name',
                hintText: 'User name',
                labelStyle: TextStyle(
                    color: Colors.purple[800],
                    fontSize: 20,
                    fontWeight: FontWeight.w600),
                suffixIcon: Icon(
                  Icons.lock,
                  color: Colors.purpleAccent,
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
            child: TextField(
              cursorColor: Colors.purple[800],
              style: TextStyle(color: Colors.purple[800]),
              obscureText: true,
              obscuringCharacter: '*',
              controller: passwordController,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.purple[100],
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(50)),
                  //labelText: 'Password',
                  hintText: 'Password',
                  labelStyle: TextStyle(
                    color: Colors.purple[800],
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                  ),
                  suffixIcon: Icon(
                    Icons.visibility_off,
                    color: Colors.purpleAccent,
                  )),
            ),
          ),
          TextButton(
            onPressed: () {
              //forgot password screen
            },
            child: const Text(
              'Forgot Password',
              style: TextStyle(color: Colors.purpleAccent),
            ),
          ),
          Divider(
            height: 60,
            thickness: 5,
            indent: 20,
            endIndent: 0,
            color: Colors.transparent,
          ),
          Container(
            height: 50,
            padding:
                const EdgeInsets.symmetric(horizontal: 135.0, vertical: 1.0),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.purpleAccent),
              child: Text('Login'),
              onPressed: () {
                if (nameController.text == 'hari01@gmail.com' &&
                    passwordController.text == 'hari01') {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Homepage()),
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text("Error"),
                      content: Text("Incorrect username or password"),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context),
                          child: Text("OK"),
                        ),
                      ],
                    ),
                  );
                }
              },
            ),
          ),
          Row(
            children: <Widget>[
              const Text('Does not have account?'),
              TextButton(
                child: const Text(
                  'Sign in',
                  style: TextStyle(fontSize: 20, color: Colors.purpleAccent),
                ),
                onPressed: () {
                  //signup screen
                },
              ),
            ],
            mainAxisAlignment: MainAxisAlignment.center,
          ),
        ]));
  }
}
