import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../constants/assets_path.dart';
import '../utils/helpers/sreen_helper.dart';

class MyAppBar extends StatelessWidget {
  final String pathIconLeft;
  final String pathIconRight;
  final String text;
  final VoidCallback? leftTap;
  final VoidCallback? rightTap;
  final bool visibleLeft;
  final bool visibleRight;
  final bool noStatusBar;
  final double? heightIconRight;
  final double? heightIconLeft;
  final double paddingRight;
  const MyAppBar(
      {Key? key,
      this.pathIconLeft = ic_arrow_back,
      this.pathIconRight = ic_arrow_next,
      this.text = "",
      this.leftTap,
      this.rightTap,
      this.visibleLeft = true,
      this.visibleRight = false,
      this.noStatusBar = false,
      this.heightIconLeft,
      this.heightIconRight,
      this.paddingRight = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final statusBar = noStatusBar ? 0.0 : Screen.statusBar;
    return SizedBox(
      height: 69 + statusBar,
      width: double.infinity,
      child: Column(
        children: [
          SizedBox(
            height: statusBar,
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                !visibleRight && !visibleLeft
                    ? const SizedBox()
                    : visibleLeft
                        ? SizedBox(
                            height: 40,
                            width: 40,
                            child: MaterialButton(
                              padding: const EdgeInsets.all(0),
                              child: heightIconLeft != null
                                  ? SvgPicture.asset(
                                      pathIconLeft,
                                      height: heightIconLeft,
                                    )
                                  : SvgPicture.asset(
                                      pathIconLeft,
                                    ),
                              onPressed: () {
                                if (leftTap == null) {
                                  Get.back();
                                  return;
                                }
                                leftTap!();
                              },
                            ),
                          )
                        : const SizedBox(
                            width: 40,
                            height: 40,
                          ),
                Expanded(
                  child: Tooltip(
                    message: text,
                    verticalOffset: 30,
                    textStyle: Theme.of(context).textTheme.headline6!.copyWith(color: Colors.white, fontSize: 15),
                    child: Center(
                      child: Text(
                        text,
                        style: Theme.of(context).textTheme.headline6,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ),
                ),
                !visibleRight && !visibleLeft
                    ? const SizedBox()
                    : visibleRight
                        ? Padding(
                            padding: EdgeInsets.only(right: paddingRight),
                            child: SizedBox(
                              height: 40,
                              width: 40,
                              child: MaterialButton(
                                padding: const EdgeInsets.all(0),
                                child: pathIconRight.isEmpty ? const SizedBox() : heightIconRight != null
                                    ? SvgPicture.asset(
                                        pathIconRight,
                                        height: heightIconRight,
                                      )
                                    : SvgPicture.asset(
                                        pathIconRight,
                                      ),
                                onPressed: () {
                                  if (rightTap == null) return;
                                  rightTap!();
                                },
                              ),
                            ),
                          )
                        : const SizedBox(
                            width: 40,
                            height: 40,
                          )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
