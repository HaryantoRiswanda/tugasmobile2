import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:matcher/matcher.dart';

void main() => runApp(Educationpage());

class Educationpage extends StatelessWidget {
  const Educationpage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 150.0,
              backgroundImage: AssetImage("assets/sttb.jpg"),
            ),
            Text(
              "Sekolah Tinggi Teknologi Bandung",
              style: TextStyle(
                  fontSize: 30.0,
                  color: Colors.white,
                  letterSpacing: 2.5,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20.0,
              width: 440.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Text(
              "ekolah Tinggi Teknologi Bandung berdiri sejak tahun 1991,yang di prakarsai oleh alumni Institut Teknologi Bandung (ITB). Visi Sekolah Tinggi Teknologi Bandung adalah menjadi perguruan tinggi yang berdaya saing dan unggul secara nasional pada tahun 2025. Dengan harapan dapat memberikan kesempatan yang lebih luas kepada masyarakat untuk mendapatkan pendidikan di Perguruan Tinggi serta bertujuan untuk menghasilkan sarjana dan tenaga ahli yang kompeten di bidangnya dan mampu menghadapi tantangan global, mampu memanfaatkan berbagai peluang yang ada di sekelilingnya, dan memiliki jiwa kewirausahaan yang tinggi dengan harapan dapat menjadi seorang pengusaha sukses serta dapat menciptakan kesempatan kerja bagi lingkungannya. Saat ini Sekolah Tinggi Teknologi Bandung memiliki 3 Program Studi, yaitu Teknik Industri, Teknik Informatika dan Desain Komunikasi Visual. Kurikulum yang digunakan selalu disesuaikan dengan kebutuhan, baik kebutuhan industri manufaktur ataupun industri lain. STTB yang berkedudukan di Jl. Soekarno Hatta No. 378 Bandung, saat ini sudah mendapatkan kepercayaan dari masyarakat, ini bisa dilihat dari meningkatnya jumlah Mahasiswa dari berbagai Program Studi yang berasal dari berbagai daerah, mulai dari Aceh sampai Papua, bahkan ada mahasiswa yang berasal dari luar Negeri seperti Malaysia, Qatar, Timor Leste, dan lain-lain. Selain itu banyak Pencapaian Prestasi Dosen maupun Mahasiswa yang sudah di raih, baik di tingkat Nasional maupun Internasional. Prestasi dosen yang diraih salah satunya adalah hibah penelitian dosen, baik dari DIKTI maupun DRPM, yang jumlahnya selalu meningkat. Selain prestasi dosen, Sekolah Tinggi Teknologi Bandung juga memiliki Prestasi mahasiswa, baik di bidang akademik maupun non Akademik. Prestasi tersebut diantaranya prestasi ditingkat nasional dan internasional.",
              style: TextStyle(
                fontSize: 17.0,
                color: Colors.white,
              ),
            ),
          ],
        )),
      ),
    );
  }
}
