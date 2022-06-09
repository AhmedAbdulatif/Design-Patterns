import 'package:abstract_factory_pattern/pizza.dart';
import 'package:abstract_factory_pattern/pizza_ingredient_factory.dart';

class VeggiePizza extends Pizza {
  PizzaIngredientFactory ingredientFactory;

  VeggiePizza(this.ingredientFactory);

  @override
  void prepare() {
    print("Preparing $name");
    dough = ingredientFactory.createDough();
    sauce = ingredientFactory.createSauce();
    cheese = ingredientFactory.createCheese();
    veggies = ingredientFactory.createVeggies();
  }
}
