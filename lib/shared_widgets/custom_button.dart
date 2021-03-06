import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:restaurant/constants/colors.dart';
import 'package:restaurant/constants/dimensions.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    Key? key,
    this.onTap,
    required this.title,
    this.icon,
    this.backgroundColor,
  }) : super(key: key);
  final VoidCallback? onTap;
  final String title;
  final FaIcon? icon;
  final Color? backgroundColor;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ElevatedButton(
      onPressed: onTap,
      style: TextButton.styleFrom(
        backgroundColor: backgroundColor ?? kOrangeColor,
        minimumSize: Size(size.width, 40),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(defaultRadius),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          if (icon != null)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: smallPadding),
              child: icon!,
            ),
          Text(
            title,
            style: const TextStyle(color: kWhiteColor),
          ),
        ],
      ),
    );
  }
}
