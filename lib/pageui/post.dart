import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:socail_media/model/post_model.dart';
import 'package:socail_media/text.dart';

class PostPage extends StatefulWidget {
  const PostPage({Key? key}) : super(key: key);

  @override
  _PostPageState createState() => _PostPageState();
}

class _PostPageState extends State<PostPage> {
  final postItem = PostModel.postList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: ListView.separated(itemBuilder: (context,index){

        var list =postItem[index];
        return Stack(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              child: Container(
                width: MediaQuery.of(context).size.width,
                 height: MediaQuery.of(context).size.height/2.8,

                decoration: BoxDecoration(

                ),
                child: Image.network(list.img_cover,

                  fit: BoxFit.cover),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Column(
                        children: [
                          Column(
                            children: [
                              Icon(Icons.favorite,color: Colors.red,size: 30,),
                              Text(list.like,style: poppins,),
                            ],
                          ),
                          SizedBox(height: 20,),
                          Column(
                            children: [
                              Icon(Icons.chat_bubble,color: Colors.white,size: 30,),
                              Text(list.comment,style: GoogleFonts.poppins(color: Colors.white),),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

              ],
            ),

            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              height: 100,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.black26,
                ),

                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(flex: 1,child: CircleAvatar(
                        radius: 35,
                        backgroundImage: NetworkImage(list.img),

                      )),
                      Expanded(flex: 3,child: Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(list.subtitle,style: poppins_thin,),

                            Text(list.name,style: poppins_bold,),
                          ],
                        ),
                      )),

                      Expanded(flex: 1,child: Column(

                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [

                          Padding(
                            padding: const EdgeInsets.only(right: 5,bottom: 5),
                            child: Text(list.time,style: poppins_thin,),
                          ),
                        ],
                      ))
                    ],


                  ),
                ),





              ),
            ),

          ],
        );

      },

          separatorBuilder: (context,index){
            return SizedBox(height: 10,);
          },

          itemCount: postItem.length)

    );
  }
}
