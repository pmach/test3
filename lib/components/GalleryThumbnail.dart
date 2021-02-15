import 'package:flutter/cupertino.dart';
import 'package:tutorial_flutter/models/GalleryItemModel.dart';

class GalleryItemThumbnail extends StatelessWidget {
  final GalleryItemModel galleryItemModel;
  final GestureTapCallback onTap;

  const GalleryItemThumbnail({Key key, this.galleryItemModel, this.onTap}) : super(
    key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: GestureDetector(
        onTap: onTap,
        child: Hero(
          tag: galleryItemModel.id,
          child: Image.asset(galleryItemModel.resource, height: 300.0, width: 450.0, fit: BoxFit.fill,)
        ),
      ),
    );
  }
}