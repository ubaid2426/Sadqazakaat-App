import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sadqahzakat/Components/Carosel/donate_main.dart';
import 'package:sadqahzakat/Components/Carosel/donation_main.dart';
import 'package:sadqahzakat/Components/Carosel/homeScreen_carousel.dart';
import 'package:sadqahzakat/Components/beneficery_main.dart';
import 'package:sadqahzakat/Components/video_player.dart';
import 'package:sadqahzakat/Widgets/drawers_main.dart';
import 'package:sadqahzakat/controller/fade_animation.dart';

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
                SizedBox(height: 50),
                Hadith(),
                SizedBox(height: 50),
                QuranVerse(),
                SizedBox(height: 50),
                Quotes(),
                SizedBox(height: 50),
                JoinUs(),
                SizedBox(height: 50),
                Donate(),
                Event(),
                MarriageSupport(
                  h3: "Our Numbers",
                  h1: 'Rs.100000+',
                  h2: 'Meal Donations',
                  fontawesome: FontAwesomeIcons.faceDizzy,
                ),
                MarriageSupport(
                  h1: 'Rs.400000+',
                  h2: 'Flood Donations',
                  fontawesome: FontAwesomeIcons.bolt,
                ),
                MarriageSupport(
                  h1: 'Rs.200000+',
                  h2: 'Medical Donations',
                  fontawesome: FontAwesomeIcons.houseChimneyUser,
                ),
                MarriageSupport(
                  h1: 'Rs.300000+',
                  h2: 'Marriage Support',
                  fontawesome: FontAwesomeIcons.solidHeart,
                ),
                Beneficery(),
                Impact(),
                WeDo(),
                Difference(),
                SizedBox(height: 50),
                // VideoPlayerApp(),
                SizedBox(height: 50),
                Footer(),
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
        child: const HomePageCarousel(
          imageList: [
            "Assests/Images/10007.png",
            "Assests/Images/10008.png",
            "Assests/Images/10009.png",
            "Assests/Images/10010.png",
            "Assests/Images/10011.png",
          ],
          carouselHeight: 200,
        ),
      ),
    );
  }
}

class Hadith extends StatelessWidget {
  const Hadith({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 300,
        // color: Colors.red,
        child: const HomePageCarousel(
          imageList: [
            "Assests/Images/10013.png",
            "Assests/Images/10014.png",
            "Assests/Images/10015.png",
          ],
          carouselHeight: 300,
        ),
      ),
    );
  }
}

class QuranVerse extends StatelessWidget {
  const QuranVerse({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 300,
        // color: Colors.red,
        child: const HomePageCarousel(
          imageList: [
            "Assests/Images/10016.png",
            "Assests/Images/10017.png",
            "Assests/Images/10018.png",
          ],
          carouselHeight: 300,
        ),
      ),
    );
  }
}

