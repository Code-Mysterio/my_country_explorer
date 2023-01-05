import 'package:flutter/material.dart';
import 'package:my_country_explorer/utils/app_colors.dart';
import 'package:my_country_explorer/utils/app_textstyles.dart';

class HomePageButton extends StatelessWidget {
  final VoidCallback onTap;
  final IconData icons;
  final String data;
  const HomePageButton({
    Key? key,
    required this.onTap,
    required this.icons,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: AppColor.lightModeGreyColor),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Row(
          children: [
            Icon(icons),
            const SizedBox(
              width: 8,
            ),
            Text(
              data,
              style: AppTextStyle.boldBodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
