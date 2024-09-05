import 'package:flutter/material.dart';

// void main() {
//   runApp(const WheelchairDonationPage());
// }

class Donate extends StatelessWidget {
  const Donate({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Data(
            imageUrl: "Assests/Images/10004.png",
            title: "Wheelchair Donation",
            description:
                "Donate wheelchairs to enhance mobility and independence for individuals in need. Your contribution can significantly improve their quality of life."),
        Data(
            imageUrl: "Assests/Images/10026.png",
            title: "Support for Widow Families in Need",
            description:
                "Providing essential resources and financial aid to help widow families overcome challenges and achieve stability."),
        Data(
            imageUrl: "Assests/Images/10003.png",
            title: "Tree Donation for a Greener Community",
            description:
                "Help us enhance our community’s environment by donating trees. Your contribution will support reforestation efforts, improve air quality, and provide shade and beauty to public spaces."),
      ],
    );
  }
}

class Data extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String description;
  const Data({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(19, 19, 19, 0),
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
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 30),
              SizedBox(
                width: 200,
                child: Text(
                  title,
                  style: TextStyle(
                      fontSize: 32,
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w700),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                width: 100,
                child: Divider(
                  color: Color(0xFF29C77B),
                  thickness: 4,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  description,
                  style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 88, 88, 88),
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 250,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  imageUrl,
                  fit: BoxFit.cover,
                ),
              ), // Replace with your image path
              const SizedBox(height: 20),

              Container(
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromARGB(255, 237, 228, 228),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 3 - 20,
                      height: 70,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 237, 228, 228),
                        ),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Rs 0',
                            softWrap: true,
                            maxLines: 2,
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.w600),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'raised',
                            softWrap: true,
                            maxLines: 2,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Montserrat",
                              color: Color.fromARGB(255, 128, 126, 126),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      width: MediaQuery.of(context).size.width / 3 - 20,
                      height: 70,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 237, 228, 228),
                        ),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '0',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w600),
                            softWrap: true,
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'donations',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Montserrat",
                              color: Color.fromARGB(255, 128, 126, 126),
                            ),
                            softWrap: true,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      width: MediaQuery.of(context).size.width / 3 - 20,
                      height: 70,
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: const Color.fromARGB(255, 237, 228, 228),
                        ),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Rs 10,000',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                            softWrap: true,
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            'goal',
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                              fontFamily: "Montserrat",
                              color: Color.fromARGB(255, 128, 126, 126),
                            ),
                            softWrap: true,
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 40),
              Container(
                width: 340,
                height: 30,
                // color: Colors.green,
                decoration: BoxDecoration(
                  color: Color(0xFFF1F1F1),
                  // borderRadius:Radius.circular(100),
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              const SizedBox(height: 30),
              TextButton(
                onPressed: () {
                  // Handle Donate button press
                },
                style: TextButton.styleFrom(
                  backgroundColor: Colors.green, // Button color
                  padding: const EdgeInsets.symmetric(
                    horizontal: 50,
                    vertical: 25,
                  ),
                ),
                child: const Text(
                  "Donate Now >",
                  style: TextStyle(
                    fontSize: 18.8,
                    fontFamily: "Montserrat",
                    color: Colors.black,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              // SizedBox(
              //   width: 100,
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceAround,
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     children: [
              //       const CircleAvatar(
              //           radius: 5, backgroundColor: Colors.grey),
              //       const SizedBox(width: 5),
              //       const CircleAvatar(
              //           radius: 5, backgroundColor: Colors.grey),
              //       const SizedBox(width: 5),
              //       const CircleAvatar(
              //           radius: 5, backgroundColor: Colors.grey),
              //     ],
              //   ),
              // ),
              const SizedBox(height: 20),
              Container(
                height: 70,
                color: Color(0xFFF1F1F1),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.lock,
                      color: Color.fromARGB(72, 81, 75, 75),
                    ),
                    SizedBox(width: 10),
                    Text(
                      ' Secure Donation',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
                    ),
                  ],
                ),
              ),
              // const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
    // );
  }
}

// import 'package:flutter/material.dart';


class ChooseAmountPage extends StatefulWidget {
  const ChooseAmountPage({super.key});

  @override
  _ChooseAmountPageState createState() => _ChooseAmountPageState();
}

class _ChooseAmountPageState extends State<ChooseAmountPage> {
  int selectedAmount = 100; // Initial selected amount
  TextEditingController customAmountController = TextEditingController();

  void _handleAmountSelection(int amount) {
    setState(() {
      selectedAmount = amount;
      customAmountController.text = amount.toString(); // Update input field
    });
  }

  void _handleCustomAmount() {
    setState(() {
      selectedAmount = 0; // Reset selected amount to indicate custom input
      customAmountController.text = ''; // Clear input field
    });
  }

  @override
  void dispose() {
    customAmountController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Choose Amount'),
        ),
        body: SingleChildScrollView(
          child: Padding(
           padding: const EdgeInsets.fromLTRB(19, 19, 19, 0),
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
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'How much would you like to donate? As a contributor to Sadqah Zakaat, we make sure your donation goes directly to supporting our cause. Thank you for your generosity!',
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromARGB(255, 58, 56, 56),
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w500),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        const Text(
                          'Rs',
                          style: TextStyle(
                              fontSize: 32,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(width: 8),
                        Expanded(
                          child: TextField(
                            keyboardType: TextInputType.number,
                            controller: customAmountController,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: 'Enter amount',
                            ),
                            onChanged: (value) {
                              if (value.isNotEmpty &&
                                  int.tryParse(value) != null) {
                                setState(() {
                                  selectedAmount = int.parse(value);
                                });
                              }
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            DonationButton(
                                amount: 10,
                                onPressed: () => _handleAmountSelection(10)),
                            DonationButton(
                                amount: 25,
                                onPressed: () => _handleAmountSelection(25)),
                            DonationButton(
                                amount: 50,
                                onPressed: () => _handleAmountSelection(50)),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            DonationButton(
                                amount: 100,
                                onPressed: () => _handleAmountSelection(100)),
                            DonationButton(
                                amount: 250,
                                onPressed: () => _handleAmountSelection(250)),
                            DonationButton(
                                amount: 0,
                                onPressed: _handleCustomAmount,
                                text: 'Custom Amount'),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 32),
                  TextButton(
                    onPressed: () {
                      // Handle Donate button press
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.green, // Button color
                      padding: const EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 25,
                      ),
                    ),
                    child: const Text(
                      "Donate Now >",
                      style: TextStyle(
                        fontSize: 18.8,
                        fontFamily: "Montserrat",
                        color: Colors.black,
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Container(
                    height: 70,
                    color: Color(0xFFF1F1F1),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.lock,
                          color: Color.fromARGB(72, 81, 75, 75),
                        ),
                        SizedBox(width: 10),
                        Text(
                          ' Secure Donation',
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.w300),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class DonationButton extends StatelessWidget {
  final int amount;
  final VoidCallback onPressed;
  final String text;

  const DonationButton({
    required this.amount,
    required this.onPressed,
    this.text = '',
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: amount == 0 ? Color(0xFF29C77B) : Color(0xFF29C77B),
      ),
      child: SizedBox(
        width: 68,
        height: 70,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              // text.isEmpty ? 'Rs
              text.isEmpty ? 'Rs $amount' : text,
              style: TextStyle(
                color: amount == 0 ? Colors.black : Colors.white,
                fontSize: 16,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}





