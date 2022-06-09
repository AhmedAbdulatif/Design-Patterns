import 'package:decorator_pattern/beverages/beverage.dart';

class HouseBlend extends Beverage {
  HouseBlend() {
    description = "HouseBlend";
  }
  @override
  double getCost() {
    return 1.0;
  }
}
