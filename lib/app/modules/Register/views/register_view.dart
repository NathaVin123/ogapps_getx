import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Register'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 18),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                maxLength: 20,
                decoration: InputDecoration(
                  hintText: 'First Name',
                  hintStyle: TextStyle(fontSize: 18),
                  counterText: '',
                  prefixIcon: Icon(
                    Icons.people,
                    size: 28,
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                maxLength: 20,
                decoration: InputDecoration(
                  hintText: 'Last Name',
                  hintStyle: TextStyle(fontSize: 18),
                  counterText: '',
                  prefixIcon: Icon(
                    Icons.people,
                    size: 28,
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                maxLength: 20,
                decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(fontSize: 18),
                  counterText: '',
                  prefixIcon: Icon(
                    Icons.people,
                    size: 28,
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 8,
              ),
              TextFormField(
                maxLength: 20,
                decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(fontSize: 18),
                  counterText: '',
                  prefixIcon: Icon(
                    Icons.lock_rounded,
                    size: 28,
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              TextFormField(
                maxLength: 20,
                decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  hintStyle: TextStyle(fontSize: 18),
                  counterText: '',
                  prefixIcon: Icon(
                    Icons.lock_rounded,
                    size: 28,
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: 8,
              ),
              MaterialButton(
                onPressed: (() => Get.back()),
                color: Colors.blue,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Text(
                        'Save',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
