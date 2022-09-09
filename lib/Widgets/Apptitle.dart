import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokeball_vericekme_responsive/constants/Constans.dart';

class Apptitle extends StatelessWidget {
  const Apptitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Constans.PortraitandHorizantal(0.13.sh, 0.2.sh),
      child: Padding(
        padding: Constans.GlobalPaddingLeft(),
        child: Stack(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                "Pokemon",
                style: Constans.appTitleTextStyle(),
              ),
            ),
            Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  width: Constans.PortraitandHorizantal(150.w, 150.h),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.cover,
                          image: AssetImage("images/pokeball.png"))),
                ))
          ],
        ),
      ),
    );
  }
}
