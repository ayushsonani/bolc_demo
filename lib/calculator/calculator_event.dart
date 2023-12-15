abstract class CalculatorEvent {}

class InitEvent extends CalculatorEvent {}

class GetNumbers extends CalculatorEvent {
  double num1=0;
  double num2=0;
  GetNumbers({required this.num1, required this.num2});
}