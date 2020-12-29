import 'package:MeroPaisa/widgets/SvgImage.dart';
import 'package:flutter/widgets.dart';

class MyAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return // Custom Appbar
        Container(
            margin: EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SVGImage(
                  assets: 'assets/svg/drawer_icon.svg',
                  label: 'Sidebar Drawer',
                  height: 20.0,
                  width: 20.0,
                ),
                Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      image: DecorationImage(
                          image: AssetImage('assets/images/logo.png'))),
                )
              ],
            ));
  }
}
