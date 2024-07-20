import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../widgets/image_in_slider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 239, 230, 230),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: ListView(
            children:  [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/images/me.jpg'),
                                   
                  ),

                  SizedBox(
                    width: 260,
                    height: 50,
                    child: TextField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        hintText: 'Search',
                        prefixIcon: const Icon(
                          CupertinoIcons.search,
                          size: 30,
                        ),
                        suffixIcon: IconButton(
                          onPressed: (){}, 
                          icon: const Icon(
                            CupertinoIcons.clear_circled_solid,
                            ), 
                        ),
                      ),
                    ),
                  ),
        
                  // const CircleAvatar(
                  //   radius: 25,
                  //   backgroundColor:  Color.fromARGB(255, 180, 175, 175),
                  //   // child: Icon(Icons.message_outlined,size: 30,),
                  //   child: Icon(CupertinoIcons.text_bubble, size: 30,),
                  // ),

                  IconButton(
                    onPressed: (){}, 
                    icon: const Icon(CupertinoIcons.text_bubble, size: 35,),
                    )
                ],      
              ),
              
              const SizedBox(height: 10,),

              Padding(
                padding: const EdgeInsets.all(13.0),
                child: ImageInSlider(imageUrl: 'assets/images/mentalhealth.jpeg',),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

