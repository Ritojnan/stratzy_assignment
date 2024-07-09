import 'package:flutter/material.dart';
import '../models/item.dart';
import 'gradient_icon.dart';

class ItemTile extends StatelessWidget {
  final Item item;
  final Color backgroundColor;

  ItemTile({required this.item, required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 16),
      tileColor: backgroundColor,
      leading: SizedBox(
        width: 35,
        height: 35,
        child: Container(
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(8.0),
          ),
        ),
      ),
      title: Text(item.heading, style: TextStyle(color: Colors.white)),
      subtitle: Text(item.subheading, style: TextStyle(color: Colors.white)),
      trailing: GradientIcon(
        item.isBookmarked ? Icons.bookmark : Icons.bookmark_border,
        18.0,
        LinearGradient(
          colors: [
            Color.fromRGBO(1, 195, 109, 1),
            Color.fromRGBO(1, 193, 108, 1),
            Color.fromRGBO(1, 138, 77, 1)
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
    );
  }
}
