import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fork_cast/app/core/dependencies/dependencies.dart';
import 'package:fork_cast/app/core/service/file_cache_service.dart';

/// {@template recipe_image}
/// Displays a recipe image from cache, downloading if needed.
/// {@endtemplate}
class RecipeImage extends StatelessWidget {
  /// {@macro recipe_image}
  const RecipeImage({
    required this.imageUrl,
    super.key,
  });

  /// The network URL of the image.
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<File?>(
      future: getIt<FileCacheService>().getFile(imageUrl),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const SizedBox(
            height: 200,
            child: Center(child: CircularProgressIndicator()),
          );
        }

        if (snapshot.hasError) {
          return Container(
            height: 200,
            width: double.infinity,
            color: Theme.of(context).colorScheme.errorContainer,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.cloud_off,
                  color: Theme.of(context).colorScheme.error,
                ),
                const SizedBox(height: 8),
                Text(
                  'Failed to load image',
                  style: Theme.of(context).textTheme.bodySmall,
                ),
              ],
            ),
          );
        }

        return Image.memory(
          snapshot.data!.readAsBytesSync(),
          width: double.infinity,
          height: 200,
          fit: BoxFit.cover,
        );
      },
    );
  }
}
