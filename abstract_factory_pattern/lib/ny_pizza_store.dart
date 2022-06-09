import 'package:abstract_factory_pattern/pepperoni_pizza.dart';
import 'package:abstract_factory_pattern/pizza.dart';
import 'package:abstract_factory_pattern/pizza_ingredient_factory.dart';
import 'package:abstract_factory_pattern/pizza_store.dart';
import 'package:abstract_factory_pattern/veggie_pizza.dart';
import 'package:abstract_factory_pattern/cheese_pizza.dart';
import 'package:abstract_factory_pattern/clam_pizza.dart';
import 'package:abstract_factory_pattern/ny_pizza_ingredient_factory.dart';

class NYPizzaStore extends PizzaStore {
  @override
  Pizza createPizza(String item) {
    Pizza pizza;
    PizzaIngredientFactory ingredientFactory = NYPizzaIngredientFactory();
    if (item == "cheese") {
      pizza = CheesePizza(ingredientFactory);
      pizza.setName("New York Style Cheese Pizza");
    } else if (item == "veggie") {
      pizza = VeggiePizza(ingredientFactory);
      pizza.setName("New York Style Veggie Pizza");
    } else if (item == "clam") {
      pizza = ClamPizza(ingredientFactory);
      pizza.setName("New York Style Clam Pizza");
    } else if (item == "pepperoni") {
      pizza = PepperoniPizza(ingredientFactory);
      pizza.setName("New York Style Pepperoni Pizza");
    } else {
      pizza = CheesePizza(ingredientFactory);
      pizza.setName("New York Style Cheese Pizza");
    }
    return pizza;
  }
}
