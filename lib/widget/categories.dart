import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 12,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Wrap(
          spacing: 26,
          children: [
            ChoiceChip(
              label: Text("All"),
              selected: false,
            ),
            ChoiceChip(
              label: Text("Sport"),
              selected: false,
            ),
            ChoiceChip(
              label: Text("News"),
              selected: false,
            ),
            ChoiceChip(
              label: Text("Category 1"),
              selected: false,
            ),
            ChoiceChip(
              label: Text("Category 2"),
              selected: false,
            ),
            ChoiceChip(
              label: Text("Etc"),
              selected: false,
            ),
          ],
        ),
      ),
    );
  }
}
