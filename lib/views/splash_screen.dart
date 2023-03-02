import 'package:flutter/material.dart';
import 'package:gfit/utils/colors.dart';
import 'package:gfit/views/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    gotoScreen(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo.jpeg',
                  width: 60,
                  height: 140,
                ),
                SizedBox(
                  height: 0.2 * screenWidth,
                ),
                const Text(
                  'gFit',
                  style: TextStyle(
                    color: kWhiteColor,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 0.03 * screenHeight,
          ),
          const CircularProgressIndicator(
            color: kWhiteColor,
            strokeWidth: 3,
          ),
        ],
      ),
    );
  }

  Future<void> gotoScreen(BuildContext context) async {
    await Future.delayed(const Duration(milliseconds: 1500));
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: ((context) => const HomeScreen()),
      ),
    );
  }
}
