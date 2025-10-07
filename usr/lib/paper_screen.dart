import 'package:flutter/material.dart';

class PaperScreen extends StatelessWidget {
  const PaperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Makalah Sumber Ajaran Agama Islam'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildSectionTitle('Pendahuluan'),
            _buildParagraph(
              'Agama Islam adalah agama yang diturunkan oleh Allah SWT kepada Nabi Muhammad SAW untuk menjadi pedoman hidup bagi seluruh umat manusia. Ajaran Islam bersifat komprehensif dan universal, mencakup semua aspek kehidupan, mulai dari akidah (keyakinan), ibadah (ritual), muamalah (hubungan sosial), hingga akhlak (etika). Untuk memahami dan mengamalkan ajaran Islam secara benar, umat Islam harus merujuk pada sumber-sumber ajaran yang otentik dan diakui. Makalah ini akan membahas secara mendalam mengenai sumber-sumber utama ajaran agama Islam beserta kerangka dasarnya.'
            ),
            const SizedBox(height: 24),
            _buildSectionTitle('Kerangka Dasar Ajaran Islam'),
            _buildSubSectionTitle('1. Al-Qur\'an'),
            _buildParagraph(
              'Al-Qur\'an adalah sumber utama dan pertama ajaran Islam. Ia adalah wahyu Allah SWT yang diturunkan kepada Nabi Muhammad SAW melalui perantaraan Malaikat Jibril. Al-Qur\'an berisi firman-firman Allah yang menjadi petunjuk utama bagi kehidupan manusia. Isinya mencakup prinsip-prinsip dasar akidah, syariah, dan akhlak.'
            ),
            _buildSubSectionTitle('2. As-Sunnah (Hadits)'),
            _buildParagraph(
              'Sumber kedua setelah Al-Qur\'an adalah As-Sunnah atau Hadits, yaitu segala sesuatu yang disandarkan kepada Nabi Muhammad SAW, baik berupa perkataan (qaul), perbuatan (fi\'il), maupun ketetapan (taqrir). Fungsi utama Hadits adalah untuk menjelaskan dan merinci ayat-ayat Al-Qur\'an yang bersifat global, memberikan contoh konkret, serta menetapkan hukum yang tidak disebutkan secara eksplisit dalam Al-Qur\'an.'
            ),
            _buildSubSectionTitle('3. Ijtihad'),
            _buildParagraph(
              'Ijtihad adalah upaya sungguh-sungguh seorang mujtahid (ahli hukum Islam) untuk menggali hukum syar\'i dari sumber-sumbernya (Al-Qur\'an dan Sunnah) terhadap masalah-masalah baru yang tidak ditemukan dalilnya secara eksplisit. Ijtihad menjadi sumber hukum ketiga dan merupakan bukti fleksibilitas ajaran Islam dalam menghadapi perkembangan zaman. Bentuk-bentuk ijtihad antara lain adalah Ijma\' (konsensus ulama) dan Qiyas (analogi).'
            ),
            const SizedBox(height: 24),
            _buildSectionTitle('Penutup'),
            _buildParagraph(
              'Memahami sumber-sumber ajaran Islam (Al-Qur\'an, Sunnah, dan Ijtihad) adalah kewajiban bagi setiap Muslim. Dengan berpegang teguh pada ketiga sumber tersebut, umat Islam dapat menjalankan ajaran agamanya secara benar dan komprehensif. Al-Qur\'an sebagai pedoman utama, Sunnah sebagai penjelas dan teladan, serta Ijtihad sebagai solusi atas permasalahan kontemporer, semuanya membentuk satu kesatuan yang utuh dalam kerangka ajaran Islam yang rahmatan lil \'alamin (rahmat bagi seluruh alam).'
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: Text(
        title,
        style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildSubSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0, bottom: 8.0),
      child: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  Widget _buildParagraph(String text) {
    return Text(
      text,
      textAlign: TextAlign.justify,
      style: const TextStyle(fontSize: 16, height: 1.5),
    );
  }
}
