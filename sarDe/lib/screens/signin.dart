import 'package:flutter/material.dart';
import 'package:sarde/screens/home.dart';

class SignIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SafeArea(
              child: Center(
                  child: Column(
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(50, 200, 150, 0),
                    child: Image.asset('assets/images/sarde.png'),
                  ),
                  Container(
                    width: 278.0,
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      controller: nameController,
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide:
                              BorderSide(color: Color(0xFFDD7164), width: 1.5),
                        ),
                        labelText: 'User Name',
                      ),
                    ),
                  ),
                  const Spacer(
                    flex: 1,
                  ),
                  Container(
                    width: 278.0,
                    padding: const EdgeInsets.all(10),
                    child: TextField(
                      obscureText: true,
                      controller: passwordController,
                      decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(12.0)),
                          borderSide:
                              BorderSide(color: Color(0xFFDD7164), width: 1.5),
                        ),
                        labelText: 'Password',
                      ),
                    ),
                  ),
                  const Spacer(
                    flex: 6,
                  ),
                  Container(
                      width: 278.0,
                      height: 60,
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: ElevatedButton(
                        onPressed: () {
                          print(nameController.text);
                          print(passwordController.text);
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Home()));
                        },
                        child: const Text('Login',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                            )),
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFDD7164), // background
                          onPrimary: Colors.white, // foreground
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15.0)),
                        ),
                      )),
                  const Spacer(
                    flex: 6,
                  ),
                  Container(
                      padding: const EdgeInsets.fromLTRB(10, 70, 10, 0),
                      child: TextButton(
                        child: const Text(
                          'Contact admin',
                          style: TextStyle(color: Colors.grey, fontSize: 18),
                        ),
                        onPressed: () {},
                      )),
                  const Spacer(
                    flex: 37,
                  ),
                ],
              )),
            )));
  }
}
