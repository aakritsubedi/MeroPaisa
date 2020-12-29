import 'package:MeroPaisa/constants/colorConstant.dart';
import 'package:flutter/widgets.dart';

class Welcome extends StatelessWidget {

  final user;

  Welcome({ this.user });

  final now = new DateTime.now();
  String greetings () {
    int time = int.parse(now.toString().split(" ")[1].split(":")[0]);
    time = 8;
    if(time > 17) {
      return 'Good Evening';
    }
    else if(time < 17 && time >= 12) {
      return 'Good Afternoon';
    }
    else {
      return 'Good Morning';
    }
  }  

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(greetings(), style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w400, color: kBlackColor)),
          Text(user ?? 'Mero Paisa', style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.w700, color: kBlackColor))
        ],
      )
    );
  }
}