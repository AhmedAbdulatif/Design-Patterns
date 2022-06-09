import 'package:decorator_pattern/beverages/beverage.dart';
import 'package:decorator_pattern/decorators/condiment_decorator.dart';

class Milk extends CondimentDecorator {
  Milk(Beverage beverage) {
    this.beverage = beverage;
  }
  @override
  double getCost() {
    return beverage.getCost() + 0.5;
  }

  @override
  String getDescribtion() {
    return "${beverage.getDescribtion()} , Milk";
  }
}
