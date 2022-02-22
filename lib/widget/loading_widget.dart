import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../utils/colors/colors.dart';

bool isLoading = false;

void showLoading() {
  if (isLoading) return;
  isLoading = true;
  showDialog(
      context: Get.context!,
      barrierColor: Colors.transparent,
      builder: (context) {
        return const Loading();
      });
}

void hideLoading() {
  if (isLoading) {
    isLoading = false;
    Get.back();
  }
}

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Dialog(
        backgroundColor: Colors.transparent,
        elevation: 0,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
              child: const SizedBox(
                height: 40,
                width: 40,
                child: CircularProgressIndicator(
                  strokeWidth: 5,
                  valueColor: AlwaysStoppedAnimation<Color>(ColorsApp.gray),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class LoadingWidget extends StatelessWidget {
  const LoadingWidget();
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      child: Center(
        child: SizedBox(
            height: 40,
            width: 40,
            child: CircularProgressIndicator(
              strokeWidth: 5,
              valueColor: AlwaysStoppedAnimation<Color>(ColorsApp.gray),
            )),
      ),
    );
  }
}

class LoadingMoreWidget extends StatelessWidget {
  const LoadingMoreWidget();
  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(5.0),
      child: Center(
        child: SizedBox(
          height: 30,
          width: 30,
          child: CircularProgressIndicator(
            strokeWidth: 5,
            valueColor: AlwaysStoppedAnimation<Color>(ColorsApp.gray),
          ),
        ),
      ),
    );
  }
}

// class Loading2 extends StatefulWidget {
//   Loading2({Key? key}) : super(key: key);
//
//   @override
//   _Loading2State createState() => _Loading2State();
// }
//
// class _Loading2State extends State<Loading2> {
//   late RiveAnimationController _controller;
//   @override
//   void initState() {
//     _controller = SimpleAnimation('Animation 1');
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     _controller.dispose();
//     super.dispose();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return WillPopScope(
//       onWillPop: () async {
//         return false;
//       },
//       child: Dialog(
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         child: Column(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             BackdropFilter(
//               filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
//               child: SizedBox(
//                 height: 60,
//                 width: 60,
//                 child: RiveAnimation.asset(loadingAnim, controllers: [_controller]),
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
