import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

@RoutePage()
class FullScreenImageViewerPage extends StatelessWidget {
  final String imageUrl;
  final bool isFilePath;

  const FullScreenImageViewerPage({
    super.key,
    required this.imageUrl,
    this.isFilePath = false,
  });

  @override
  Widget build(BuildContext context) {
    Widget imageWidget;
    if (isFilePath) {
      imageWidget = Image.file(
        File(imageUrl),
        fit: BoxFit.contain,
        errorBuilder: (context, error, stackTrace) {
          return const Center(
            child: Icon(Icons.broken_image, size: 100, color: Colors.white70),
          );
        },
      );
    } else {
      imageWidget = CachedNetworkImage(
        imageUrl: imageUrl,
        fit: BoxFit.contain,
        placeholder:
            (context, url) => const Center(child: CircularProgressIndicator()),
        errorWidget: (context, url, error) {
          return const Center(
            child: Icon(Icons.broken_image, size: 100, color: Colors.white70),
          );
        },
      );
    }

    return Scaffold(
      backgroundColor: Colors.black.withOpacity(0.85),
      body: Stack(
        children: [
          InteractiveViewer(
            panEnabled: true,
            minScale: 0.5,
            maxScale: 4.0,
            child: Center(child: imageWidget),
          ),
          Positioned(
            top: 40,
            right: 20,
            child: IconButton(
              icon: const Icon(Icons.close, color: Colors.white, size: 30),
              onPressed: () {
                context.router.pop();
              },
              tooltip: 'Close',
            ),
          ),
        ],
      ),
    );
  }
}
