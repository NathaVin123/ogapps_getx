import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:ogapps_getx/app/routes/app_pages.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 46),
            child: Text(
              'OGAPPS',
              style: TextStyle(
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 24),
            child: Container(
              child: Column(
                children: [
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
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  MaterialButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24)),
                    onPressed: () {
                      Get.offAllNamed(Routes.DASHBOARD);
                      Get.snackbar('Welcome User', 'Login Success',
                          snackPosition: SnackPosition.TOP,
                          snackStyle: SnackStyle.FLOATING,
                          backgroundColor: Colors.green,
                          borderRadius: 24,
                          colorText: Colors.white);
                    },
                    color: Colors.blue,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10),
                          child: Text(
                            'Login',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  InkWell(
                    onTap: (() => Get.toNamed(Routes.REGISTER, arguments: {})),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 8),
                      child: Text(
                        'Register',
                        style: TextStyle(
                            color: Color.fromARGB(255, 100, 100, 100),
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Divider(
                      thickness: 2,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          InkWell(
                              onTap: () {
                                Get.offAllNamed(Routes.DASHBOARD);
                                Get.snackbar(
                                    'Welcome User', 'Sign with Google Success',
                                    snackPosition: SnackPosition.TOP,
                                    snackStyle: SnackStyle.FLOATING,
                                    backgroundColor: Colors.green,
                                    borderRadius: 24,
                                    colorText: Colors.white);
                              },
                              child: Column(
                                children: [
                                  Image.network(
                                    'http://pngimg.com/uploads/google/google_PNG19635.png',
                                    fit: BoxFit.cover,
                                    width: 50,
                                    height: 50,
                                  ),
                                  Text(
                                    'Sign with Google',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(255, 100, 100, 100),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
