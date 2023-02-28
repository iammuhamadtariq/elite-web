import 'dart:convert';
import 'package:elite/common/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:email_validator/email_validator.dart';

class ContactSection extends StatefulWidget {
  const ContactSection({super.key});

  @override
  State<ContactSection> createState() => _ContactSectionState();
}

class _ContactSectionState extends State<ContactSection> {
  final String hintTextName = 'Enter your name..';
  final String hitnEmail = 'Enter your email..';
  final String hintSubject = 'Enter subject..';
  final String hintMessage = 'Enter message..';
  final String hintPhone = 'Enter phone number..';
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController subjectController = TextEditingController();
  TextEditingController messageController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      width: double.infinity,
      child: Align(
        child: Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: AppColors.secondaryColor,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  SizedBox(
                    width: screenWidth > 1100 ? 50 : 10,
                  ),
                  Icon(
                    Icons.support_agent_outlined,
                    size: screenWidth > 1100 ? 130 : 80 * screenWidth / 600,
                    color: AppColors.primaryColor,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Do you want our services?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenWidth > 1100 ? 36 : 18,
                          fontFamily: 'Open Sans',
                          fontWeight: FontWeight.w900,
                        ),
                      ),
                      Flex(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        direction: screenWidth > 1100
                            ? Axis.horizontal
                            : Axis.vertical,
                        children: [
                          Text(
                            "Just fill form below and send us,",
                            style: TextStyle(
                              color: AppColors.primaryColor,
                              fontSize: screenWidth > 1200 ? 28 : 18,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                          Text(
                            " Our team will contact you..",
                            style: TextStyle(
                              color: AppColors.primaryColor,
                              fontSize: screenWidth > 1200 ? 28 : 20,
                              fontFamily: 'Open Sans',
                              fontWeight: FontWeight.w900,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: screenWidth > 1100 ? 100 : 10),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 30,
                      ),
                      TextFormField(
                        controller: nameController,
                        style: const TextStyle(color: Colors.white),
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        decoration: InputDecoration(
                          hintText: hintTextName,
                          hintStyle: const TextStyle(
                              fontSize: 20.0, color: Colors.white),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          enabledBorder: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            borderSide: BorderSide(
                              color: Colors.black26,
                              width: 2,
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            borderSide: BorderSide(
                              color: AppColors.primaryColor,
                              width: 2,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                            return "Enter correct name";
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: emailController,
                        style: const TextStyle(color: Colors.white),
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        decoration: InputDecoration(
                          hintText: hitnEmail,
                          hintStyle: const TextStyle(
                              fontSize: 20.0, color: Colors.white),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          enabledBorder: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            borderSide: BorderSide(
                              color: Colors.black26,
                              width: 2,
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            borderSide: BorderSide(
                              color: AppColors.primaryColor,
                              width: 2,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}')
                                  .hasMatch(value)) {
                            return 'Please enter mobile number ';
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: phoneController,
                        style: const TextStyle(color: Colors.white),
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        decoration: InputDecoration(
                          hintText: hintPhone,
                          hintStyle: const TextStyle(
                              fontSize: 20.0, color: Colors.white),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          enabledBorder: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            borderSide: BorderSide(
                              color: Colors.black26,
                              width: 2,
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            borderSide: BorderSide(
                              color: AppColors.primaryColor,
                              width: 2,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter mobile number ';
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: subjectController,
                        style: const TextStyle(color: Colors.white),
                        keyboardType: TextInputType.multiline,
                        maxLines: null,
                        decoration: InputDecoration(
                          hintText: hintSubject,
                          hintStyle: const TextStyle(
                              fontSize: 20.0, color: Colors.white),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          enabledBorder: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            borderSide: BorderSide(
                              color: Colors.black26,
                              width: 2,
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            borderSide: BorderSide(
                              color: AppColors.primaryColor,
                              width: 2,
                            ),
                          ),
                        ),
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                            return "Enter correct subject";
                          } else {
                            return null;
                          }
                        },
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        keyboardType: TextInputType.multiline,
                        minLines: 1,
                        maxLines: 5,
                        controller: messageController,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: hintMessage,
                          hintStyle: const TextStyle(
                              fontSize: 20.0, color: Colors.white),
                          contentPadding: const EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 20.0),
                          enabledBorder: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            borderSide: BorderSide(
                              color: Colors.black26,
                              width: 2,
                            ),
                          ),
                          focusedBorder: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(20.0)),
                            borderSide: BorderSide(
                              color: AppColors.primaryColor,
                              width: 2,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: (() {
                              if (_formKey.currentState!.validate()) {
                                // If the form is valid, display a snackbar. In the real world,
                                // you'd often call a server or save the information in a database.

                                sendEmail(
                                  name: nameController.text.trim(),
                                  email: emailController.text.trim(),
                                  subject: subjectController.text.trim(),
                                  message: messageController.text.trim(),
                                  phone: phoneController.text.trim(),
                                );
                                nameController.clear();
                                emailController.clear();
                                subjectController.clear();
                                messageController.clear();
                                phoneController.clear();
                                ScaffoldMessenger.of(context).showSnackBar(
                                  const SnackBar(
                                      content: Text('Valuable inquiry sent')),
                                );
                              }
                            }),
                            child: Container(
                              margin: const EdgeInsets.only(right: 30),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 30, vertical: 10),
                              color: Colors.white,
                              child: const Text(
                                "Send us an inquiry",
                                style: TextStyle(
                                    color: Colors.blueAccent,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  TextFormField customInputField(hintText, controller) {
    return TextFormField(
      controller: controller,
      style: const TextStyle(color: Colors.white),
      keyboardType: TextInputType.multiline,
      maxLines: null,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: const TextStyle(fontSize: 20.0, color: Colors.white),
        contentPadding:
            const EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          borderSide: BorderSide(
            color: Colors.black26,
            width: 2,
          ),
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          borderSide: BorderSide(
            color: AppColors.primaryColor,
            width: 2,
          ),
        ),
      ),
    );
  }

  Future sendEmail({
    required String name,
    required String email,
    required String phone,
    required String subject,
    required String message,
  }) async {
    const serviceId = 'service_rjddux4';
    const templateId = 'template_56qqlby';
    const userId = 'Q3e9Lpt4NC3810C0_';
    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    Map<String, String> headers = {
      'origin': 'http://localhost',
      'Content-Type': 'application/json'
    };
    final msg = jsonEncode({
      'service_id': serviceId,
      'template_id': templateId,
      'user_id': userId,
      'template_params': {
        'user_name': name,
        'user_email': email,
        'user_phone': phone,
        'user_subject': subject,
        'user_message': message,
      }
    });
    final response = await http.post(
      url,
      headers: headers,
      body: msg,
    );
    print(response);
  }
}
