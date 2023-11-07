
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sama_gp/controllers/loading_controller.dart';
import 'package:sama_gp/controllers/login_controller.dart';
import 'package:sama_gp/routes/app_routes.dart';
import 'package:sama_gp/screens/register_screen.dart';
import 'package:sama_gp/utils/colors.dart';
import 'package:sama_gp/widgets/my_button.dart';
import 'package:sama_gp/widgets/my_textfield.dart';
import 'package:sama_gp/widgets/square_tile.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});



  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {

  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  LoginController loginController = Get.put(LoginController());
  final LoadingButtonController loadingButtonController = Get.put(LoadingButtonController());

  bool isLoading = false;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.silverColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 50),

                // logo
                const Icon(
                  Icons.lock,
                  size: 100,
                  color: AppColors.greenColor,
                ),

                const SizedBox(height: 50),

                // welcome back, you've been missed!
                Text(
                  "Bienvenue , connectez-vous ?",
                  style: TextStyle(
                    color: Colors.grey[700],
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 25),

                // username textfield
                MyTextField(
                  controller: loginController.usernameController,
                  hintText: 'Username',
                  obscureText: false,
                ),

                const SizedBox(height: 10),

                // password textfield
                MyTextField(
                  controller: loginController.passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),

                const SizedBox(height: 10),

                // forgot password?
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        'Forgot Password?',
                        style: TextStyle(color: Colors.grey[600]),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 25),

                // sign in button

                MyButton(
                  color: AppColors.greenColor,
                  onTap: () async {
                    try {
                      setState(() {
                        isLoading = true;
                      });

                      // Appelez la fonction `loginWithEmail` de manière asynchrone en utilisant `await`.
                      await loginController.loginWithEmail();

                      setState(() {
                        isLoading = false;
                      });
                    } catch (e) {
                      // Gérez les erreurs ici si nécessaire.
                      setState(() {
                        isLoading = false;
                      });
                    }
                  },
                ),

                const SizedBox(height: 50),

                // or continue with
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10.0),
                        child: Text(
                          'Or continue with',
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 50),

                // google + apple sign in buttons
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    // google button
                    SquareTile(imagePath: 'lib/images/google.png'),

                    SizedBox(width: 25),

                    // apple button
                    SquareTile(imagePath: 'lib/images/apple.png')
                  ],
                ),

                const SizedBox(height: 50),

                // not a member? register now
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Pas encore membre?',
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                    const SizedBox(width: 4),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(AppRoutes.register);
                      },
                      child: Text(
                        "S'inscrire",
                        style: TextStyle(
                          color: Colors.blue,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                    ,
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
