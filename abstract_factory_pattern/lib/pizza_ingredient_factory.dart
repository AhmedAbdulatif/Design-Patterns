import 'package:abstract_factory_pattern/cheese.dart';
import 'package:abstract_factory_pattern/clams.dart';
import 'package:abstract_factory_pattern/dough.dart';
import 'package:abstract_factory_pattern/pepperoni.dart';
import 'package:abstract_factory_pattern/sauce.dart';
import 'package:abstract_factory_pattern/veggies.dart';

abstract class PizzaIngredientFactory {
  Dough createDough();
  Sauce createSauce();
  Cheese createCheese();
  List<Veggies> createVeggies();
  Pepperoni createPepperoni();
  Clams createClam();
}
