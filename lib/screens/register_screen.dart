import 'package:flutter/material.dart';
import 'package:unikonnect/screens/login_screen.dart';

import 'home_screen.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool obscureText = true;

  final TextEditingController _dateController = TextEditingController();

  late String email;
  late String password;
  late String fullName;
  late String username;
  late String location;
  late String dateOfBirth;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff38b6ff),
        title: const Center(
          child: Text(
            'Create New Account',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          // height: double.infinity,
          decoration: const BoxDecoration(
            color:  Color(0xff38b6ff),
            ),
            child: Column(
              children: [        
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: const Color.fromARGB(255, 239, 230, 230),
                    ),
                    width: 348,
                    
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Center(
                            child: Image.asset(
                              'assets/images/small_logo.png',
                              width: 180,
                              height: 180,
                            ),
                          ),
                  
                          const SizedBox(
                            height: 5,
                          ),
                  
                          inputField(
                            label: 'Full Name',
                            hintText: 'Enter Your Full Name',
                            onChanged: (value) {
                              fullName = value;
                            },
                          ),
                  
                          inputField(
                            label: 'Username',
                            hintText: 'Enter Your Username',
                            onChanged: (value) {
                              username = value;
                            },
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
                          
                          inputField(
                            label: 'Location',
                            hintText: 'Enter Your Location',
                            onChanged: (value) {
                              location = value;
                            },
                          ),
                          inputField(
                            label: 'Date of Birth',
                            hintText: 'Enter Your Date of Birth',
                            controller: _dateController,
                            onChanged: (value) {
                              dateOfBirth = value;
                            },
                            onTap: () async {
                              DateTime? pickedDate = await showDatePicker(
                                context: context,
                                initialDate: DateTime.now(),
                                firstDate: DateTime(1900),
                                lastDate: DateTime(2100),
                              );
                              if (pickedDate != null) {
                                setState(() {
                                  dateOfBirth =
                                      "${pickedDate.day}/${pickedDate.month}/${pickedDate.year}";
                                  _dateController.text = dateOfBirth;
                                });
                              }
                            },
                          ),
                          ElevatedButton(
                            onPressed: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const HomeScreen())
                              );
                            }, 
                            style:ElevatedButton.styleFrom(
                              minimumSize: const Size(200, 40),
                              backgroundColor: Colors.deepOrange,
                            ),
                            child: const Text(
                              'Sign Up',
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
                              const Text('Already have an account? '),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => const LoginScreen(),
                                    ),
                                  );
                                },
                                child: const Text(
                                  'Log In!',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.deepOrange,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    
                  ),
                )
        
        
            ],),
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

