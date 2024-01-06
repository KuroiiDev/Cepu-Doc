import 'package:cepu_doc/components/my_button_1.dart';
import 'package:cepu_doc/components/my_textfield_1.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // Text Controller
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // Method Login
  void loginUser() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              const SizedBox(height: 50),

              // Icon Utama
              Icon(
                Icons.lock,
                size: 100,
              ),

              const SizedBox(height: 50),

              // Text Halo
              Text(
                "Selamat Datang, Silahkan Login Terlebih Dahulu!",
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[700],
                ),
              ),

              const SizedBox(height: 25),

              // Input Email
              MyTextField1(
                controller: emailController,
                hintText: 'E-Mail',
                obscureText: false,
              ),

              const SizedBox(height: 10),

              // Input Pass
              MyTextField1(
                controller: passwordController,
                hintText: 'Password',
                obscureText: true,
              ),

              const SizedBox(height: 10),

              // Lupa Password
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Lupa Password?",
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),


              // Button Login
              MyButton1(onTap: loginUser, buttonText: "Login"),

              const SizedBox(height: 50),

              // Metode Login Lainya
              Row(
                  children: [
                    Expanded(child: Divider(

                    )
                  )
                  ],
                ),
              ],
          ),
        ),
      )
    );
  }
}
