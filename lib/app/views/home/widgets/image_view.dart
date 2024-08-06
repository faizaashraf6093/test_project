import 'package:flutter/material.dart';

class ImageItem extends StatelessWidget {
  const ImageItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Image.network(
        'https://images.pexels.com/photos/8850666/pexels-photo-8850666.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
        fit: BoxFit.cover,
      ),
    );
  }
}
