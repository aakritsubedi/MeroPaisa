import 'package:MeroPaisa/widgets/SvgImage.dart';
import 'package:flutter/widgets.dart';

class MyAppbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return // Custom Appbar
        Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    print('Drawer Tapped');
                  },
                  child: SVGImage(
                    assets: 'assets/svg/drawer_icon.svg',
                    label: 'Sidebar Drawer',
                    height: 20.0,
                    width: 20.0,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    print('Profile View');
                  },
                  child: Container(
                    height: 40.0,
                    width: 40.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                            image: AssetImage('assets/images/logo.png'))),
                  ),
                )
              ],
            ));
  }
}
