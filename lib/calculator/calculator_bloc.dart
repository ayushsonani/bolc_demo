import 'package:bloc/bloc.dart';

import 'calculator_event.dart';
import 'calculator_state.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  CalculatorBloc() : super(CalculatorState().init()) {
    on<InitEvent>((event, emit) {
      print("hello start this app");
    },);
    on<GetNumbers>((event, emit) {
      double sum=  event.num1 + event.num2;
      double sub=  event.num1 - event.num2;
      double mul=  event.num1 * event.num2;
      double div=  event.num1 / event.num2;

      emit(Total(sum:sum,sub: sub,mul: mul,div: div));
    },
    );
  }


  void _init(InitEvent event, Emitter<CalculatorState> emit) async {
    emit(state.clone());
  }
}
