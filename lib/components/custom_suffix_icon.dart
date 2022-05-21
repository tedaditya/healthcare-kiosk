import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:healthcare_kiosk/constants.dart';
import 'package:healthcare_kiosk/size_config.dart';

class CustomSuffixIcon extends StatelessWidget {
  const CustomSuffixIcon({
    Key key,
    @required this.svgIcon,
  }) : super(key: key);

  final String svgIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        getProportionateScreenWidth(16),
        getProportionateScreenWidth(16),
        getProportionateScreenWidth(16),
      ),
      child: SvgPicture.asset(
        svgIcon,
        height: getProportionateScreenWidth(28),
        color: kGray5,
      ),
    );
  }
}