class Quotes extends StatelessWidget {
  const Quotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 250,
        // color: Colors.red,
        child: const HomePageCarousel(
          imageList: [
            "Assests/Images/10019.png",
            "Assests/Images/10020.png",
            "Assests/Images/10021.png",
          ],
          carouselHeight: 250,
        ),
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
          FadeAnimation(
             animationType: 'ZoomIn',
              delay: 1000,
            child: Container(
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
                  const SizedBox(
                    width: 200,
                    height: 200,
                    child: FadeAnimation(
                      animationType: "FadeInRight",
                      delay: 1000,
                      child: Text(
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
                    ),
                  ),
                  const SizedBox(height: 40),
                  const FadeAnimation(
                    animationType: "FadeInLeft",
                    delay: 1000,
                    child: Text(
                      "Empowering Communities, Changing Lives",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 38,
                        fontFamily: "Cormorant",
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 20),
                  const FadeAnimation(
                    animationType: "FadeInRight",
                    delay: 1000,
                    child: Text(
                      "We work towards ensuring a life of dignity, opportunity, and hope for all.",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28.536,
                        fontWeight: FontWeight.w800,
                        fontFamily: "Cormorant",
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 40),
                  FadeAnimation(
                    animationType: "FadeInLeft",
                    delay: 1000,
                    child: ElevatedButton(
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
                          fontFamily: "Roboto",
                          color: Colors.white,
                        ),
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
            FadeAnimation(
               animationType: 'ZoomIn',
              delay: 1000,
              child: Container(
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
                    const FadeAnimation(
                      animationType: "FadeInLeft",
                      delay: 1000,
                      child: Text(
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
                    ),
                    const SizedBox(height: 10),
                    const FadeAnimation(
                      animationType: "FadeInRight",
                      delay: 1000,
                      child: Text(
                        "Helping women never doubt that they are Valuable & Powerful",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 38,
                          fontFamily: "Cormorant",
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    const SizedBox(height: 40),
                    const FadeAnimation(
                      animationType: "FadeInLeft",
                      delay: 1000,
                      child: Text(
                        "At our NGO, we extend a helping hand to those in need, working tirelessly to build brighter futures. Through community-driven initiatives and unwavering support, we empower individuals and families to overcome challenges and achieve their fullest potential.",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.536,
                          fontWeight: FontWeight.w500,
                          fontFamily: "Cormorant",
                        ),
                        textAlign: TextAlign.start,
                      ),
                    ),
                    const SizedBox(height: 40),
                    FadeAnimation(
                      animationType: "FadeInRight",
                      delay: 1000,
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
                          "Read More",
                          style: TextStyle(
                            fontSize: 18.8,
                            fontFamily: "Montserrat",
                            color: Colors.black,
                          ),
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

class Event extends StatelessWidget {
  const Event({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 30),
          FadeAnimation(
            animationType: "FadeInLeft",
            delay: 1000,
            child: const Text(
              "Event ",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: "Montserrat",
                letterSpacing: 2,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          const SizedBox(height: 30),
          FadeAnimation(
            animationType: "FadeInRight",
            delay: 1000,
            child: const Text(
              "Help Us Fund Critical Projects for Lasting Impact ",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontFamily: "Cormorant",
                letterSpacing: 2,
                fontWeight: FontWeight.w900,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          const SizedBox(height: 30),
          Stack(
            children: [
              FadeAnimation(
                 animationType: 'ZoomIn',
              delay: 1000,
                child: Container(
                  // color: const Color.fromARGB(16, 0, 0, 0),
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          'Assests/Images/10024.png'), // Adjust the image path
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  color: const Color.fromARGB(181, 0, 0, 0),
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                ),
              ),
              Align(
                alignment: Alignment.center, // Adjust the alignment of the text
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FadeAnimation(
                        animationType: "FadeInLeft",
                        delay: 1000,
                        child: const Text(
                          "Help us raise money for impactful change",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontFamily: "Cormorant",
                            letterSpacing: 2,
                            fontWeight: FontWeight.w900,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      const SizedBox(height: 10),
                      FadeAnimation(
                        animationType: "FadeInRight",
                        delay: 1000,
                        child: TextButton(
                          onPressed: () {
                            // Handle Donate button press
                          },
                          style: TextButton.styleFrom(
                            backgroundColor: Colors.green, // Button color
                            // padding: const EdgeInsets.symmetric(
                            //   horizontal: 40,
                            //   vertical: 15,
                            // ),
                          ),
                          child: const Text(
                            "Read More",
                            style: TextStyle(
                              fontSize: 18.8,
                              fontFamily: "Roboto",
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class JoinUs extends StatelessWidget {
  const JoinUs({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Stack(
          children: [
            FadeAnimation(
               animationType: 'ZoomIn',
              delay: 1000,
              child: Container(
                // color: const Color.fromARGB(16, 0, 0, 0),
                width: MediaQuery.of(context).size.width,
                height: 800,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'Assests/Images/10022.png'), // Adjust the image path
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                color: const Color.fromARGB(181, 0, 0, 0),
                width: MediaQuery.of(context).size.width,
                height: 800,
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
                    const SizedBox(height: 200),
                    FadeAnimation(
                      animationType: "FadeInRight",
                      delay: 1000,
                      child: const Text(
                        "COME JOIN US ",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                          fontFamily: "Montserrat",
                          letterSpacing: 2,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 50),
                    const Divider(
                      thickness: 3,
                    ),
                    const SizedBox(height: 50),
                    FadeAnimation(
                      animationType: "FadeInLeft",
                      delay: 1000,
                      child: const Text(
                        "Come join us in making a difference. Your support helps change lives and strengthen communities.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontFamily: "Cormorant",
                          letterSpacing: 2,
                          fontWeight: FontWeight.w600,
                        ),
                        textAlign: TextAlign.center,
                      ),
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
                        child: FadeAnimation(
                          animationType: "FadeInRight",
                          delay: 1000,
                          child: const Text(
                            "Join Our Community",
                            style: TextStyle(
                              fontSize: 25,
                              fontFamily: "Roboto",
                              color: Colors.black,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class MarriageSupport extends StatelessWidget {
  final String h1;
  final String h2;
  final String? h3;
  final IconData fontawesome;
  const MarriageSupport({
    super.key,
    required this.h1,
    required this.h2,
    required this.fontawesome,
    this.h3,
  });

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Container(
      width: MediaQuery.of(context).size.width,
      color: const Color(0xFF29C77B),
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            FadeAnimation(
              animationType: 'FadeInRight',
              delay: 1000,
              child: Text(
                h3 ?? '',
                style: const TextStyle(
                  color: Color.fromARGB(255, 19, 19, 19),
                  fontSize: 40,
                  fontFamily: "Cormorant",
                  letterSpacing: 2,
                  fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 10),
            FadeAnimation(
              animationType: 'FadeInLeft',
              delay: 1000,
              child: Icon(
                fontawesome,
                size: 50,
              ),
            ),
            const SizedBox(height: 30),
            FadeAnimation(
              animationType: 'FadeInRight',
              delay: 1000,
              child: Text(
                h1,
                style: const TextStyle(
                  color: Color.fromARGB(255, 8, 8, 8),
                  fontSize: 30,
                  fontFamily: "Cormorant",
                  letterSpacing: 2,
                  fontWeight: FontWeight.w900,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 20),
            FadeAnimation(
              animationType: 'FadeInLeft',
              delay: 1000,
              child: Text(
                h2,
                style: const TextStyle(
                  color: Color.fromARGB(255, 8, 8, 8),
                  fontSize: 30,
                  fontFamily: "Roboto",
                  letterSpacing: 2,
                  fontWeight: FontWeight.w600,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Beneficery extends StatelessWidget {
  const Beneficery({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 50),
        FadeAnimation(
           animationType: 'FadeInRight',
              delay: 1000,
          child: Text(
            "What People Say About Us",
            style: TextStyle(
              color: Color.fromARGB(255, 8, 8, 8),
              fontSize: 30,
              fontFamily: "Cormorant",
              letterSpacing: 2,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        SizedBox(height: 20),
        Benificery(
          des:
              'Your support has transformed our community, providing hope and essential services where they were needed most.',
        ),
        Benificery(
          des:
              'Thanks to your help, our family received the resources needed to rebuild and start anew.',
        ),
        Benificery(
          des:
              'The impact of your contributions is evident in the lives you\'ve touched and the smiles you\'ve brought.',
        ),
      ],
    );
  }
}

class Impact extends StatelessWidget {
  const Impact({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Stack(
        children: [
          Inner(),
          Positioned(
            bottom: 0,
            right: 0,
            height: 400,
            child: Outer(),
          )
        ],
      ),
    );
  }
}

class Inner extends StatelessWidget {
  const Inner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 700,
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                // color: const Color.fromARGB(16, 0, 0, 0),
                width: MediaQuery.of(context).size.width,
                height: 500,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'Assests/Images/10025.png'), // Adjust the image path
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  color: const Color.fromARGB(181, 0, 0, 0),
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 200,
          )
        ],
      ),
    );
  }
}

class Outer extends StatelessWidget {
  const Outer({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.7,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Container(
              color: const Color.fromARGB(255, 250, 249, 249),
              width: MediaQuery.of(context).size.width,
              height: 500,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(0.0),
            child: Align(
              alignment: Alignment.center,
              child: FadeAnimation(
                 animationType: 'ZoomIn',
              delay: 1000,
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: 500,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      opacity: .1,
                      image: AssetImage(
                          'Assests/Images/10034.png'), // Adjust the image path
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
          ),
          const Align(
              child: Column(
            children: [
              SizedBox(height: 30),
              FadeAnimation(
                 animationType: 'FadeInRight',
              delay: 1000,
                child: Text(
                  "Our Impact",
                  style: TextStyle(
                    color: Color.fromARGB(255, 17, 17, 17),
                    fontSize: 20,
                    fontFamily: "Montserrat",
                    letterSpacing: 2,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Divider(
                  thickness: 3,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 20),
              FadeAnimation(
                 animationType: 'FadeInLeft',
              delay: 1000,
                child: Text(
                  "ransforming lives and communities through dedicated support and outreach efforts",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 34,
                    fontFamily: "Cormorant",
                    letterSpacing: 1,
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(height: 50),
            ],
          ))
        ],
      ),
    );
  }
}

class WeDo extends StatelessWidget {
  const WeDo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FadeAnimation(
             animationType: 'FadeInRight',
              delay: 1000,
            child: Text(
              "What We Do",
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontFamily: "Cormorant",
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(height: 30),
          Divider(
            thickness: 3,
            color: Colors.black,
          ),
          SizedBox(height: 30),
          FadeAnimation(
             animationType: 'FadeInLeft',
              delay: 1000,
            child: Text(
              "Providing essential resources to those in need.",
              style: TextStyle(
                color: Color(0xFF55B534),
                fontSize: 16,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(height: 20),
          Divider(
            thickness: 1,
            color: Colors.black,
          ),
          SizedBox(height: 20),
          FadeAnimation(
             animationType: 'FadeInRight',
              delay: 1000,
            child: Text(
              "Improving community health and well-being",
              style: TextStyle(
                color: Color(0xFF55B534),
                fontSize: 16,
                fontFamily: "Montserrat",
                // letterSpacing: 2,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(height: 20),
          Divider(
            thickness: 1,
            color: Colors.black,
          ),
          SizedBox(height: 20),
          FadeAnimation(
             animationType: 'FadeInLeft',
              delay: 1000,
            child: Text(
              "Supporting educational and skill development programs.",
              style: TextStyle(
                color: Color(0xFF55B534),
                fontSize: 16,
                fontFamily: "Montserrat",
                // letterSpacing: 2,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(height: 20),
          Divider(
            thickness: 1,
            color: Colors.black,
          ),
          SizedBox(height: 20),
          FadeAnimation(
             animationType: 'FadeInRight',
              delay: 1000,
            child: Text(
              "Facilitating disaster relief and recovery efforts",
              style: TextStyle(
                color: Color(0xFF55B534),
                fontSize: 16,
                fontFamily: "Montserrat",
                // letterSpacing: 2,
                fontWeight: FontWeight.w900,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(height: 20),
          Divider(
            thickness: 1,
            color: Colors.black,
          ),
          SizedBox(height: 20),
          FadeAnimation(
             animationType: 'FadeInRight',
              delay: 1000,
            child: Text(
              "Empowering individuals through targeted assistance.",
              style: TextStyle(
                color: Color(0xFF55B534),
                fontSize: 16,
                fontFamily: "Montserrat",
                // letterSpacing: 2,
                fontWeight: FontWeight.w600,
              ),
              textAlign: TextAlign.start,
            ),
          ),
          SizedBox(height: 40),
        ],
      ),
    );
  }
}

class Difference extends StatelessWidget {
  const Difference({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        FadeAnimation(
           animationType: 'ZoomIn',
              delay: 1000,
          child: Container(
            width: MediaQuery.of(context).size.width,
            height: 500,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'Assests/Images/10026.png'), // Adjust the image path
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            color: const Color.fromARGB(181, 0, 0, 0),
            width: MediaQuery.of(context).size.width,
            height: 500,
          ),
        ),
        Align(
          alignment: Alignment.center, // Adjust the alignment of the text
          child: Padding(
            padding: const EdgeInsets.all(30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 100),
                FadeAnimation(
                   animationType: 'FadeInRight',
              delay: 1000,
                  child: const Text(
                    "WANT TO MAKE A DIFFERENCE ?",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontFamily: "Cormorant",
                      letterSpacing: 2,
                      fontWeight: FontWeight.w900,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 40),
                FadeAnimation(
                   animationType: 'FadeInLeft',
              delay: 1000,
                  child: const Text(
                    "Help us raise money for our humanitarian causes",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontFamily: "Cormorant",
                      letterSpacing: 2,
                      fontWeight: FontWeight.w900,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 30),
                FadeAnimation(
                   animationType: 'FadeInRight',
              delay: 1000,
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
                    child: FadeAnimation(
                       animationType: 'FadeInLeft',
              delay: 1000,
                      child: const Text(
                        "Donate",
                        style: TextStyle(
                          fontSize: 18.8,
                          fontFamily: "Roboto",
                          color: Colors.black,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class VideoPlayerApp extends StatelessWidget {
  const VideoPlayerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            const Text(
              "Our Projects",
              style: TextStyle(
                color: Colors.black,
                fontSize: 34,
                fontFamily: "Cormorant",
                letterSpacing: 1,
                fontWeight: FontWeight.w500,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 50),
            AspectRatio(
              aspectRatio: 16 / 10,
              child: SamplePlayer(image: 'Assests/videos/video1.mp4'),
            ),
            const SizedBox(height: 50),
            AspectRatio(
              aspectRatio: 16 / 10,
              child: SamplePlayer(image: 'Assests/videos/video4.mp4'),
            ),
          ],
        ),
      ),
    );
  }
}

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            // Logo
            Image.asset(
              'Assests/Images/10001.png', // Replace with your image path
              height: 100,
            ),
            const SizedBox(height: 10),
            Text(
              'SadaqahZakaat.com\nBY WADUHA WELFARE',
              style: TextStyle(
                color: Colors.green[700],
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: 'Cormorant',
                height: 1.5,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 40),
            // Useful Links
            const Text(
              'Useful Links',
              style: TextStyle(
                color: Colors.green,
                fontSize: 25,
                fontWeight: FontWeight.w900,
                fontFamily: 'Roboto',
              ),
            ),
            const SizedBox(height: 20),
            buildLink('Home'),
            buildLink('About'),
            buildLink('What We Do'),
            buildLink('Contact'),
            const SizedBox(height: 50),
            // Subscription Section
            const Text(
              'Subscribe Now',
              style: TextStyle(
                color: Colors.green,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                fontFamily: 'Roboto',
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Don’t miss our future updates! Get Subscribed Today!',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Cormorant',
                fontWeight: FontWeight.w900,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Your mail here',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    padding: const EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: const Color(0xFF55B534),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: const Icon(
                      Icons.email,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 80),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 70,
                  color: const Color(0xFF55B534),
                  child: const Text(
                    ' ©2024. Sadqah Zakaat. All Rights Reserved.',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w300),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Function to create link widgets
  Widget buildLink(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 22,
          color: Color.fromARGB(221, 21, 21, 21),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
