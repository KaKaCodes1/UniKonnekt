class Post {
  final String profilePicUrl;
  final String accName;
  final String postTime;
  final String? postText;
  final String? postPicUrl;  
  final bool isImageAsset;

    Post({
    required this.profilePicUrl, 
    required this.accName, 
    required this.postTime, 
    this.postText, 
    this.postPicUrl,
    this.isImageAsset = true, 
  });


}