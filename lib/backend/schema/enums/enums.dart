import 'package:collection/collection.dart';

enum Types {
  Cat,
  Dog,
  Fish,
  Bird,
  Rabbit,
  Reptile,
  Hamster,
  Poultry,
}

enum Gender {
  Male,
  Female,
}

enum Yn {
  Yes,
  No,
}

extension FFEnumExtensions<T extends Enum> on T {
  String serialize() => name;
}

extension FFEnumListExtensions<T extends Enum> on Iterable<T> {
  T? deserialize(String? value) =>
      firstWhereOrNull((e) => e.serialize() == value);
}

T? deserializeEnum<T>(String? value) {
  switch (T) {
    case (Types):
      return Types.values.deserialize(value) as T?;
    case (Gender):
      return Gender.values.deserialize(value) as T?;
    case (Yn):
      return Yn.values.deserialize(value) as T?;
    default:
      return null;
  }
}
