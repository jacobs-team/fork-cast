import 'package:flutter/material.dart';

/// {@template add_custom_item_dialog}
/// A reusable dialog for adding custom items with
/// comma-separated value support.
/// {@endtemplate}
class AddCustomItemDialog extends StatefulWidget {
  /// {@macro add_custom_item_dialog}
  const AddCustomItemDialog({
    required this.title,
    required this.labelText,
    required this.hintText,
    super.key,
  });

  /// The dialog title.
  final String title;

  /// The label for the text field.
  final String labelText;

  /// The hint text for the text field.
  final String hintText;

  /// Shows the dialog and returns parsed items.
  static Future<List<String>?> show({
    required BuildContext context,
    required String title,
    required String labelText,
    required String hintText,
  }) {
    return showDialog<List<String>>(
      context: context,
      builder: (_) => AddCustomItemDialog(
        title: title,
        labelText: labelText,
        hintText: hintText,
      ),
    );
  }

  @override
  State<AddCustomItemDialog> createState() =>
      _AddCustomItemDialogState();
}

class _AddCustomItemDialogState
    extends State<AddCustomItemDialog> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  List<String> _parseItems(String text) {
    return text
        .split(',')
        .map((e) => e.trim())
        .where((e) => e.isNotEmpty)
        .toList();
  }

  void _submit() {
    Navigator.of(context).pop(
      _parseItems(_controller.text),
    );
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(widget.title),
      content: TextField(
        controller: _controller,
        autofocus: true,
        decoration: InputDecoration(
          labelText: widget.labelText,
          hintText: widget.hintText,
        ),
        textCapitalization: TextCapitalization.words,
        onSubmitted: (_) => _submit(),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Cancel'),
        ),
        FilledButton(
          onPressed: _submit,
          child: const Text('Add'),
        ),
      ],
    );
  }
}
