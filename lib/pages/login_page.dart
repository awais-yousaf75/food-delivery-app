import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/custom_authButton.dart';
import 'package:food_delivery_app/components/custom_textField.dart';
import 'package:food_delivery_app/pages/home_page.dart';
import 'package:food_delivery_app/services/auth/auth_services.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;
  const LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void login() async {
    final _authService = AuthService();
    try {
      await _authService.signInWithEmailPassword(
        emailController.text,
        passwordController.text,
      );
    } catch (e) {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(title: Text(e.toString())),
      );
    }

    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const HomePage()),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //icon on top
            Icon(
              Icons.lock_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),

            //message
            const SizedBox(height: 25),
            Text(
              "Food Deliver App",
              style: TextStyle(
                fontSize: 16,
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
            ),

            //email field
            const SizedBox(height: 25),
            CustomTextField(
              textEditingController: emailController,
              hintText: "Email",
              obscureText: false,
            ),

            //password field
            const SizedBox(height: 10),
            CustomTextField(
              textEditingController: passwordController,
              hintText: "Password",
              obscureText: true,
            ),

            //sign in button
            const SizedBox(height: 25),
            CustomAuthButton(text: "Sign In", onTap: login),

            //not a member register
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Not a member?",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Register now",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.inversePrimary,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
