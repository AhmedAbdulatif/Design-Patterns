abstract class Pizza {
  String? name;
  String? dough;
  String? sauce;
  List<String> toppings = [];

  void prepare() {
    print("Preparing $name");
    print("Tossing dough...");
    print("Adding sauce...");
    print("Adding toppings: ");
    for (String topping in toppings) {
      print("  $topping");
    }
  }

  void bake() {
    print("Bake for 25 minutes at 350");
  }

  void cut() {
    print("Cutting the pizza into diagonal slices");
  }

  void box() {
    print("Place pizza in official PizzaStore box");
  }

  String getName() {
    return name!;
  }
}
