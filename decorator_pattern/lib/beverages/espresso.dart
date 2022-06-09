import 'package:decorator_pattern/beverages/beverage.dart';

class Espresso extends Beverage {
  Espresso() {
    description = "Espresso";
  }
  @override
  double getCost() {
    return 1.5;
  }
}
