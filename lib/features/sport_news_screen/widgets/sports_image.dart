import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class SportsImage extends StatelessWidget {
  String imageUrl;

  SportsImage({super.key, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          imageBuilder:
              (context, imageProvider) => Container(
                width: 140,
                height: 140,
                decoration: BoxDecoration(
                  // shape: BoxShape.circle,
                  borderRadius: BorderRadius.circular(2),
                  image: DecorationImage(
                    image: imageProvider,
                    fit: BoxFit.cover,
                    //colorFilter:  ColorFilter.mode(Colors.red, BlendMode.colorBurn)
                  ),
                ),
              ),
          placeholder: (context, url) => CircularProgressIndicator(),
          errorWidget:
              (context, url, error) =>
                  Icon(Icons.error, size: 50, color: Colors.red),
        ),
      ),
    );
  }
}
