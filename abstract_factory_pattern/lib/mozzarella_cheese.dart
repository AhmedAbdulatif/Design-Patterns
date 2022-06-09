import 'package:abstract_factory_pattern/cheese.dart';

class MozzarellaCheese implements Cheese {
  @override
  String toStringMethod() {
    return "Shredded Mozzarella";
  }
}
