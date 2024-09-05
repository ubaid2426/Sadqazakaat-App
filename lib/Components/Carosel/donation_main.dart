import 'package:flutter/material.dart';

class Donation extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;

  const Donation({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(imageUrl), // Adjust the image path
                  fit: BoxFit.cover,
                ),
              ),
              //  fit: BoxFit.cover,
              // child: Image.asset(imageUrl),
            ), // Access data from props
            const SizedBox(height: 16),
            Text(
              title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Divider(
              color: Colors.black,
              thickness: 3,
            ),
            const SizedBox(height: 8),
            Text(
              description,
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w300),
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    );
  }
}

class DonationData extends StatelessWidget {
  const DonationData({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Donation(
          imageUrl: 'Assests/Images/10031.png',
          title: 'Meal Donation',
          description:
              'Providing nutritious meals to those in need, ensuring no one goes hungry in our community.',
        ),
        Donation(
          imageUrl: 'Assests/Images/10002.png',
          title: 'Daig Donation',
          description:
              'Supplying essential medications to those in need, promoting health and well-being in our community.',
        ),
        Donation(
          imageUrl: 'Assests/Images/10026.png',
          title: 'Tree Donation',
          description:
              'Planting trees to enhance our environment, combat climate change, and foster a greener future.',
        ),
        Donation(
          imageUrl: 'Assests/Images/10004.png',
          title: 'WheelChairs',
          description:
              'Donating wheelchairs to empower mobility and enhance independence for those with mobility challenges',
        ),
        Donation(
          imageUrl: 'Assests/Images/10005.png',
          title: 'Medical bed',
          description:
              'Providing medical beds to ensure comfort and proper care for individuals in need of support.',
        ),
        Donation(
          imageUrl: 'Assests/Images/10006.png',
          title: 'Clothes',
          description:
              'Donating clothes to offer warmth and dignity, helping those in need with essential clothing.',
        ),
      ],
    );
  }
}
