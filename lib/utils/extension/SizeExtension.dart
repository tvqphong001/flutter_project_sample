const heightDesign = 812.0;
const widthDesign = 375.0;

extension SizeExtension on double{
  double get toHPercent => this/heightDesign;

  double get toWPercent => this/widthDesign;
}