import 'package:abstract_factory_pattern/cheese.dart';
import 'package:abstract_factory_pattern/clams.dart';
import 'package:abstract_factory_pattern/dough.dart';
import 'package:abstract_factory_pattern/pepperoni.dart';
import 'package:abstract_factory_pattern/sauce.dart';
import 'package:abstract_factory_pattern/veggies.dart';

abstract class Pizza {
  late String name;
  late Dough dough;
  late Sauce sauce;
  late List<Veggies> veggies;
  late Cheese cheese;
  late Pepperoni pepperoni;
  late Clams clam;

  void prepare();

  void bake() {
    print("Bake for 25 minutes at 350");
  }

  void cut() {
    print("Cutting the pizza into diagonal slices");
  }

  void box() {
    print("Place pizza in official PizzaStore box");
  }

  void setName(String name) {
    this.name = name;
  }

  String getName() {
    return name;
  }

  String toStringMethod() {
    StringBuffer result = StringBuffer();
    result.write("---- $name ----\n");
    result.write(dough);
    result.write("\n");
    result.write(sauce);
    result.write("\n");
    result.write(cheese);
    result.write("\n");
    for (int i = 0; i < veggies.length; i++) {
      result.write(veggies[i]);
      if (i < veggies.length - 1) {
        result.write(", ");
      }
    }
    result.write("\n");
    result.write(clam);
    result.write("\n");
    result.write(pepperoni);
    result.write("\n");
    return result.toString();
  }
}
