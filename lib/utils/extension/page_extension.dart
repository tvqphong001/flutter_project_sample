import 'package:flutter/material.dart';

extension PageExtension on PageController{
  void toPage(int page){
    animateToPage(page, duration: const Duration(milliseconds: 350), curve: Curves.easeIn);
  }
}