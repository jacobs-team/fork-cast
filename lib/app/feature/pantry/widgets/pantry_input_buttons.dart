import 'package:flutter/material.dart';

/// Three input method buttons for stocking the pantry.
class PantryInputButtons extends StatelessWidget {
  /// Creates pantry input buttons.
  const PantryInputButtons({
    required this.onCamera,
    required this.onGallery,
    required this.onVoice,
    required this.isLoading,
    super.key,
  });

  /// Called when the camera button is pressed.
  final VoidCallback onCamera;

  /// Called when the gallery button is pressed.
  final VoidCallback onGallery;

  /// Called when the voice button is pressed.
  final VoidCallback onVoice;

  /// Whether an extraction is currently in progress.
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: _InputButton(
            icon: Icons.camera_alt,
            label: 'Camera',
            onPressed: isLoading ? null : onCamera,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: _InputButton(
            icon: Icons.photo_library,
            label: 'Photos',
            onPressed: isLoading ? null : onGallery,
          ),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: _InputButton(
            icon: Icons.mic,
            label: 'Voice',
            onPressed: isLoading ? null : onVoice,
          ),
        ),
      ],
    );
  }
}

class _InputButton extends StatelessWidget {
  const _InputButton({
    required this.icon,
    required this.label,
    required this.onPressed,
  });

  final IconData icon;
  final String label;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return FilledButton.tonal(
      onPressed: onPressed,
      style: FilledButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 16),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon),
          const SizedBox(height: 4),
          Text(label),
        ],
      ),
    );
  }
}
