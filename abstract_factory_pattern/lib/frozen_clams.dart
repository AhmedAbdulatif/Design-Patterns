import 'package:abstract_factory_pattern/clams.dart';

class FrozenClams implements Clams {
  @override
  String toStringMethod() {
    return "Frozen Clams from Chesapeake Bay";
  }
}
