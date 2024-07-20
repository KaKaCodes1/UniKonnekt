import 'package:flutter/material.dart';
import 'package:unikonnect/screens/register_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool obscureText = true;

  late String email;
  late String password;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff38b6ff),
        title: const Center(
          child: Text(
            'Login',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),

      body: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
          color:  Color(0xff38b6ff),
        ),
        child: Center(
          child: IntrinsicHeight(
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(255, 239, 230, 230),
              ),
              width: 348,
              // height: MediaQuery.of(context).size.height,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  // mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Center(
                      child: Image.asset(
                        'assets/images/small_logo.png',
                        width: 200,
                        height: 200,
                      ),
                    ),
                    inputField(
                      label: 'Email',
                      hintText: 'Enter Your Email',
                      onChanged: (value) {
                        email = value;
                      },
                    ),
                    inputField(
                      label: 'Password',
                      hintText: 'Enter Your Password',
                      obscureText: obscureText,
                      onChanged: (value) {
                        setState(() {
                          password = value;
                        });
                      },
                      onTap: () {
                        setState(() {
                          obscureText = !obscureText;
                        });
                      },
                    ),
            
                    ElevatedButton(
                      onPressed: (){}, 
                      style:ElevatedButton.styleFrom(
                        minimumSize: const Size(200, 40),
                        backgroundColor: Colors.deepOrange,
                      ),
                      child: const Text(
                        'Login',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                      ),
                    ),
              
                    const SizedBox(height: 10,), 
            
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Don't have an account? "),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const Register(),
                              ),
                            );
                          },
                          child: const Text(
                            'Sign Up!',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.deepOrange,
                            ),
                          ),
                        ),
                      ],
                    ),                                         
                  ]
                ),
              ),      
            ),
          ),//cont
        ),           
      ),
    );
  }
Widget inputField({
    required String label,
    required String hintText,
    bool obscureText = false,
    required ValueChanged<String> onChanged,
    VoidCallback? onTap,
    TextEditingController? controller,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black87),
        ),
        const SizedBox(
          height: 5,
        ),
        TextField(
          controller: controller,
          obscureText: obscureText,
          onChanged: onChanged,
          onTap: label == 'Date of Birth' ? onTap : null,
          readOnly: label == 'Date of Birth',
          decoration: InputDecoration(
            hintText: hintText,
            hintStyle: const TextStyle(
              fontStyle: FontStyle.italic,
              fontSize: 15,
            ),
            suffixIcon: label == 'Password'
                ? obscureText
                    ? IconButton(
                        icon: const Icon(
                          Icons.visibility,
                          color: Colors.deepOrange,
                        ),
                        onPressed: onTap,
                      )
                    : IconButton(
                        icon: const Icon(
                          Icons.visibility_off,
                          color: Colors.deepOrange,
                        ),
                        onPressed: onTap,
                      )
                : null,
            contentPadding:
                const EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.deepOrange,
              ),
            ),
          ),
        ),
        const SizedBox(height: 5),
      ],
    );
  }  
}