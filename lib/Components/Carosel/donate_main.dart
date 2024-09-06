import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

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
                  style: const TextStyle(
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
                  style: const TextStyle(
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
                  color: const Color(0xFFF1F1F1),
                  // borderRadius:Radius.circular(100),
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              const SizedBox(height: 30),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ChooseAmountPage(),
                    ),
                  );

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
                    fontFamily: "Roboto",
                    color: Colors.black,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              const SizedBox(height: 20),
              Container(
                height: 70,
                color: const Color(0xFFF1F1F1),
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

class ChooseAmountPage extends StatefulWidget {
  // final String amount;
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

  void _navigateToDonationForm() {
    if (selectedAmount <= 0) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter a valid amount')),
      );
      return;
    }

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DonationFormPage(amount: selectedAmount),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Text('Choose Amount'),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.fromLTRB(19, 19, 19, 0),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5), // Shadow color
                    spreadRadius: 5, // How far the shadow spreads
                    blurRadius: 7, // How blurry the shadow is
                    offset:
                        const Offset(0, 3), // Horizontal and vertical offsets
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
                        fontWeight: FontWeight.w900),
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
                            decoration: const InputDecoration(
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
                    onPressed: _navigateToDonationForm,
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
                        fontFamily: "Roboto",
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  const SizedBox(height: 40),
                  Container(
                    height: 70,
                    color: const Color(0xFFF1F1F1),
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
        backgroundColor:
            amount == 0 ? const Color(0xFF29C77B) : const Color(0xFF29C77B),
      ),
      child: SizedBox(
        width: 68,
        height: 70,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
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

class DonationFormPage extends StatefulWidget {
  final int amount;
  DonationFormPage({Key? key, required this.amount}) : super(key: key);

  @override
  DonationFormPageState createState() => DonationFormPageState();
}

class DonationFormPageState extends State<DonationFormPage> {
  final _formKey = GlobalKey<FormState>();
  final firstNameController = TextEditingController();
  final lastNameController = TextEditingController();
  final emailController = TextEditingController();
  final depositAmountController = TextEditingController();
  final UserNameController = TextEditingController();
  final PasswordController = TextEditingController();
  // final int widthful = 0;
  bool showLoginForm = false; // To toggle between forms
  File? _image; // Move _image to State class
  final picker = ImagePicker(); // Move picker to State class

  late int selectedAmount;

  Future<void> _chooseFile() async {
    // final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    //   setState(() {
    //     if (pickedFile != null) {
    //       _image = File(pickedFile.path);
    //     }
    //   });
  }

  void _submitForm() {
    final depositAmount = depositAmountController.text;
    if (_image == null || depositAmount.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please complete the form')),
      );
      return;
    }

    // Logic to submit the form
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Form Submitted')),
    );
  }

  void initState() {
    super.initState();
    selectedAmount = widget.amount;
    depositAmountController.text = selectedAmount.toString();
  }

  @override
  void dispose() {
    // Dispose the controllers to free memory
    firstNameController.dispose();
    lastNameController.dispose();
    emailController.dispose();
    depositAmountController.dispose();
    UserNameController.dispose();
    PasswordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Text('Add Your Information'),
        ),
        body: SingleChildScrollView(
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
                    offset:
                        const Offset(0, 3), // Horizontal and vertical offsets
                  ),
                ],
              ),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Who's giving today?",
                            style:
                                TextStyle(fontSize: 22, fontFamily: "Roboto"),
                            textAlign: TextAlign.center,
                          ),
                          const Text(
                            "We'll never share this information with anyone",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Roboto1",
                              fontWeight: FontWeight.w400,
                              color: Color.fromARGB(255, 58, 56, 56),
                            ),
                            textAlign: TextAlign.center,
                          ),
                          showLoginForm
                              ? Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Column(
                                    children: [
                                      TextFormField(
                                        controller:
                                            UserNameController, // Replace with your username controller
                                        decoration: const InputDecoration(
                                          labelText: 'Username*',
                                        ),
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please enter your username';
                                          }
                                          return null;
                                        },
                                      ),
                                      TextFormField(
                                        controller:
                                            PasswordController, // Replace with your password controller
                                        obscureText:
                                            true, // This will hide the text entered for password
                                        decoration: const InputDecoration(
                                          labelText: 'Password*',
                                        ),
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please enter your password';
                                          } else if (value.length < 6) {
                                            return 'Password must be at least 6 characters long';
                                          }
                                          return null;
                                        },
                                      ),
                                      Row(
                                        children: [
                                          TextButton(
                                            onPressed: () {},
                                            child: const Text("Reset Password"),
                                          ),
                                          TextButton(
                                            onPressed: () {
                                              setState(() {
                                                showLoginForm =
                                                    false; // Return to the donation form
                                              });
                                            },
                                            child: const Text("Cancel"),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                )
                              : Padding(
                                  padding: const EdgeInsets.all(25.0),
                                  child: Column(
                                    children: [
                                      TextFormField(
                                        controller: firstNameController,
                                        decoration: const InputDecoration(
                                          labelText: 'First Name*',
                                        ),
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please enter your first name';
                                          }
                                          return null;
                                        },
                                      ),
                                      TextFormField(
                                        controller: lastNameController,
                                        decoration: const InputDecoration(
                                          labelText: 'Last Name',
                                        ),
                                      ),
                                      TextFormField(
                                        controller: emailController,
                                        decoration: const InputDecoration(
                                          labelText: 'Email Address*',
                                        ),
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return 'Please enter your email address';
                                          } else if (!RegExp(
                                                  r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$')
                                              .hasMatch(value)) {
                                            return 'Please enter a valid email address';
                                          }
                                          return null;
                                        },
                                      ),
                                      const _CheckBoxState(),
                                      Row(
                                        children: [
                                          const Text("Already Have an Account"),
                                          TextButton(
                                            onPressed: () {
                                              setState(() {
                                                showLoginForm =
                                                    true; // Return to the donation form
                                              });
                                            },
                                            child: const Text("Login"),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                          const Text(
                            'To make an offline donation toward this cause, send your amount in any 1 of the account:',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w500,
                              // letterSpacing: 2,
                            ),
                          ),
                          const SizedBox(height: 50),
                          const Padding(
                            padding: EdgeInsets.all(18.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '1. Account number: \n3088383000001023\nBank Name: Faysal Bank\nZuha Rashid',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.start,
                                ),
                                SizedBox(height: 16),
                                Text(
                                  '2. International Donors: PK23FAYS3088383000001023',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.start,
                                ),
                                SizedBox(height: 16),
                                Text(
                                  '3. Jazzcash Number: 03363582087',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  textAlign: TextAlign.start,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 32),
                          const Text(
                            'Kindly Attach Deposit Slip',
                            style: TextStyle(
                              fontSize: 18,
                              fontFamily: "Roboto",
                              color: Color.fromARGB(255, 58, 56, 56),
                              fontWeight: FontWeight.w500,
                              // letterSpacing: 2,
                            ),
                          ),
                          const SizedBox(height: 8),
                          ElevatedButton(
                            onPressed: _chooseFile,
                            child: const Text('Choose file'),
                          ),
                          const SizedBox(height: 16),
                          _image == null
                              ? const Text('No file chosen')
                              : Text('File chosen: ${_image!.path}'),
                          const SizedBox(height: 16),
                          TextField(
                            controller: depositAmountController,
                            keyboardType: TextInputType.number,
                            decoration: const InputDecoration(
                              labelText: 'Deposit Amount',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Donation Summary',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: "Roboto",
                                  fontWeight: FontWeight.w900,
                                  // letterSpacing: 2,
                                ),
                              ),
                              TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const ChooseAmountPage(),
                                      ),
                                    );
                                  },
                                  child: Text("Edit Donation"))
                            ],
                          ),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Payment Amount',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Roboto",
                                  color: Color.fromARGB(255, 58, 56, 56),
                                  fontWeight: FontWeight.w600,
                                  // letterSpacing: 2,
                                ),
                              ),
                              Text('Rs $selectedAmount'),
                            ],
                          ),
                          const SizedBox(height: 16),
                          const Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Giving Frequency',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: "Roboto",
                                  color: Color.fromARGB(255, 58, 56, 56),
                                  fontWeight: FontWeight.w600,
                                  // letterSpacing: 2,
                                ),
                              ),
                              Text('One time'),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Donation Total',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: "Roboto",
                                  // color: Color.fromARGB(255, 58, 56, 56),
                                  fontWeight: FontWeight.w900,
                                  // letterSpacing: 2,
                                ),
                              ),
                              Text('Rs $selectedAmount'),
                            ],
                          ),
                          const SizedBox(height: 32),
                        ],
                      ),
                    ),
                    TextButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _submitForm();
                        }
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
                          fontFamily: "Roboto",
                          color: Colors.black,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Container(
                      width: MediaQuery.of(context).size.width + 40,
                      height: 70,
                      color: const Color(0xFFF1F1F1),
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
      ),
    );
  }

  Widget _SingUpMain() {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextFormField(
                controller:
                    UserNameController, // Replace with your username controller
                decoration: const InputDecoration(
                  labelText: 'Username*',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your username';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller:
                    PasswordController, // Replace with your password controller
                obscureText:
                    true, // This will hide the text entered for password
                decoration: const InputDecoration(
                  labelText: 'Password*',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  } else if (value.length < 6) {
                    return 'Password must be at least 6 characters long';
                  }
                  return null;
                },
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text("Reset Password"),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        showLoginForm = true; // Return to the donation form
                      });
                    },
                    child: const Text("Cancel"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _LoginMain() {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              TextFormField(
                controller:
                    UserNameController, // Replace with your username controller
                decoration: const InputDecoration(
                  labelText: 'Username*',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your username';
                  }
                  return null;
                },
              ),
              TextFormField(
                controller:
                    PasswordController, // Replace with your password controller
                obscureText:
                    true, // This will hide the text entered for password
                decoration: const InputDecoration(
                  labelText: 'Password*',
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  } else if (value.length < 6) {
                    return 'Password must be at least 6 characters long';
                  }
                  return null;
                },
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text("Reset Password"),
                  ),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        showLoginForm = false; // Return to the donation form
                      });
                    },
                    child: const Text("Cancel"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _CheckBoxState extends StatefulWidget {
  const _CheckBoxState({super.key});

  @override
  State<_CheckBoxState> createState() => __CheckBoxStateState();
}

class __CheckBoxStateState extends State<_CheckBoxState> {
  bool ischecked = true;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 230,
      child: CheckboxListTile(
        title: const Text('Create Account'),
        value: ischecked,
        onChanged: (value) => setState(
          () {
            ischecked = value!;
            print('$ischecked');
          },
        ),
      ),
    );
  }
}
