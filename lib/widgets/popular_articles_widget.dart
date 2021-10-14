import 'package:flutter/material.dart';

class PopularWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 12,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Most Popular",
            style: Theme.of(context).textTheme.headline5,
            textAlign: TextAlign.left,
          ),
          SizedBox(height: 12),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Wrap(
              spacing: 26,
              children: [
                for (int i = 0; i < 3; i++) PopularItemWidget(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class PopularItemWidget extends StatelessWidget {
  const PopularItemWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // push ke halaman detail
        Navigator.pushNamed(context, '/detail');
      },
      child: SizedBox(
        width: 300,
        child: Column(
          children: [
            AspectRatio(
              aspectRatio: 4 / 3,
              child: Image(
                image: NetworkImage('https://picsum.photos/400'),
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "7 Manfaat Belajar Kelompok dalam Meningkatkan Prestasi Siswa",
                textAlign: TextAlign.center,
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.blue,
                radius: 30,
              ),
              title: Text("Jacob Jones"),
              subtitle: Text("8/16/13"),
              trailing: TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.favorite),
                label: Text("270k"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
