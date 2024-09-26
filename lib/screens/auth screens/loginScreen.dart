import 'package:flutter/material.dart';

class Loginscreen extends StatefulWidget {
  const Loginscreen({super.key});

  @override
  State<Loginscreen> createState() => _LoginscreenState();
}

class _LoginscreenState extends State<Loginscreen> {
  String? selectedCountryCode = "+91"; // Default country code
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final List<Map<String, String>> countryCodes = [
    {"code": "+1", "name": "USA"},
    {"code": "+44", "name": "UK"},
    {"code": "+91", "name": "India"},
    {"code": "+61", "name": "Australia"},
    {"code": "+81", "name": "Japan"},
    // Add more country codes here
  ];

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        flexibleSpace: Container(
          height: 100,
          padding: const EdgeInsets.only(top: 20.0),
          alignment: Alignment.center,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(width: 10),
              RichText(
                text: TextSpan(
                  style: const TextStyle(fontSize: 30.0, color: Colors.black),
                  children: <TextSpan>[
                    TextSpan(
                      text: 'Aura',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Color(0xFFfba7fc)),
                    ),
                    TextSpan(
                      text: 'Secure!',
                      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,  // Added a form for validation purposes
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // const Text("Enter your number", style: TextStyle(fontSize: 25)),const SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    height: 50,
                    width: 120,  // Increased width to better fit the dropdown content
                    decoration: BoxDecoration(
                      color: const Color(0xFFedf0f8),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DropdownButton<String>(
                        value: selectedCountryCode,
                        isExpanded: true,
                        iconSize: 24, // Added icon size to improve alignment
                        underline: SizedBox(),
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedCountryCode = newValue;
                          });
                        },
                        items: countryCodes.map((country) {
                          return DropdownMenuItem<String>(
                            value: country['code'],  // Ensure value matches the code
                            child: Text('${country['name']} (${country['code']})'),  // Display name with code
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),  // Added some spacing between the dropdown and text field
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 10.0),
                      decoration: BoxDecoration(
                        color: const Color(0xFFedf0f8),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: TextFormField(
                        controller: phoneController,
                        keyboardType: TextInputType.phone,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter your phone number';
                          }
                          if (!RegExp(r'^[0-9]+$').hasMatch(value)) {
                            return 'Please enter a valid phone number';
                          }

                          if (!RegExp(r'^\d{10}$').hasMatch(value)) {
                            return 'Please enter a valid 10-digit phone number';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          border: InputBorder.none,
                          hintText: "Phone Number",
                          hintStyle: TextStyle(color: Color(0xFFb2b7bf), fontSize: 18.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 30),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState?.validate() == true) {
                      // Handle phone number submission
                      print('Phone number: ${selectedCountryCode}${phoneController.text}');
                    }
                  },
                  child: const Text('Login'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
