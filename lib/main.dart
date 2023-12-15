import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'calculator/calculator_view.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: CalculatorPage(),
  ));
}
