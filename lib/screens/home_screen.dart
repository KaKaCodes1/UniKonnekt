import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../model/post.dart';
import '../widgets/ads_slider.dart';
import '../widgets/bottomnavbar.dart';
import '../widgets/drawer_menu.dart';
import '../widgets/post_item.dart';
// import 'package:carousel_slider/carousel_slider.dart';
// import '../widgets/image_in_slider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
    /*A GlobalKey<ScaffoldState> is used to control the Scaffold. 
  This key allows you to access and manipulate the state of the Scaffold, including opening and closing the drawer.*/
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  final List<Post> posts = [
    Post(
      profilePicUrl: 'assets/images/plp.jpeg', 
      postTime: '2h ago', 
      accName: 'Power Learn Project',
      postPicUrl: 'assets/images/mentalhealth.jpeg',
      postText: 'We invite you to the Mental Health webnar as we discuss how to handle burn out as a techie. Dr. Ruth Goma, a Developmental Psychologist will lead the conversation',
    ),

    Post(
      profilePicUrl: 'assets/images/alx.jpeg', 
      accName: 'ALX', 
      postTime: '1h ago',
      // postPicUrl: null,
      postText: 'Are you interested in joining our Mentorship program as a Mentor? Visit our website to find out more about it.'
    ),
      
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const DrawerMenu(),
      backgroundColor: const Color.fromARGB(255, 239, 230, 230),
      body: SafeArea(
        child: ListView(
          children:  [
            Container(              
              // decoration: const BoxDecoration(
              //   borderRadius: BorderRadius.only(
              //     bottomLeft: Radius.circular(10),
              //     bottomRight: Radius.circular(10),
              //   ),
              //   color: Color.fromARGB(255, 206, 198, 198), 
              // ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () {
                      _scaffoldKey.currentState?.openDrawer();
                    },
                    child: const CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage('assets/images/me.jpg'),
                                     
                    ),
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
                    icon: const Icon(CupertinoIcons.text_bubble, size: 35,color: Colors.black,),
                    )
                ],      
              ),
            ),
            
            const SizedBox(height: 10,),
        
            //This contains my image sliders
            const Padding(
              padding: EdgeInsets.all(13.0),
              child: AdsSlider(),
            ),
        
            // const Center(
            //   child: Row(
            //     mainAxisSize: MainAxisSize.min,
            //     children: [
            //       FeaturesIcon(title: 'Events', imageUrl: 'assets/images/1.png',),
              
            //       FeaturesIcon(title: 'Mentors', imageUrl: 'assets/images/2.png',),
              
            //       FeaturesIcon(title: 'Mental Health', imageUrl: 'assets/images/3.png',),
            //     ],
            //   ),
            // ),
        
            Padding(
              padding: const EdgeInsets.all(13),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: posts.length,
                itemBuilder: (context, index) {
                  return PostItem(post: posts[index],);
                },
              ),
            ),
          ],
        ),
      ),
      
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}






// class FeaturesIcon extends StatelessWidget {
//   const FeaturesIcon({
//     super.key, 
//     required this.title, 
//     required this.imageUrl,
//   });
//   final String title;
//   final String imageUrl;

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(right: 25.0),
//       child: Column(
//         children: [
//           CircleAvatar(
//             radius: 30,
//             backgroundImage: AssetImage(imageUrl),
//           ),
//           Text(
//             title,
//             style: const TextStyle(
//               fontSize: 10,
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

