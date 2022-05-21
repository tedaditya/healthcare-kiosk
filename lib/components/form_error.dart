import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:healthcare_kiosk/size_config.dart';

class FormError extends StatelessWidget {
  const FormError({
    Key key,
    @required this.errors,
  }) : super(key: key);

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
          errors.length, (index) => formErrorText(error: errors[index])),
    );
  }

  Row formErrorText({String error}) {
    return Row(
      children: [
        SvgPicture.asset(
          "assets/icons/bx-x-circle.svg",
          color: Colors.red,
          height: getProportionateScreenWidth(14),
          width: getProportionateScreenWidth(14),
        ),
        Text(error),
      ],
    );
  }
}