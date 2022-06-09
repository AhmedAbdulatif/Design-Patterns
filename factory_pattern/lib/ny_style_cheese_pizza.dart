import 'package:factory_pattern/pizza.dart';

class NYStyleCheesePizza extends Pizza {
  NYStyleCheesePizza() {
    name = "NY Style Sauce and Cheese Pizza";
    dough = "Thin Crust Dough";
    sauce = "Marinara Sauce";
    toppings.add("Grated Reggiano Cheese");
  }
}
