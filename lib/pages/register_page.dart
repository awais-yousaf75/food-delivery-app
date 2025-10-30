import 'package:flutter/material.dart';
import 'package:food_delivery_app/components/custom_authButton.dart';
import 'package:food_delivery_app/components/custom_textField.dart';
import 'package:food_delivery_app/services/auth/auth_services.dart';

class RegisterPage extends StatefulWidget {
  final void Function()? onTap;
  const RegisterPage({super.key, required this.onTap});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  void register() async {
    final _authService = AuthService();
    if (passwordController.text == confirmPasswordController.text) {
      try {
        await _authService.signUpWithEmailPassword(
          emailController.text,
          passwordController.text,
        );
      } catch (e) {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(title: Text(e.toString())),
        );
      }
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(title: Text("Password must match")),
      );
    }
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
              Icons.lock_open_rounded,
              size: 100,
              color: Theme.of(context).colorScheme.inversePrimary,
            ),

            //message
            const SizedBox(height: 25),
            Text(
              "Let's create an account",
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

            //confirm password field
            const SizedBox(height: 10),
            CustomTextField(
              textEditingController: confirmPasswordController,
              hintText: "Confirm password",
              obscureText: true,
            ),

            //sign up button
            const SizedBox(height: 25),
            CustomAuthButton(text: "Sign Up", onTap: register),

            //already have an account
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account?",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.inversePrimary,
                  ),
                ),
                const SizedBox(width: 4),
                GestureDetector(
                  onTap: widget.onTap,
                  child: Text(
                    "Login now",
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
