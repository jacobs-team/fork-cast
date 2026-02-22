import 'dart:io';

import 'package:flutter/material.dart';

/// {@template recipe_image}
/// Displays a recipe image from a local file path.
/// {@endtemplate}
class RecipeImage extends StatelessWidget {
  /// {@macro recipe_image}
  const RecipeImage({
    required this.imagePath,
    super.key,
  });

  /// The local file path of the image.
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    final file = File(imagePath);
    if (!file.existsSync()) {
      return Container(
        height: 200,
        width: double.infinity,
        color: Theme.of(context).colorScheme.errorContainer,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.image_not_supported,
              color: Theme.of(context).colorScheme.error,
            ),
            const SizedBox(height: 8),
            Text(
              'Image not found',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      );
    }

    return Image.file(
      file,
      width: double.infinity,
      height: 200,
      fit: BoxFit.cover,
    );
  }
}
