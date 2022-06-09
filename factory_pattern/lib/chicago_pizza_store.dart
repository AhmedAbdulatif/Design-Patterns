import 'package:factory_pattern/chicago_style_cheese_pizza.dart';
import 'package:factory_pattern/pizza.dart';
import 'package:factory_pattern/pizza_store.dart';

class ChicagoPizzaStore extends PizzaStore {
  @override
  Pizza createPizza(String type) {
    if (type == "cheese") {
      return ChicagoStyleCheesePizza();
    } else if (type == "veggie") {
      return ChicagoStyleVeggiePizza();
    } else if (type == "clam") {
      return ChicagoStyleClamPizza();
    } else if (type == "pepperoni") {
      return ChicagoStylePepperoniPizza();
    } else {
      return ChicagoStyleCheesePizza();
    }
  }
}

class ChicagoStylePepperoniPizza extends Pizza {
  ChicagoStylePepperoniPizza() {
    name = "Chicago Style Pepperoni Pizza";
    dough = "Extra Thick Crust Dough";
    sauce = "Plum Tomato Sauce";

    toppings.add("Shredded Mozzarella Cheese");
    toppings.add("Black Olives");
    toppings.add("Spinach");
    toppings.add("Eggplant");
    toppings.add("Sliced Pepperoni");
  }

  @override
  void cut() {
    print("Cutting the pizza into square slices");
  }
}

class ChicagoStyleClamPizza extends Pizza {
  ChicagoStyleClamPizza() {
    name = "Chicago Style Clam Pizza";
    dough = "Extra Thick Crust Dough";
    sauce = "Plum Tomato Sauce";

    toppings.add("Shredded Mozzarella Cheese");
    toppings.add("Frozen Clams from Chesapeake Bay");
  }

  @override
  void cut() {
    print("Cutting the pizza into square slices");
  }
}

class ChicagoStyleVeggiePizza extends Pizza {
  ChicagoStyleVeggiePizza() {
    name = "Chicago Deep Dish Veggie Pizza";
    dough = "Extra Thick Crust Dough";
    sauce = "Plum Tomato Sauce";

    toppings.add("Shredded Mozzarella Cheese");
    toppings.add("Black Olives");
    toppings.add("Spinach");
    toppings.add("Eggplant");
  }

  @override
  void cut() {
    print("Cutting the pizza into square slices");
  }
}
