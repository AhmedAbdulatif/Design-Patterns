import 'package:decorator_pattern/beverages/beverage.dart';
import 'package:decorator_pattern/decorators/condiment_decorator.dart';

class Whip extends CondimentDecorator {
  Whip(Beverage beverage) {
    this.beverage = beverage;
  }
  @override
  double getCost() {
    return beverage.getCost() + 0.4;
  }

  @override
  String getDescribtion() {
    return "${beverage.getDescribtion()} , Whip";
  }
}
