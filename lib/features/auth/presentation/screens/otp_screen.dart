import 'package:flutter/material.dart';

class OTPScreen extends StatefulWidget {

  final String phoneNumber;

  const OTPScreen({
    super.key,
    required this.phoneNumber,
  });

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {

  final otpController = TextEditingController();

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        elevation: 0,
        title: const Text("OTP Verification"),
      ),

      body: Padding(

        padding: const EdgeInsets.all(20),

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            const SizedBox(height: 20),

            Text(
              "Verification Code",
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium,
            ),

            const SizedBox(height: 10),

            Text(
              "Enter the 6 digit OTP sent to\n${widget.phoneNumber}",
            ),

            const SizedBox(height: 40),

            TextField(

              controller: otpController,

              keyboardType: TextInputType.number,

              maxLength: 6,

              textAlign: TextAlign.center,

              style: const TextStyle(
                fontSize: 24,
                letterSpacing: 8,
              ),

              decoration: InputDecoration(

                hintText: "------",

                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                ),

              ),

            ),

            const SizedBox(height: 25),

            SizedBox(

              width: double.infinity,

              height: 55,

              child: ElevatedButton(

                onPressed: () {

                  // Firebase Verify

                },

                child: isLoading
                    ? const CircularProgressIndicator(
                        color: Colors.white,
                      )
                    : const Text("Verify OTP"),

              ),

            ),

            const SizedBox(height: 20),

            Center(

              child: TextButton(

                onPressed: () {

                  // Resend OTP

                },

                child: const Text("Resend OTP"),

              ),

            )

          ],

        ),

      ),

    );

  }

}