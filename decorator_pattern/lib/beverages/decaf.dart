import 'package:decorator_pattern/beverages/beverage.dart';

class Decaf extends Beverage {
  Decaf() {
    description = "Decaf";
  }
  @override
  double getCost() {
    return 3.0;
  }
}
