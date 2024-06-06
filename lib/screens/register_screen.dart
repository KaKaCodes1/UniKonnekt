import 'package:flutter/material.dart';

class Register extends StatelessWidget {
  const Register({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
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
              children: [
              const Text(
                'Create New Account',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
                ),
                ),
        
                const SizedBox(
                  height: 5,
                ),
        
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.white
                  ),
                  width: 348,
                  height: 600,
                  
                )
        
        
            ],),
          ),
      ),
    );
  }
}