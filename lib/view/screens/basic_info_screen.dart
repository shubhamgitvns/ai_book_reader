import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../widgets/custome_button.dart';
import '../widgets/custome_dropdown.dart';
import '../widgets/custome_textfield.dart';

class BasicInfoScreen extends StatefulWidget {
  const BasicInfoScreen({super.key});

  @override
  State<BasicInfoScreen> createState() => _BasicInfoScreenState();
}

class _BasicInfoScreenState extends State<BasicInfoScreen> {
  final TextEditingController nameController = TextEditingController();

  String? selectedProfile;

  final List<String> profileList = [
    "Student",

    "Working Professional",

    "Teacher",

    "Researcher",

    "Other",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),

            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,

              children: [
                const SizedBox(height: 40),

                Container(
                  height: 90,

                  width: 90,

                  decoration: BoxDecoration(
                    shape: BoxShape.circle,

                    gradient: const LinearGradient(
                      colors: [Color(0xff4F46E5), Color(0xff7C3AED)],
                    ),

                    boxShadow: [
                      BoxShadow(
                        color: Colors.deepPurple.withOpacity(.3),

                        blurRadius: 25,

                        offset: const Offset(0, 10),
                      ),
                    ],
                  ),

                  child: const Icon(
                    Icons.menu_book_rounded,

                    color: Colors.white,

                    size: 45,
                  ),
                ),

                const SizedBox(height: 25),

                const Text(
                  "Welcome",

                  style: TextStyle(fontSize: 18, color: Colors.grey),
                ),

                const SizedBox(height: 5),

                const Text(
                  "IQ100",

                  style: TextStyle(
                    fontSize: 34,

                    fontWeight: FontWeight.bold,

                    letterSpacing: 2,
                  ),
                ),

                const SizedBox(height: 10),

                const Text(
                  "Smart Book Suggestions\nPowered by AI",

                  textAlign: TextAlign.center,

                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),

                const SizedBox(height: 45),

                Container(
                  padding: const EdgeInsets.all(22),

                  decoration: BoxDecoration(
                    color: Colors.white,

                    borderRadius: BorderRadius.circular(25),

                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(.05),

                        blurRadius: 20,

                        offset: const Offset(0, 8),
                      ),
                    ],
                  ),

                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,

                    children: [
                      const Text(
                        "Your Basic Information",

                        style: TextStyle(
                          fontSize: 20,

                          fontWeight: FontWeight.bold,
                        ),
                      ),

                      const SizedBox(height: 8),

                      const Text(
                        "Let's know about you",

                        style: TextStyle(color: Colors.grey),
                      ),

                      const SizedBox(height: 30),

                      CustomTextField(
                        controller: nameController,

                        hintText: "Enter your name",

                        prefixIcon: Icons.person_outline,
                      ),

                      const SizedBox(height: 20),

                      CustomDropdown(
                        hint: "Select Profile",

                        items: profileList,

                        selectedValue: selectedProfile,

                        onChanged: (value) {
                          setState(() {
                            selectedProfile = value;
                          });
                        },
                      ),

                      const SizedBox(height: 35),

                      CustomButton(
                        text: "Continue",

                        onTap: () {
                          if (nameController.text.trim().isEmpty) {
                            Get.snackbar(
                              "Error",

                              "Please enter name",

                              snackPosition: SnackPosition.BOTTOM,
                            );

                            return;
                          }

                          if (selectedProfile == null) {
                            Get.snackbar(
                              "Error",

                              "Please select profile",

                              snackPosition: SnackPosition.BOTTOM,
                            );

                            return;
                          }

                          print(nameController.text);

                          print(selectedProfile);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
