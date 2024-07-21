import 'package:flutter/material.dart';

import '../model/post.dart';

class PostItem extends StatelessWidget {
  final Post post;

  const PostItem({super.key, required this.post});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 25.0,
              backgroundImage:  AssetImage(post.profilePicUrl),
            ),
            
            const SizedBox(
              width: 10,
            ),
            
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  post.accName,
                  style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text(
                  post.postTime,
                )
              ],
            ),
          ],
        ),
        const SizedBox(height: 10,),
        if (post.postText != null)
        Text(post.postText!),
            
        const SizedBox(height: 10,),

        if(post.postPicUrl != null )   
        Container(
          width: 450,
          height: 350,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(image:  AssetImage(post.postPicUrl!), fit: BoxFit.fill,),
          ),
        ),
            
        const SizedBox(height: 10,),
            
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Icon(Icons.thumb_up, color: Colors.grey),
            Icon(Icons.comment, color: Colors.grey),
            Icon(Icons.share, color: Colors.grey),
          ],
        ),
            
        const SizedBox(height: 10,),
      ],
    );
  }
}