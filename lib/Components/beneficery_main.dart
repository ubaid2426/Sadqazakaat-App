import 'package:flutter/material.dart';

class Benificery extends StatelessWidget {
  final String des;
  const Benificery({super.key, required this.des});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            "Beneficiary",
            style: TextStyle(
              color: Color.fromARGB(255, 17, 17, 17),
              fontSize: 20,
              fontFamily: "Montserrat",
              letterSpacing: 2,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 10),
          const Divider(
            thickness: 3,
            color: Colors.black,
          ),
          const SizedBox(height: 20),
          Text(
            des,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 30,
              fontFamily: "Cormorant",
              letterSpacing: 1,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 50),
          Center(
            child: TextButton(
              onPressed: () {
                // Handle Donate button press
              },
              style: TextButton.styleFrom(
                backgroundColor: Colors.green, // Button color
                padding: const EdgeInsets.symmetric(
                  horizontal: 40,
                  vertical: 15,
                ),
              ),
              child: const Text(
                "Donate Now",
                style: TextStyle(
                  fontSize: 25,
                  fontFamily: "Roboto",
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
