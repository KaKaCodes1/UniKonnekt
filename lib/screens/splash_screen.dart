
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:unikonnect/screens/register_screen.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> with SingleTickerProviderStateMixin{
  @override
  void initState(){
    super.initState();
    //This removes the top and bottom phone icons like the back buttons and the status bar on top
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);

    //how long the screen will be displayed before going to another page
    Future.delayed(const Duration(seconds: 3), (){
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const Register())
      );
    });
  }

    @override
  void dispose(){
    //This returns the icons
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
    overlays: SystemUiOverlay.values);

    super.dispose();

  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            center: FractionalOffset(0.5, 0.5),
            focal: FractionalOffset(0.5, 0.5),
            colors: [Color(0xffffe677), Color(0xff38b6ff)],
            stops: [0.3, 1],
            radius: 0.5,
          )
          ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/full_logo.png',
              width: 400,
              height: 400,
            )
          ],
        ),  
      ),
    );
  }
}


