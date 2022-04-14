class PostModel {
  String name;
  String subtitle;
  String like;
  String comment;
  String img;
  String img_cover;
  String time;

  PostModel(this.name, this.subtitle, this.like, this.comment, this.img,
      this.img_cover,this.time);


 static List<PostModel>postList(){
    return[
      PostModel("MD Sohagh", "I am trying to get a container to be exactly half the screen", "10K", "632",
          "https://images4.fanpop.com/image/user_images/2395000/babygurl92-2395200_900_675.jpg",
          "https://cdn.pixabay.com/photo/2020/06/01/22/23/eye-5248678__340.jpg","3 min ago"),

      PostModel("Rasel", "I am trying to get a half the screen", "20K", "232",
          "https://images4.fanpop.com/image/user_images/2395000/babygurl92-2395200_900_675.jpg",
          "https://images4.fanpop.com/image/user_images/2395000/babygurl92-2395200_900_675.jpg","10 min ago"),

      PostModel("MD Sajal", " to be exactly half the screen", "15K", "445",
          "https://images4.fanpop.com/image/user_images/2395000/babygurl92-2395200_900_675.jpg",
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbrvOZf5zaHg_9a8upGltfVtObFu_0QH1rcw&usqp=CAU","30 min ago"),

      PostModel("Mehedi", "I am trying to get a container to be exactly half the screen", "5K", "432",
          "https://images4.fanpop.com/image/user_images/2395000/babygurl92-2395200_900_675.jpg",
          "https://images.unsplash.com/photo-1530083271320-8b3a0f7b31a8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGZvb3RzdGVwc3xlbnwwfHwwfHw%3D&w=1000&q=80","5 min ago"),

      PostModel("Rana", "subtitle", "100K", "463",
          "https://images4.fanpop.com/image/user_images/2395000/babygurl92-2395200_900_675.jpg",
          "https://images4.fanpop.com/image/user_images/2395000/babygurl92-2395200_900_675.jpg","1h ago"),
    ];
}

}
