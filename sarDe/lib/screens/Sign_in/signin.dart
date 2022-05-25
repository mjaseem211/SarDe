import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sarde/api/api.dart';
import 'package:sarde/screens/Sign_in/signin_widgets.dart';
import 'package:sarde/screens/Super_viser_Dashboard/supervisor_dashboard.dart';
import 'package:sarde/services/prefs.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  Future<void> login() async {
    String username = nameController.text.trim();
    String password = passController.text.trim();

    if (username.isEmpty || password.isEmpty) {
      // TODO: Show alert
      // Enter username and password
      return;
    }

    final response = await SardeAPI.login(username, password);

    if (response.status != "success") {
      // TODO: Show alert
      print(response.toJson());
      print("Login failed");
      return;
    }

    // Login Success

    final prefs = await SardePreferences.getInstance();
    prefs.accessToken = response.result.accessToken;

    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const SupervisorDashboard(),
      ),
    );
  }

  void checkAlreadyLoggedIn() async {
    final prefs = await SardePreferences.getInstance();
    final token = await prefs.token;

    if (token != null) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => const SupervisorDashboard(),
        ),
      );
    }
  }

  @override
  void initState() {
    checkAlreadyLoggedIn();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            const SardeLogo(),
            SizedBox(
              height: 37.h,
            ),
            Username(
              controller: nameController,
            ),
            SizedBox(
              height: 10.h,
            ),
            Password(
              controller: passController,
            ),
            SizedBox(
              height: 28.h,
            ),
            LoginButton(
              onTap: login,
            ),
            SizedBox(
              height: 115.h,
            ),
            const ContactAdmin(),
          ],
        ),
      ),
    );
  }
}
