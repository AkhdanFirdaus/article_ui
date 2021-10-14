import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackButton(),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.bookmark),
                  ),
                ],
              ),
            ),
            AspectRatio(
              aspectRatio: 1,
              child: Image(
                image: NetworkImage('https://picsum.photos/400'),
                fit: BoxFit.cover,
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 24, 24, 12),
              child: Text(
                "7 Manfaat Belajar Kelompok dalam Meningkatkan Prestasi Siswa",
                style: Theme.of(context).textTheme.headline5,
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
            Padding(
              padding: const EdgeInsets.fromLTRB(24, 24, 24, 12),
              child: Text(
                """
                Belajar bersama teman-teman tentunya sangat seru dan menyenangkan. Apalagi, saat belajar kelompok kamu tidak melulu harus belajar, kamu tetap bisa bermain sambil belajar bersama-sama. Tentunya tujuan utamanya tetap harus belajar, bukan malah banyak mainnya.

                Manfaat belajar kelompok sangat bagus untuk perkembangan siswa. Hal ini tidak terbatas hanya dalam nilai atau aspek akademik, namun juga dalam kehidupan atau bersosialisasi. Belajar kelompok dapat membangun sifat gotong royong atau kerja sama dalam menyelesaikan suatu masalah.

                Berikut Liputan6.com rangkum dari berbagai sumber, Sabtu (5/9/2020) tentang manfaat belajar kelompok.

                Meningkatkan Semangat Belajar 

                Manfaat belajar kelompok yang pertama adalah meningkatkan semangat belajar siswa. Belajar kelompok dapat menjadi penyegaran bagi siswa, daripada melakukan cara belajar yang begitu-begitu saja. Belajar bersama teman-teman tentunya dapat membangkitkan semangat para siswa untuk memahami pelajaran yang diberikan.

                Manfaat belajar kelompok ini tentunya bisa kamu dapatkan jika tetap serius dalam melaksanakannya. Jangan sampai saat belajar kelompok malah banyak bercanda dan bermain-main daripada belajar tentang pelajaran itu sendiri.

                Melatih Kebiasaan Bertanya dan Berdiskusi

                Manfaat belajar kelompok selanjutnya adalah untuk melatih kebiasaan bertanya dan berdiskusi antar siswa. Kadang, tidak semua siswa dapat menerima pelajaran dengan baik saat di dalam kelas. Ada kalanya seseorang tidak mengerti dengan pelajaran yang diterangkan oleh guru di depan kelas, namun sungkan untuk bertanya.

                Belajar kelompok dapat menjadi wadah bagi siswa untuk menanyakan pelajaran yang belum ia mengerti saat di dalam kelas. Bertanya pada teman tentunya lebih mudah dan tidak perlu sungkan. Bahkan, kamu bisa saling berdiskusi dan saling berbagi ilmu sesuai dengan apa yang kamu mengerti. Manfaat belajar kelompok dapat membuat siswa lebih leluasa bertanya dan berdiskusi kepada teman sekelompok.
              """,
                softWrap: true,
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.favorite_outline_rounded),
              ),
              IconButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return BottomSheet(
                        onClosing: () {},
                        builder: (context) {
                          return Scaffold(
                            appBar: AppBar(
                              title: Text("Comments"),
                            ),
                            body: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: ListView(
                                children: [
                                  for (int i = 0; i < 10; i++)
                                    ListTile(
                                      title: Text("Bottom"),
                                    ),
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                  );
                },
                icon: Icon(Icons.message_outlined),
              ),
              IconButton(
                onPressed: () {},
                icon: Icon(Icons.share_outlined),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
