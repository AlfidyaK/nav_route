import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: BookListScreen(),
  ));
}

class BookListScreen extends StatelessWidget {
  final List<Map<String, String>> books = [
    {
      'title': 'The Falling Leaf Never Hates The Wind',
      'author': 'Tere Liye',
      'description':
          'Bagaimana rasanya mencintai seseorang yang telah menjadi "malaikat" dalam hidupmu,' 
          'namun kau tahu cinta itu tak mungkin berbalas? Tania, seorang gadis yang diselamatkan'
          'dari kerasnya kehidupan jalanan oleh pria bernama Danar, tumbuh dengan memendam perasaan' 
          'yang semakin dalam. Namun, bagi Danar, Tania hanyalah seorang adik kecil. Saat kenyataan'
          'memaksa Tania untuk mundur, ia belajar satu hal penting: bahwa daun yang jatuh tak pernah'
          'membenci angin yang menghempaskannya. Sebuah kisah manis dan perih tentang cinta sepihak,'
          'pengorbanan, dan keikhlasan menerima takdir.',
      'pdf': 'assets/pdf/1.pdf'
    },
    {
      'title': 'Bulan',
      'author': 'Tere Liye',
      'description':
          'Petualangan Raib, Seli, dan Ali berlanjut! Setelah selamat dari pertempuran epik'
          'di Klan Bulan, kini ketiga remaja berkekuatan super itu menginjakkan kaki di Klan'
          'Matahari. Niat awal mereka adalah menjalankan misi perdamaian dan mencari sekutu.'
          'Namun, alih-alih disambut hangat, mereka malah terjebak dalam Festival Bunga'
          'Matahari—sebuah kompetisi mematikan di atas punggung hewan-hewan buas raksasa.'
          'Mampukah ketiganya bertahan hidup dan memenangkan festival paling berbahaya di'
          'dunia paralel ini? Siapkan napasmu untuk aksi yang jauh lebih menegangkan!',
      'pdf': 'assets/pdf/2.pdf'
    },
    {
      'title': 'Konspirasi Alam Semesta',
      'author': 'Fiersa Besari',
      'description':
          'Juang Astrajingga, seorang jurnalis lepas yang idealis dan berjiwa petualang,'
          'tak sengaja bersinggungan takdir dengan Ana Tidae. Pertemuan sederhana itu'
          'menumbuhkan benih asmara yang kuat di antara keduanya. Namun, perjalanan cinta'
          'mereka tidaklah berjalan mulus. Juang harus membagi hatinya antara Ana dan panggilan'
          'jiwanya untuk merekam realitas sosial dan sejarah kelam di berbagai pelosok ibu pertiwi.'
          'Di sisi lain, Ana juga hidup dalam bayang-bayang masa lalu ayahnya yang merupakan seorang'
          'eks-tahanan politik.Memadukan fiksi romansa, catatan petualangan, dan sentilan sosial,'
          'Konspirasi Alam Semesta bukan sekadar novel biasa. Ini adalah sebuah karya "buku-album",'
          'di mana Fiersa Besari menyematkan soundtrack lagu di setiap babnya untuk memberikan'
          'pengalaman membaca dan mendengar yang luar biasa tenggelam dalam cerita.',
      'pdf': 'assets/pdf/3.pdf'
    },
    {
      'title': 'Yang Fana adalah Waktu',
      'author': 'Sapardi Djoko Damono',
      'description':
          'Kisah cinta antara Sarwono, pemuda Jawa tulen yang sederhana, dan Pingkan,'
          'gadis Manado yang jelita, akhirnya tiba di muara. Setelah melewati kerinduan'
          'panjang dalam Hujan Bulan Juni dan pergulatan batin di Pingkan Melipat Jarak,'
          'novel ketiga ini membawa pembaca pada konklusi dari hubungan mereka yang terhalang'
          'benteng budaya dan keyakinan.Di saat Sarwono harus berjuang melawan penyakit parah'
          'yang menggerogoti tubuhnya, Pingkan dihadapkan pada kenyataan-kenyataan hidup yang'
          'menuntut kedewasaan. Melalui narasi yang mengalir tenang layaknya sebuah sajak panjang,'
          'Sapardi Djoko Damono mengajak kita merenungi makna pertemuan, perpisahan, dan bagaimana'
          'manusia memaknai usia. Apakah cinta mereka pada akhirnya akan bersatu, atau memudar'
          'seiring berjalannya sang waktu yang fana?',
      'pdf': 'assets/pdf/4.pdf'
    },
    {
      'title': 'Daun Daun Istimewa',
      'author': 'Saptorini',
      'description':
          'Fre berlibur ke rumah Ima, sepupunya. Ima akan memberi Fre hadiah istimewa.'
          'Tentu saja Fre sangat senang. Akan tetapi, Ima malah mengajak Fre ke kebun.'
          'Ima juga mengajak Fre memetik daun-daun dan bunga seperti daun belimbing,'
          'daun jati, dan bunga kenikir. Ah, Fre jadi kesal. Apa keistimewaan daun-daun itu?'
          'Ima selalu berkata, “Tunggu saja. Ini akan jadi hadiah istimewa.” Fre penasaran.&nbsp;'
          'Bagaimana bisa daun-daun itu menjadi hadiah istimewa?',
      'pdf': 'assets/pdf/5.pdf'
    },
    {
      'title': 'Tia Ingin Seperti Naya',
      'author': '	Ina Inong',
      'description':
          'Tia memiliki teman baru bernama Naya. Tia dan Naya sama-sama manis,'
          'sama-sama pintar, tetapi mereka memiliki kebiasaan yang berbeda.'
          'Kebiasaan Tia sering membuat jengkel ibunya, padahal sudah berulang'
          'kali diberi tahu, tetapi Tia tidak berubah juga. Sementara itu, Naya'
          'memiliki kebiasaan yang menyenangkan dan Tia pun mengakui, kebiasaan'
          'Naya itu membuatnya diam-diam ingin seperti diri Naya. Ya, Tia ingin'
          'seperti Naya.&nbsp; Kira-kira kebiasaan apa yang dilakukan Naya yang'
          'membuat Tia ingin menirunya?',
      'pdf': 'assets/pdf/6.pdf'
    },
    {
      'title': 'Negeri di Ujung Tanduk',
      'author': 'Tere Liye',
      'description':
          'Cerita ini mengikuti Thomas, seorang konsultan politik brilian, yang'
          'terlibat dalam dunia klub petarung rahasia di Jakarta dan Makau.Thomas'
          'memiliki latar belakang pendidikan formal di bidang politik dan bisnis,'
          'serta keahlian dalam strategi keuangan dan komunikasi politik.Bersama'
          'sahabatnya, Theo, Thomas pergi ke Makau untuk menghadapi pertarungan'
          'melawan "Lee si Monster", seorang petarung tangguh yang juga merupakan'
          'penerus konglomerasi besar di Hong Kong.',
      'pdf': 'assets/pdf/7.pdf'
    },
    {
      'title': 'Ayat Ayat Api',
      'author': 'Sapardi Djoko Damono',
      'description':
          'Buku ini memuat berbagai sajak yang terbagi ke dalam beberapa bagian,'
          'antara lain:Ayat nol: Memuat puisi seperti "Ruang ini",'
          '"Catatan masa kecil", "Aubade", dan "Aku tengah menantimu".'
          'Ayat arloji: Berisi sajak bertema sosial dan kemanusiaan, termasuk'
          '"Dongeng Marsinah", "Tentang mahasiswa yang mati 1996", dan "Iklan".',
      'pdf': 'assets/pdf/8.pdf'
    },
    {
      'title': 'Bahagia, Kenapa Tidak?',
      'author': 'Reza A.A. Wattimena',
      'description':
          '"Bahagia, Kenapa Tidak?" adalah buku filsafat karya Reza A.A.'
          'Wattimena yang menyajikan refleksi filosofis tentang kebahagiaan'
          'dengan bahasa yang sederhana namun mendalam. Buku ini bukan sekadar'
          'kumpulan teori, melainkan upaya untuk mengakar filsafat dalam'
          'pengalaman nyata setiap orang, dengan tema utama bahwa kebahagiaan'
          'adalah kondisi alamiah manusia yang sering tertutupi oleh kesalahan'
          'berpikir.',
      'pdf': 'assets/pdf/9.pdf'
    },
    {
      'title': 'Bumi',
      'author': 'Tere Liye',
      'description':
          'Di permukaan, Raib hanyalah gadis remaja biasa. Namun, sebuah insiden'
          'kecelakaan tiang listrik yang aneh memicu rentetan peristiwa yang'
          'mengungkap siapa dirinya yang sebenarnya. Rahasianya sebagai gadis yang'
          'bisa menghilang terendus oleh Tamus, sosok antagonis dari dunia lain yang'
          'berambisi menguasai dunia paralel.Tanpa diduga, Raib tidak sendirian.'
          'Teman sebangkunya, Seli, ternyata keturunan Klan Matahari yang bisa'
          'mengendalikan listrik. Sementara Ali, si biang onar di sekolah, adalah'
          'seorang genius yang bisa merakit alat-alat canggih. Dipandu oleh Miss Selena,'
          'guru matematika mereka yang memiliki rahasia tak kalah mengejutkan, ketiganya terpaksa'
          'melarikan diri ke Klan Bulan. Di sana, mereka harus belajar mengendalikan kekuatan,'
          'menghadapi monster, dan mencegah kehancuran dunia. Bumi adalah gerbang pembuka yang'
          'spektakuler menuju semesta fantasi ala Tere Liye.',
      'pdf': 'assets/pdf/10.pdf'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Book List')),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(books[index]['title']!),
            subtitle: Text(books[index]['author']!),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BookDetailScreen(
                    title: books[index]['title']!,
                    author: books[index]['author']!,
                    description: books[index]['description']!,
                    pdfPath: books[index]['pdf']!,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}

class BookDetailScreen extends StatelessWidget {
  final String title;
  final String author;
  final String description;
  final String pdfPath;

  BookDetailScreen(
      {required this.title,
      required this.author,
      required this.description,
      required this.pdfPath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(title)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Title: $title',
                style:
                    const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            Text('Author: $author',
                style:
                    const TextStyle(fontSize: 18, fontStyle: FontStyle.italic)),
            const SizedBox(height: 12),
            const Text('Description:',
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 6),
            Expanded(
              child: SingleChildScrollView(
                child: Text(description, style: const TextStyle(fontSize: 16)),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text('Back'),
                  ),
                ),
                const SizedBox(width: 16),
                Expanded(
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ReadingBookFile(pdfPath: pdfPath, title: title),
                        ),
                      );
                    },
                    child: const Text('Read the book'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ReadingBookFile extends StatelessWidget {
  final String pdfPath;
  final String title;
  ReadingBookFile({required this.pdfPath, required this.title});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('membaca $title'),
      ),
      body: SfPdfViewer.asset(pdfPath),
    );
  }
}