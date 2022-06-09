import 'package:decorator_pattern/beverages/beverage.dart';
import 'package:decorator_pattern/decorators/condiment_decorator.dart';

class Soy extends CondimentDecorator {
  Soy(Beverage beverage) {
    this.beverage = beverage;
  }
  @override
  double getCost() {
    return beverage.getCost() + 0.7;
  }

  @override
  String getDescribtion() {
    return "${beverage.getDescribtion()} , Soy";
  }
}
