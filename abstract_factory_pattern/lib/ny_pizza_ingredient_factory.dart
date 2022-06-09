import 'package:abstract_factory_pattern/cheese.dart';
import 'package:abstract_factory_pattern/clams.dart';
import 'package:abstract_factory_pattern/dough.dart';
import 'package:abstract_factory_pattern/fresh_clams.dart';
import 'package:abstract_factory_pattern/garlic.dart';
import 'package:abstract_factory_pattern/marinara_sauce.dart';
import 'package:abstract_factory_pattern/mushroom.dart';
import 'package:abstract_factory_pattern/onion.dart';
import 'package:abstract_factory_pattern/pepperoni.dart';
import 'package:abstract_factory_pattern/pizza_ingredient_factory.dart';
import 'package:abstract_factory_pattern/red_pepper.dart';
import 'package:abstract_factory_pattern/reggiano_cheese.dart';
import 'package:abstract_factory_pattern/sauce.dart';
import 'package:abstract_factory_pattern/sliced_pepperoni.dart';
import 'package:abstract_factory_pattern/thin_crust_dough.dart';
import 'package:abstract_factory_pattern/veggies.dart';

class NYPizzaIngredientFactory implements PizzaIngredientFactory {
  @override
  Dough createDough() {
    return ThinCrustDough();
  }

  @override
  Sauce createSauce() {
    return MarinaraSauce();
  }

  @override
  Cheese createCheese() {
    return ReggianoCheese();
  }

  @override
  List<Veggies> createVeggies() {
    List<Veggies> veggies = [Garlic(), Onion(), Mushroom(), RedPepper()];
    return veggies;
  }

  @override
  Pepperoni createPepperoni() {
    return SlicedPepperoni();
  }

  @override
  Clams createClam() {
    return FreshClams();
  }
}
