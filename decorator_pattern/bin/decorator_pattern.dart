import 'package:decorator_pattern/beverages/beverage.dart';
import 'package:decorator_pattern/beverages/dark_roast.dart';
import 'package:decorator_pattern/beverages/espresso.dart';
import 'package:decorator_pattern/beverages/house_blend.dart';
import 'package:decorator_pattern/decorators/mocha.dart';
import 'package:decorator_pattern/decorators/soy.dart';
import 'package:decorator_pattern/decorators/whip.dart';

void main(List<String> arguments) {
  Beverage beverage = Espresso();
  print("${beverage.getDescribtion()} Total cost is \$${beverage.getCost()}");
  print("///////////////////////////");
  Beverage beverage2 = DarkRoast();
  beverage2 = Mocha(beverage2);
  beverage2 = Mocha(beverage2);
  beverage2 = Whip(beverage2);

  print("${beverage2.getDescribtion()} Total cost is \$${beverage2.getCost()}");

  Beverage beverage3 = HouseBlend();
  beverage3 = Soy(beverage3);
  beverage3 = Mocha(beverage3);
  beverage3 = Whip(beverage3);
  print("${beverage3.getDescribtion()} Total cost is \$${beverage3.getCost()}");
}
