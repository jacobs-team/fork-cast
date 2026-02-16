import 'dart:io';

import 'package:flutter/material.dart';
import 'package:fork_cast/app/app.dart';
import 'package:fork_cast/app/core/dependencies/dependencies.dart';

class RecipeImage extends StatefulWidget {
  const RecipeImage({
    required this.recipe,
    required this.imageUrl,
    super.key,
  });

  final Recipe recipe;
  final String imageUrl;

  @override
  State<RecipeImage> createState() => _RecipeImageState();
}

class _RecipeImageState extends State<RecipeImage> {
  // late Future<List<int>> _imageBytesFuture;

  // @override
  // void initState() {
  //   super.initState();
  //   _loadBytes();
  // }

  // void _loadBytes() {
  //   setState(() {
  //     _imageBytesFuture = getIt<FileCacheService>()
  //         .getFile(widget.imageUrl)
  //         .then((file) => file.readAsBytes());
  //   });
  // }

  // void _handleRetry() {
  //   getIt<RecipeBloc>().add(LoadRecipeImages([widget.recipe]));
  //   _loadBytes();
  // }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<File?>(
      future: getIt<FileCacheService>().getFile(widget.imageUrl),
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
                  'Failed to load',
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
