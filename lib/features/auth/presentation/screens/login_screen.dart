import 'package:flutter/material.dart';
import 'otp_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final TextEditingController phoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(

        child: SingleChildScrollView(

          padding: const EdgeInsets.all(25),

          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              const SizedBox(height: 40),

              Center(

                child: CircleAvatar(

                  radius: 55,

                  backgroundColor: Colors.red.shade100,

                  child: const Icon(
                    Icons.directions_bus,
                    color: Colors.red,
                    size: 60,
                  ),

                ),

              ),

              const SizedBox(height: 35),

              const Text(
                "Welcome Back",
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 8),

              Text(
                "Login to continue your journey.",
                style: TextStyle(
                  color: Colors.grey.shade600,
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 40),

              TextField(

                controller: phoneController,

                keyboardType: TextInputType.phone,

                decoration: InputDecoration(

                  prefixIcon: const Icon(Icons.phone),

                  labelText: "Phone Number",

                  hintText: "03XXXXXXXXX",

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),

                ),

              ),

              const SizedBox(height: 30),

              SizedBox(

                width: double.infinity,

                height: 55,

                child: ElevatedButton(

                  style: ElevatedButton.styleFrom(

                    backgroundColor: Colors.red,

                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),

                  ),

                  onPressed: () {

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => OTPVerificationScreen(
                          phone: phoneController.text,
                        ),
                      ),
                    );

                  },

                  child: const Text(

                    "Continue",

                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),

                  ),

                ),

              ),

              const SizedBox(height: 25),

              Center(

                child: RichText(

                  text: const TextSpan(

                    style: TextStyle(color: Colors.black),

                    children: [

                      TextSpan(
                        text: "By continuing you agree to our ",
                      ),

                      TextSpan(
                        text: "Terms & Conditions",
                        style: TextStyle(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                      ),

                    ],

                  ),

                ),

              ),

            ],

          ),

        ),

      ),

    );

  }

}