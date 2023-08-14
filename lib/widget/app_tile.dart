import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:poke_dex/constant/const.dart';
import 'package:poke_dex/constant/ui_helper.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({super.key});

  @override
  Widget build(BuildContext context) {
    String pathImg = './images/pokeball.png';

    return SizedBox(
      height: UIHelper.getAppTitleWidgetHeight(),
      child: Stack(
        children: [
          Padding(
            padding: UIHelper.getDefaultPadding(),
            child: Align(
              child: Text(
                Constants.title,
                style: Constants.getTitleTextStyle(),
              ),
              alignment: Alignment.centerLeft,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Image.asset(
              pathImg,
              width: ScreenUtil().orientation == Orientation.portrait
                  ? 0.2.sh
                  : 0.2.sw,
              fit: BoxFit.fitWidth,
            ),
          ),
        ],
      ),
    );
  }
}
