import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'calculator_bloc.dart';
import 'calculator_event.dart';
import 'calculator_state.dart';

class CalculatorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (BuildContext context) => CalculatorBloc()..add(InitEvent()),
      child: Builder(builder: (context) => _buildPage(context)),
    );
  }

  Widget _buildPage(BuildContext context) {
    final bloc = BlocProvider.of<CalculatorBloc>(context);
    TextEditingController number1 = TextEditingController();
    TextEditingController number2 = TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body:Column(
        children: [
          TextField(
            keyboardType: TextInputType.number,
            controller: number1,
            onChanged: (value) {
              bloc.add(GetNumbers(num1:  number1.text==""?double.parse("0"):double.parse(number1.text), num2: number2.text==""?double.parse("0"):double.parse(number2.text)));
            },
          ),
          TextField(
            onChanged: (value) {
              bloc.add(GetNumbers(num1:  number1.text==""?double.parse("0"):double.parse(number1.text), num2: number2.text==""?double.parse("0"):double.parse(number2.text)));
            },
            keyboardType: TextInputType.number,
            controller: number2,
          ),
          BlocBuilder<CalculatorBloc,CalculatorState>(builder: (context, state) {
            if(state is  Total){
              return Column(
                children: [
                  Text("Sum := ${state.sum}"),
                  Text("Sub := ${state.sub}"),
                  Text("Mul := ${state.mul}"),
                  Text("Div := ${state.div}"),
                ],
              );
            }


           return Text("");
          },),
          ElevatedButton(onPressed: () {
            bloc.add(GetNumbers(num1: double.parse(number1.text), num2:  double.parse(number2.text)));
          }, child: Text("Sum")) ,
        ],
      ),
    );
  }
}

