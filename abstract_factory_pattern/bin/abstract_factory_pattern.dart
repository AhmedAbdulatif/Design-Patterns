import 'package:abstract_factory_pattern/chicago_pizza_store.dart';
import 'package:abstract_factory_pattern/ny_pizza_store.dart';
import 'package:abstract_factory_pattern/pizza.dart';
import 'package:abstract_factory_pattern/pizza_store.dart';

void main(List<String> arguments) {
  PizzaStore nyStore = NYPizzaStore();
  PizzaStore chicagoStore = ChicagoPizzaStore();

  Pizza pizza = nyStore.orderPizza("cheese");
  print("${"Ethan ordered a ${pizza.name}"}\n");

  pizza = chicagoStore.orderPizza("cheese");
  print("Joel ordered a ${pizza.name}\n");

  pizza = nyStore.orderPizza("clam");
  print("Ethan ordered a ${pizza.name}\n");

  pizza = chicagoStore.orderPizza("clam");
  print("Joel ordered a ${pizza.name}\n");

  pizza = nyStore.orderPizza("pepperoni");
  print("Ethan ordered a ${pizza.name}\n");

  pizza = chicagoStore.orderPizza("pepperoni");
  print("Joel ordered a ${pizza.name}\n");

  pizza = nyStore.orderPizza("veggie");
  print("Ethan ordered a ${pizza.name}\n");

  pizza = chicagoStore.orderPizza("veggie");
  print("Joel ordered a ${pizza.name}\n");
}
