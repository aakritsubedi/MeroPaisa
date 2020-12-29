import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';

class SVGImage extends StatelessWidget {

  final String assets;
  final String label;
  final double height;
  final double width;

  SVGImage({ this.assets, this.label, this.height, this.width });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(assets,
        semanticsLabel: label,
        height: height, width: width,);
  }
}