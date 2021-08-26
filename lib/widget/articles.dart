import 'package:flutter/material.dart';

class New extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 12,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Articles",
                style: Theme.of(context).textTheme.headline5,
              ),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/articles');
                },
                child: Row(
                  children: [
                    Text("See More"),
                    Icon(Icons.arrow_right_alt_rounded)
                  ],
                ),
              ),
            ],
          ),
          for (int i = 0; i < 3; i++)
            Padding(
              padding: const EdgeInsets.only(bottom: 12),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/detail');
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: 80,
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: Image(
                          image: NetworkImage('https://picsum.photos/80'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    SizedBox(width: 12),
                    Flexible(
                      child: Text(
                        "Mie dipercaya dapat memicu terjadinya Magh",
                      ),
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.favorite),
                      label: Text("270k"),
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
