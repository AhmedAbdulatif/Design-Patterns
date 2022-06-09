import 'package:factory_pattern/chicago_pizza_store.dart';
import 'package:factory_pattern/newyork_pizza_store.dart';
import 'package:factory_pattern/pizza.dart';
import 'package:factory_pattern/pizza_store.dart';

void main(List<String> arguments) {
  PizzaStore nyStore = NewyorkPizzaStore();
  PizzaStore chicagoStore = ChicagoPizzaStore();
  Pizza pizza = nyStore.orderPizza("cheese");
  print("Ethan ordered a ${pizza.getName()} ");
  pizza = chicagoStore.orderPizza("cheese");
  print("Joel ordered a ${pizza.getName()} ");
}
