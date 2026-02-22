import 'package:flutter/material.dart';

/// Text field for manually adding pantry items, supports comma-separated input.
class PantryManualInput extends StatefulWidget {
  /// Creates pantry manual input.
  const PantryManualInput({required this.onAdd, super.key});

  /// Called with each parsed item name.
  final ValueChanged<List<String>> onAdd;

  @override
  State<PantryManualInput> createState() => _PantryManualInputState();
}

class _PantryManualInputState extends State<PantryManualInput> {
  final _controller = TextEditingController();

  void _submit() {
    final items = _controller.text
        .split(',')
        .map((e) => e.trim())
        .where((e) => e.isNotEmpty)
        .toList();
    if (items.isEmpty) return;
    widget.onAdd(items);
    _controller.clear();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      decoration: InputDecoration(
        labelText: 'Add items (separate with commas)',
        hintText: 'Chicken, Rice, Olive Oil, Garlic...',
        border: const OutlineInputBorder(),
        suffixIcon: IconButton(
          icon: const Icon(Icons.add),
          onPressed: _submit,
        ),
      ),
      onSubmitted: (_) => _submit(),
    );
  }
}
