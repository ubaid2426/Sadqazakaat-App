import 'package:flutter/material.dart';
import 'package:sadqahzakat/Components/Carosel/donate_main.dart';
import 'package:sadqahzakat/Components/Carosel/donation_main.dart';
import 'package:sadqahzakat/Components/Carosel/homeScreen_carousel.dart';
import 'package:sadqahzakat/Widgets/drawers_main.dart';

void main() {
  runApp(const Screen1());
}

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Column(
              children: [
                // const Text("Sadqahzakat"),
                Image.asset(
                  'Assests/Images/10001.png', // Replace with your image path
                  fit: BoxFit.contain,
                  height: 200,
                  width: 200, // Adjust the height as per your requirement
                ),
                const SizedBox(width: 10), // Spacing between image and text
                // You can add a title next to the image
              ],
            ),
          ),
          drawer: const MainDrawer(),
          body: const SingleChildScrollView(
            child: Column(
              children: [
                CarouselHome(),
                H1Main(),
                About(),
                DonationData(),
                Donate(),
              ],
            ),
          )),
    );
  }
}

class CarouselHome extends StatelessWidget {
  const CarouselHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 200,
        // color: Colors.red,
        child: HomePageCarousel(),
      ),
    );
  }
}

class H1Main extends StatelessWidget {
  const H1Main({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      child: Stack(
        children: [
          // Background image
          Container(
            // color: const Color.fromARGB(16, 0, 0, 0),
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'Assests/Images/10012.png'), // Adjust the image path
                fit: BoxFit.cover,
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              color: const Color.fromARGB(181, 0, 0, 0),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
            ),
          ),
          // Overlay text and button
          Align(
            alignment: Alignment.center, // Adjust the alignment of the text
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "100+ PROJECTS ACROSS THE GLOBE",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      letterSpacing: 2,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w800,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 40),
                  const Text(
                    "Empowering Communities, Changing Lives",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 38,
                      fontFamily: "Cormorant",
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    "We work towards ensuring a life of dignity, opportunity, and hope for all.",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 28.536,
                      fontWeight: FontWeight.w800,
                      fontFamily: "Cormorant",
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () {
                      // Handle Donate button press
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.green, // Button color
                      padding: const EdgeInsets.symmetric(
                        horizontal: 40,
                        vertical: 15,
                      ),
                    ),
                    child: const Text(
                      "DONATE",
                      style: TextStyle(
                        fontSize: 18.8,
                        fontFamily: "Montserrat",
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        height: 600,
        child: Stack(
          children: [
            Container(
              // color: const Color.fromARGB(16, 0, 0, 0),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'Assests/Images/10034.png'), // Adjust the image path
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                color: const Color.fromARGB(234, 255, 255, 255),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
              ),
            ),
            Align(
              alignment: Alignment.center, // Adjust the alignment of the text
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "About Us ",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontFamily: "Montserrat",
                        letterSpacing: 2,
                        fontWeight: FontWeight.w600,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 10),
                    const Text(
                      "Helping women never doubt that they are Valuable & Powerful",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 38,
                        fontFamily: "Cormorant",
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 40),
                    const Text(
                      "At our NGO, we extend a helping hand to those in need, working tirelessly to build brighter futures. Through community-driven initiatives and unwavering support, we empower individuals and families to overcome challenges and achieve their fullest potential.",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20.536,
                        fontWeight: FontWeight.w500,
                        fontFamily: "Cormorant",
                      ),
                      textAlign: TextAlign.start,
                    ),
                    const SizedBox(height: 40),
                    TextButton(
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
                        "Read More",
                        style: TextStyle(
                          fontSize: 18.8,
                          fontFamily: "Montserrat",
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
