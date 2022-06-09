import 'package:factory_pattern/pizza.dart';
import 'package:factory_pattern/pizza_store.dart';

import 'ny_style_cheese_pizza.dart';

class NewyorkPizzaStore extends PizzaStore {
  @override
  Pizza createPizza(String type) {
    if (type == "cheese") {
      return NYStyleCheesePizza();
    } else if (type == "veggie") {
      return NYStyleVeggiePizza();
    } else if (type == "clam") {
      return NYStyleClamPizza();
    } else if (type == "pepperoni") {
      return NYStylePepperoniPizza();
    } else {
      return NYStyleCheesePizza();
    }
  }
}

class NYStylePepperoniPizza extends Pizza {
  NYStylePepperoniPizza() {
    name = "NY Style Pepperoni Pizza";
    dough = "Thin Crust Dough";
    sauce = "Marinara Sauce";

    toppings.add("Grated Reggiano Cheese");
    toppings.add("Sliced Pepperoni");
    toppings.add("Garlic");
    toppings.add("Onion");
    toppings.add("Mushrooms");
    toppings.add("Red Pepper");
  }
}

class NYStyleClamPizza extends Pizza {
  NYStyleClamPizza() {
    name = "NY Style Clam Pizza";
    dough = "Thin Crust Dough";
    sauce = "Marinara Sauce";

    toppings.add("Grated Reggiano Cheese");
    toppings.add("Fresh Clams from Long Island Sound");
  }
}

class NYStyleVeggiePizza extends Pizza {
  NYStyleVeggiePizza() {
    name = "NY Style Veggie Pizza";
    dough = "Thin Crust Dough";
    sauce = "Marinara Sauce";

    toppings.add("Grated Reggiano Cheese");
    toppings.add("Garlic");
    toppings.add("Onion");
    toppings.add("Mushrooms");
    toppings.add("Red Pepper");
  }
}
