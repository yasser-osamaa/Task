import 'package:flutter/material.dart';
import 'package:login_page/screens/messanger_page.dart';
import 'package:login_page/widgets/custom_button.dart';
import 'package:login_page/widgets/custom_email_form.dart';
import 'package:login_page/widgets/custom_password_form.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFF0651CB),
        title: const Text(
          'Login Page',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 50,
            ),
            const Text(
              'Hello Sir',
              style: TextStyle(
                fontFamily: 'Pacifico',
                fontSize: 40,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            const NormalForm(),
            const PasswordForm(),
            CustomButton(
              text: 'Log in',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const SecondPage();
                    },
                  ),
                );
              },
            ),
            const SizedBox(
              height: 10,
            ),
            CustomButton(
              text: 'Reset Password',
              onTap: () {},
            ),
            const SizedBox(
              height: 20,
            ),
            const Row(
              children: [
                SizedBox(
                  width: 180,
                  child: Divider(
                    thickness: 1,
                    color: Colors.grey,
                    indent: 20,
                  ),
                ),
                Text(
                  'OR',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                SizedBox(
                  width: 180,
                  child: Divider(
                    thickness: 1,
                    color: Colors.grey,
                    endIndent: 10,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            CustomButton(
              text: 'Sign up',
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
