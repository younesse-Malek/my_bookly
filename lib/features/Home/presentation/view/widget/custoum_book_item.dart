import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustoumBookimage extends StatelessWidget {
  const CustoumBookimage({super.key, required this.imageUrl});
  final String imageUrl;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(12),
      child: AspectRatio(
        aspectRatio: 2.6 / 4.0,
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: imageUrl,
          errorWidget: (context, url, error) =>
              Center(child: Icon(Icons.error),),
        ),
      ),
    );
  }
}
