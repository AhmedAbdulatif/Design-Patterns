import 'package:decorator_pattern/beverages/beverage.dart';

class DarkRoast extends Beverage {
  DarkRoast() {
    description = "DarkRoast";
  }
  @override
  double getCost() {
    return 2.0;
  }
}
