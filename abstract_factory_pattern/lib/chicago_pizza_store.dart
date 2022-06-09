import 'package:abstract_factory_pattern/cheese_pizza.dart';
import 'package:abstract_factory_pattern/chicago_pizza_ingredient_factory.dart';
import 'package:abstract_factory_pattern/clam_pizza.dart';
import 'package:abstract_factory_pattern/pepperoni_pizza.dart';
import 'package:abstract_factory_pattern/pizza.dart';
import 'package:abstract_factory_pattern/pizza_ingredient_factory.dart';
import 'package:abstract_factory_pattern/pizza_store.dart';
import 'package:abstract_factory_pattern/veggie_pizza.dart';

class ChicagoPizzaStore extends PizzaStore {
  @override
  Pizza createPizza(String item) {
    Pizza pizza;
    PizzaIngredientFactory ingredientFactory = ChicagoPizzaIngredientFactory();

    if (item == "cheese") {
      pizza = CheesePizza(ingredientFactory);
      pizza.setName("Chicago Style Cheese Pizza");
    } else if (item == "veggie") {
      pizza = VeggiePizza(ingredientFactory);
      pizza.setName("Chicago Style Veggie Pizza");
    } else if (item == "clam") {
      pizza = ClamPizza(ingredientFactory);
      pizza.setName("Chicago Style Clam Pizza");
    } else if (item == "pepperoni") {
      pizza = PepperoniPizza(ingredientFactory);
      pizza.setName("Chicago Style Pepperoni Pizza");
    } else {
      pizza = CheesePizza(ingredientFactory);
    }
    return pizza;
  }
}
