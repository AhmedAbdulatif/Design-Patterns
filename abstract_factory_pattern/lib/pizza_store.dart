import 'package:abstract_factory_pattern/pizza.dart';

abstract class PizzaStore {
  Pizza createPizza(String item);

  Pizza orderPizza(String type) {
    Pizza pizza = createPizza(type);
    print("${"--- Making a ${pizza.getName()}"} ---");
    pizza.prepare();
    pizza.bake();
    pizza.cut();
    pizza.box();
    return pizza;
  }
}
