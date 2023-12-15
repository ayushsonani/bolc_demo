class CalculatorState {
  CalculatorState init() {
    return CalculatorState();
  }

  CalculatorState clone() {
    return CalculatorState();
  }
}

class Total extends CalculatorState{
  double sum,sub,mul,div;
  Total({required this.sum,required this.sub,required this.mul,required this.div});
}

