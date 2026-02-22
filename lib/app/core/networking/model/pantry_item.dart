import 'package:freezed_annotation/freezed_annotation.dart';

part 'pantry_item.freezed.dart';
part 'pantry_item.g.dart';

/// Categories for organizing pantry items.
enum PantryCategory {
  produce('Produce'),
  dairy('Dairy'),
  meatAndSeafood('Meat & Seafood'),
  pantryStaples('Pantry Staples'),
  frozen('Frozen'),
  beverages('Beverages'),
  condimentsAndSauces('Condiments & Sauces'),
  baking('Baking'),
  snacks('Snacks'),
  other('Other');

  const PantryCategory(this.displayName);

  /// Human-readable label for this category.
  final String displayName;
}

/// {@template pantry_item}
/// A single item in the user's pantry with a category.
/// {@endtemplate}
@freezed
abstract class PantryItem with _$PantryItem {
  /// {@macro pantry_item}
  const factory PantryItem({
    required String name,
    @Default(PantryCategory.other) PantryCategory category,
  }) = _PantryItem;

  /// Creates a [PantryItem] from JSON.
  factory PantryItem.fromJson(Map<String, dynamic> json) =>
      _$PantryItemFromJson(json);
}
