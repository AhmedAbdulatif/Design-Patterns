import 'package:decorator_pattern/beverages/beverage.dart';
import 'package:decorator_pattern/decorators/condiment_decorator.dart';

class Mocha extends CondimentDecorator {
  Mocha(Beverage beverage) {
    this.beverage = beverage;
    print("Mocka constructor ${beverage.getDescribtion()}");
  }
  @override
  double getCost() {
    return beverage.getCost() + 1.2;
  }

  @override
  String getDescribtion() {
    return "${beverage.getDescribtion()} , Mocha";
  }
}
