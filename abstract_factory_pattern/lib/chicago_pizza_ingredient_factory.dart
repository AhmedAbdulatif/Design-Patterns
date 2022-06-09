import 'package:abstract_factory_pattern/thick_crust_dough.dart';
import 'package:abstract_factory_pattern/black_olives.dart';
import 'package:abstract_factory_pattern/cheese.dart';
import 'package:abstract_factory_pattern/clams.dart';
import 'package:abstract_factory_pattern/dough.dart';
import 'package:abstract_factory_pattern/eggplant.dart';
import 'package:abstract_factory_pattern/frozen_clams.dart';
import 'package:abstract_factory_pattern/mozzarella_cheese.dart';
import 'package:abstract_factory_pattern/pepperoni.dart';
import 'package:abstract_factory_pattern/pizza_ingredient_factory.dart';
import 'package:abstract_factory_pattern/plum_tomato_sauce.dart';
import 'package:abstract_factory_pattern/sauce.dart';
import 'package:abstract_factory_pattern/sliced_pepperoni.dart';
import 'package:abstract_factory_pattern/spinach.dart';
import 'package:abstract_factory_pattern/veggies.dart';

class ChicagoPizzaIngredientFactory implements PizzaIngredientFactory {
  @override
  Dough createDough() {
    return ThickCrustDough();
  }

  @override
  Sauce createSauce() {
    return PlumTomatoSauce();
  }

  @override
  Cheese createCheese() {
    return MozzarellaCheese();
  }

  @override
  List<Veggies> createVeggies() {
    List<Veggies> veggies = [BlackOlives(), Spinach(), Eggplant()];
    return veggies;
  }

  @override
  Pepperoni createPepperoni() {
    return SlicedPepperoni();
  }

  @override
  Clams createClam() {
    return FrozenClams();
  }
}
