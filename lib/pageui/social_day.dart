import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:socail_media/model/day_model.dart';

class SocialDayPage extends StatefulWidget {
  const SocialDayPage({Key? key}) : super(key: key);

  @override
  _SocialDayPageState createState() => _SocialDayPageState();
}

class _SocialDayPageState extends State<SocialDayPage> {
  final dayList = DayModel.dayList();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            var list = dayList[index];

        return InkWell(
          splashColor: Colors.white,
          onTap: (){
          },
          child: Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              border: Border.all(color: Colors.blueAccent,width: 2),
              shape: BoxShape.circle,
            ),
            child: CircleAvatar(
              backgroundImage: NetworkImage(list.img),
            ),
          ),
        );
      },
        separatorBuilder: (context,index){
        return SizedBox(width: 6,);
        },

        itemCount: dayList.length)


    );
  }
}
