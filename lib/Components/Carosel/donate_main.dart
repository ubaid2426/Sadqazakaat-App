import 'package:flutter/material.dart';

// void main() {
//   runApp(const WheelchairDonationPage());
// }

class Donate extends StatelessWidget {
  const Donate({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              // shadowColor: Colors.grey.withOpacity(0.2), // Shadow color
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5), // Shadow color
                  spreadRadius: 5, // How far the shadow spreads
                  blurRadius: 7, // How blurry the shadow is
                  offset: const Offset(0, 3), // Horizontal and vertical offsets
                ),
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 30),
                const SizedBox(
                  width: 200,
                  child: Text(
                    'Wheelchair Donation',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(
                  width: 100,
                  child: Divider(
                    color: Color(0xFF29C77B),
                    thickness: 3,
                  ),
                ),
                const Text(
                  'Donate wheelchairs to enhance mobility and independence for individuals in need. Your contribution can significantly improve their quality of life.',
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Image.asset(
                    'Assests/Images/10005.png'), // Replace with your image path
                const SizedBox(height: 20),

                Container(
                  height: 100,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color:
                    )
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Rs 0 raised'),
                      SizedBox(width: 10),
                      Text('0 donations'),
                      SizedBox(width: 10),
                      Text('Rs 10,000 goal'),
                    ],
                  ),
                ),
                const Divider(
                  color: Color(0xFF29C77B),
                  thickness: 20,
                ),
                const SizedBox(height: 30),
                ElevatedButton(
                  onPressed: () {
                    // Implement donation logic here
                  },
                  child: const Text('Donate Now >'),
                ),
                const SizedBox(height: 20),
                Container(
                  height: 70,
                  color: const Color(0xFFFBFBFB),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.lock,
                        color: Color.fromARGB(133, 45, 43, 43),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Safe and Secure',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.w400),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
        ),
      ),
    );
    // );
  }
}
