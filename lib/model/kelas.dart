class Kelas {
  String nama, platform, deskripsi, banner, icon, level;
  int estimasi;

  Kelas({
    this.nama,
    this.platform,
    this.deskripsi,
    this.banner,
    this.icon,
    this.level,
    this.estimasi,
  });
}

List<Kelas> listKelas = [
  Kelas(
      nama: 'Memulai Pemrograman Dengan Kotlin',
      platform: 'Android',
      deskripsi:
          'Kotlin merupakan bahasa utama yang digunakan dalam pengembangan Android. Saat ini, Kotlin sudah stabil dan banyak digunakan oleh industri, seperti Gojek, Netflix, Twitter dan masih banyak lagi. Selain pengembangan Android, Kotlin dapat digunakan untuk berbagai macam pengembangan aplikasi, baik itu server atau backend, maupun website. Bahkan saat ini tengah dikembangkan Kotlin/Native, yang memungkinkan developer untuk menggunakannya sebagai bahasa pemrograman dalam pengembangan aplikasi di platform lain seperti embedded system, desktop, macOS, dan iOS. Banyaknya komunitas yang berkontribusi untuk Kotlin membuat bahasa ini berkembang sangat pesat. Kotlin dinobatkan sebagai “Fastest growing languages” oleh GitHub Octoverse 2018 mengalahkan Rust, Go, dll.',
      banner: 'images/banner_android1.png',
      icon: 'images/android1.png',
      level: 'Pemula',
      estimasi: 40),
  Kelas(
      nama: 'Belajar Prinsip Pemrograman SOLID',
      platform: 'Android',
      deskripsi:
          'Semua orang bisa membuat kode program selama dia tahu suatu bahasa pemrograman. Tetapi membuat kode program yang mudah dimengerti, mudah dikelola, dan mudah dikembangkan adalah tantangan yang nyata, bahkan untuk seorang yang sudah menjadi programmer sekali pun. Tergantung dari paradigma apa yang dipakai, pasti ada solusi yang bisa digunakan untuk menyelesaikan problem tersebut. Di dalam paradigma OOP (object oriented programming atau pemrograman berorientasi object), dikenal prinsip SOLID yang memiliki tujuan untuk membuat kode program lebih mudah dimengerti, mudah dikelola, dan mudah dikembangkan. Robert C Martin (Uncle Bob) adalah seorang engineer dan instructor dari Amerika mengenalkan SOLID di papernya yang berjudul Design Principle and Design Pattern pada tahun 2000.',
      banner: 'images/banner_android2.jpg',
      icon: 'images/android2.png',
      level: 'Pemula',
      estimasi: 20),
  Kelas(
      nama: 'Belajar Membuat Aplikasi Android untuk Pemula',
      platform: 'Android',
      deskripsi:
          'Android semakin digandrungi. Per Maret 2018 ada lebih dari 3,6 juta aplikasi Android di Google Play Store (data Statista). Di indonesia sendiri pada bulan Maret 2019 sebanyak 93,5% konsumen memilih platform Android untuk sistem operasi peranti mobile mereka (data Statcounter). Ini menandakan bahwa kebutuhan akan Android developer, semakin meningkat. Tak heran, profesi Android developer merupakan 1 dari 5 profesi yang paling diincar perusahaan (data LinkedIn Emerging Jobs Report 2019).',
      banner: 'images/banner_android3.png',
      icon: 'images/android3.png',
      level: 'Pemula',
      estimasi: 40),
  Kelas(
      nama: 'Belajar Fundamental Aplikasi Android',
      platform: 'Android',
      deskripsi:
          'Android semakin digandrungi. Per Maret 2018 ada lebih dari 3,6 juta aplikasi Android di Google Play Store (data Statista). Di indonesia sendiri pada bulan Maret 2019 sebanyak 93,5% konsumen memilih platform Android untuk sistem operasi peranti mobile mereka (data Statcounter). Ini menandakan bahwa kebutuhan akan Android developer, semakin meningkat. Tak heran, profesi Android developer merupakan 1 dari 5 profesi yang paling diincar perusahaan (data LinkedIn Emerging Jobs Report 2019).',
      banner: 'images/banner_android4.png',
      icon: 'images/android4.png',
      level: 'Menengah',
      estimasi: 140),
  Kelas(
      nama: 'Belajar Android Jetpack Pro',
      platform: 'Android',
      deskripsi:
          'Android Jetpack terinspirasi oleh Support Library, seperangkat komponen untuk memudahkan pemanfaatan fitur Android terbaru sembari tetap menjaga kompatibilitas dengan versi-versi sebelumnya. Google memperkenalkan Architecture Components sebagai bagian dari Android Jetpack yang dirancang untuk memudahkan penanganan data dalam menghadapi perubahan siklus hidup aplikasi. Sejak Google perkenalkan pada I/O 2018, banyak sekali dari perusahaan IT yang telah mengadopsinya. Google menyatakan bahwa Android Jetpack digunakan oleh 80% dari 1000 aplikasi terbaik Google Play Store. Perusahaan seperti LinkedIn, Traveloka dan Kakao Corporation (KakaoTalk) menjumpai lebih sedikit bug dan sukses menghemat waktu pengembangan sehingga dapat lebih berfokus pada apa yang membuat aplikasi mereka unik.',
      banner: 'images/banner_android5.png',
      icon: 'images/android5.png',
      level: 'Mahir',
      estimasi: 70),
  Kelas(
      nama: 'Memulai Pemrograman Dengan Swift',
      platform: 'iOS',
      deskripsi:
          'Sejak dikenalkan di Apple Wordwide Developer Conference (WWDC) di tahun 2014, Swift telah menjadi bahasa resmi yang didukung oleh Apple Inc. untuk pengembangan aplikasi iOS, iPadOs, macOS, watchOS, tvOS, Linux, dan OS X. Swift merupakan bahasa pemrograman yang modern, cepat dan type-safe. Di tahun 2018, Swift telah mengalahkan Objective-C sebagai bahasa pemrograman yang digunakan untuk iOS dan platform Apple lainnya. Menurut survei yang dilakukan Stack Overflow, Swift menjadi bahasa pemrograman yang paling disukai tahun 2019. Dibandingkan dengan 2018, pecinta Swift naik dari 65% menjadi 69%.',
      banner: 'images/banner_ios1.jpg',
      icon: 'images/ios1.png',
      level: 'Pemula',
      estimasi: 40),
  Kelas(
      nama: 'Belajar Membuat Aplikasi iOS untuk Pemula',
      platform: 'iOS',
      deskripsi:
          'Menjadi iOS developer merupakan pekerjaan yang diimpikan bagi banyak orang. Menurut data dari Indeed, salah satu platform pencari pekerjaan terbesar di dunia, tingkat kepuasan menjadi iOS developer itu 13% lebih tinggi dibandingkan dengan profesi Android Developer. The iOS Developer Community Survey menemukan bahwa di tahun 2020, 75.5% dari developer masih menggunakan codebase terpisah ketika aplikasinya perlu dapat dijalankan di berbagai platform yang berbeda (seperti OS Android dan iOS). Artinya banyak tempat kerja yang masih menginginkan codebase yang terpisah dan benar-benar dibangun dari Xcode. Oleh karena ini, permintaan industri untuk seorang iOS Developer masih sangat tinggi walaupun market share pengguna mobile platform iOS hanya sebesar 26% (data Statcounter, Februari 2020).',
      banner: 'images/banner_ios2.jpg',
      icon: 'images/ios2.png',
      level: 'Pemula',
      estimasi: 40),
  Kelas(
      nama: 'Belajar Fundamental Aplikasi iOS',
      platform: 'iOS',
      deskripsi:
          'Menjadi iOS developer merupakan pekerjaan yang diimpikan bagi banyak orang. Menurut data dari Indeed, salah satu platform pencari pekerjaan terbesar di dunia, tingkat kepuasan menjadi iOS developer itu 13% lebih tinggi dibandingkan dengan profesi Android Developer. The iOS Developer Community Survey menemukan bahwa di tahun 2019, 75.5% dari developer masih menggunakan codebase terpisah ketika aplikasinya perlu dapat dijalankan di berbagai platform yang berbeda (seperti OS Android dan iOS). Artinya banyak tempat kerja yang masih menginginkan codebase yang terpisah dan benar-benar dibangun dari Xcode. Oleh karena ini, permintaan industri untuk seorang iOS Developer masih sangat tinggi walaupun market share pengguna mobile platform iOS hanya sebesar 28.79% (data Statcounter, April 2020).',
      banner: 'images/banner_ios3.jpg',
      icon: 'images/ios3.jpg',
      level: 'Menengah',
      estimasi: 70),
  Kelas(
      nama: 'Menjadi iOS Developer Expert',
      platform: 'iOS',
      deskripsi:
          'Menjadi iOS developer merupakan pekerjaan yang diimpikan bagi banyak orang. Menurut data dari Indeed, salah satu platform pencari pekerjaan terbesar di dunia, tingkat kepuasan menjadi iOS developer itu 13% lebih tinggi dibandingkan dengan profesi Android Developer. The iOS Developer Community Survey menemukan bahwa di tahun 2019, 75.5% dari developer masih menggunakan codebase terpisah ketika aplikasinya perlu dapat dijalankan di berbagai platform yang berbeda (seperti OS Android dan iOS). Artinya banyak tempat kerja yang masih menginginkan codebase yang terpisah dan benar-benar dibangun dari Xcode. Oleh karena ini, permintaan industri untuk seorang iOS Developer masih sangat tinggi walaupun market share pengguna mobile platform iOS hanya sebesar 28.79% (data Statcounter, April 2020).',
      banner: 'images/banner_ios4.jpg',
      icon: 'images/ios4.jpg',
      level: 'Professional',
      estimasi: 70),
  Kelas(
      nama: 'Belajar Dasar Pemrograman Web',
      platform: 'Web',
      deskripsi:
          'Website di era sekarang sudah menjadi kebutuhan utama yang tidak bisa diabaikan. Seluruh sektor bisnis atau edukasi dapat memanfaatkan website sebagai alat untuk promosi, tukar informasi, dan lainnya. Per Januari 2019 terdapat 1.518.207.413 website yang aktif, berdasarkan survey dari Webcraft Webserver Survey. Bedasarkan data dari World Wide Web Technology Surveys, dari seluruh website yang aktif, 88.2% menggunakan HTML, 95.6% menggunakan CSS dan 95% menggunakan JavaScript.',
      banner: 'images/banner_web1.png',
      icon: 'images/web1.png',
      level: 'Pemula',
      estimasi: 55),
  Kelas(
      nama: 'Belajar Fundamental Front-End Web',
      platform: 'Web',
      deskripsi:
          'Website di era sekarang sudah menjadi kebutuhan utama yang tidak bisa diabaikan. Seluruh sektor bisnis atau edukasi dapat memanfaatkan website sebagai alat untuk promosi, tukar informasi, dan lainnya. Per Januari 2019 terdapat 1.518.207.413 website yang aktif, berdasarkan survey dari Webcraft Webserver Survey. StackShare, salah satu komunitas developer terbesar di Amerika, menyatakan terdapat ribuan produk internasional termasuk AirBnB, Instagram, dan Gitlab telah menggunakan Web Component, Build Tools (seperti Webpack), dan AJAX seperti yang akan diajarkan pada kurikulum kelas ini.',
      banner: 'images/banner_web2.jpg',
      icon: 'images/web2.jpg',
      level: 'Menengah',
      estimasi: 70),
  Kelas(
      nama: 'Membangun Progressive Web Apps',
      platform: 'Web',
      deskripsi:
          'Membangun Progressive Web Apps (PWA) memiliki manfaat yang luar biasa, website Anda dapat diinstal pada mobile devices dan dijalankan secara offline. Selain itu, ServiceWorker sebagai salah satu komponen PWA dapat membantu meringankan traffic transaksi hingga 84% pada website Anda. Dengan menerapkan PWA, website Anda dapat menggunakan fitur push notification yang dapat menarik konsumen untuk kembali mengunjungi website Anda. Penerapan PWA sudah terbukti membantu AliExpress, bagian dari Alibaba Group, dalam meningkatkan konversi untuk pengguna baru di semua browser sebesar 104% dan di iOS sebesar 82%.',
      banner: 'images/banner_web3.png',
      icon: 'images/web3.png',
      level: 'Mahir',
      estimasi: 70),
  Kelas(
      nama: 'Menjadi Front-End Web Developer Expert',
      platform: 'Web',
      deskripsi:
          'Pada tahun 2020 menurut WebCraft Webserver Survey, terdapat 1,778,528,325 website yang aktif. Banyak website aktif dirancang untuk tampak optimal hanya pada perangkat desktop. Namun faktanya, kini pengguna website didominasi oleh smartphone. Dengan begitu, Web Developer dituntut untuk mampu membangun website yang dapat beradaptasi pada smartphone dengan baik. Perusahaan seperti Tokopedia, Shopee, Twitter, dan Facebook berhasil mengembangkan website yang nyaman diakses pada perangkat smartphone. Hal ini bisa tercapai karena dalam proses pengembangan, mereka selalu memperhatikan aspek mobile friendly, accessibility, dan optimization.',
      banner: 'images/banner_web4.jpg',
      icon: 'images/web4.jpg',
      level: 'Professional',
      estimasi: 70),
  Kelas(
      nama: 'Belajar Membuat Augmented Reality',
      platform: 'AR/VR',
      deskripsi:
          'Penggunaan teknologi Augmented Reality sepenuhnya mengubah konsep persepsi pengguna tentang interaksi antara dunia nyata dan objek virtual 3D secara real time. Pasar Augmented Reality mencapai nilai US 4,21 miliar pada tahun 2017 dan diperkirakan akan mencapai USD 60,55 miliar pada tahun 2023, diperkirakan akan tumbuh sebesar 40,29% dalam beberapa periode ke depan. Perlahan-lahan penggunaan teknologi pasar AR mulai menjamur di dalam aspek kehidupan. Perusahaan raksasa seperti Google, Facebook, Apple, hingga Microsoft mulai berinvestasi ke industri tersebut karena mereka telah melihat potensinya. Berdasarkan survey dari MarketsandMarkets, pasar AR akan mendapatkan keuntungan sekitar US 117 miliar atau berkisar Rp 1.579 triliun pada 2022.',
      banner: 'images/banner_ar1.jpg',
      icon: 'images/ar1.png',
      level: 'Pemula',
      estimasi: 40),
  Kelas(
      nama: 'Belajar Membuat Virtual Reality',
      platform: 'AR/VR',
      deskripsi:
          'Munculnya teknologi virtual reality telah mengubah cara kita hidup, bekerja, dan bersosialisasi. Industri VR memiliki peluang tumbuh yang sangat besar. Menurut laporan yang diterbitkan oleh Fortune Business Insights, berjudul Virtual Reality Market: Global Market Analysis, Insights, and Forecast - 2018-2026, pasar global virtual reality diperkirakan akan mencapai US 120,5 Miliar pada tahun 2026, dibandingkan dengan tahun 2018 hanya mencapai US 7,3 Miliar.',
      banner: 'images/banner_ar2.jpg',
      icon: 'images/ar2.png',
      level: 'Pemula',
      estimasi: 40),
  Kelas(
      nama: 'Belajar Membuat Mixed Reality',
      platform: 'AR/VR',
      deskripsi:
          'Hampir 9 dari 10 responden survei dari Perkins Coie LLP dan XR Association, pada laporan 2019 Augmented and Virtual Reality Survey, menyebutkan bahwa teknlogi Mixed Reality (MR) menunjukkan adanya potensi yang luar biasa karena menggabungkan teknologi imersif yang sudah ada seperti Augmented Reality (AR) dan Virtual Reality (VR). Laporan yang sama menyatakan mayoritas praktisi percaya bahwa teknologi imersif akan menjadi populer dan seumum teknologi perangkat seluler sebelum tahun 2025.',
      banner: 'images/banner_ar3.jpg',
      icon: 'images/ar3.png',
      level: 'Pemula',
      estimasi: 40),
  Kelas(
      nama: 'Memulai Pemrograman Dengan Dart',
      platform: 'Multi-Platform',
      deskripsi:
          'Dart adalah sebuah bahasa pemrograman yang dikembangkan oleh Google pada tahun 2011 dengan tujuan awal untuk menggantikan JavaScript. Bahasa ini kembali populer ketika dikenalkan untuk mengembangkan Flutter, sebuah UI toolkit dan aplikasi multiplatform dari Google. Dart telah digunakan oleh engineer Google untuk mengembangkan berbagai aplikasi yang terkait dengan bisnis Google, salah satunya adalah Google Ads. Flutter sendiri telah digunakan oleh berbagai perusahaan besar seperti Google, Alibaba.com, dan Tencent karena dapat menghemat waktu dan tenaga dengan cara hanya membutuhkan satu codebase untuk mengembangkan aplikasi pada berbagai platform, daripada harus menghabiskan waktu untuk membuat codebase terpisah untuk masing-masing platform.',
      banner: 'images/flutter1.png',
      icon: 'images/flutter1.jpg',
      level: 'Dasar',
      estimasi: 40),
  Kelas(
      nama: 'Belajar Membuat Aplikasi Flutter untuk Pemula',
      platform: 'Multi-Platform',
      deskripsi:
          'Sejak dikenalkan oleh Google pada Mei 2017, Flutter langsung menarik perhatian. UI toolkit dari Google ini memungkinkan developer untuk mengembangkan aplikasi di berbagai platform mobile seperti Android dan iOS. Bahkan pada pengembangan terbarunya, Flutter tidak hanya digunakan pada platform mobile, namun sudah merambah ke sisi web dan desktop. Flutter sendiri telah digunakan oleh berbagai perusahaan besar seperti Google, Alibaba.com, dan Tencent. Berbagai perusahaan tersebut memilih Flutter karena hanya membutuhkan satu codebase untuk mengembangkan aplikasi di berbagai platform, alhasil dapat menghemat waktu, tenaga, dan juga biaya. Menurut data Google, di tahun 2020 sudah ada 50.000 aplikasi di Google Play yang dibuat dengan menggunakan Flutter, dan angka ini akan terus bertambah.',
      banner: 'images/banner_flutter2.jpg',
      icon: 'images/flutter2.jpg',
      level: 'Pemula',
      estimasi: 40)
];

List<Kelas> kelasFavorit = [
  Kelas(
      nama: 'Belajar Membuat Aplikasi Android untuk Pemula',
      platform: 'Android',
      deskripsi:
          'Android semakin digandrungi. Per Maret 2018 ada lebih dari 3,6 juta aplikasi Android di Google Play Store (data Statista). Di indonesia sendiri pada bulan Maret 2019 sebanyak 93,5% konsumen memilih platform Android untuk sistem operasi peranti mobile mereka (data Statcounter). Ini menandakan bahwa kebutuhan akan Android developer, semakin meningkat. Tak heran, profesi Android developer merupakan 1 dari 5 profesi yang paling diincar perusahaan (data LinkedIn Emerging Jobs Report 2019).',
      banner: 'images/banner_android3.png',
      icon: 'images/android3.png',
      level: 'Pemula',
      estimasi: 40),
  Kelas(
      nama: 'Belajar Fundamental Aplikasi Android',
      platform: 'Android',
      deskripsi:
          'Android semakin digandrungi. Per Maret 2018 ada lebih dari 3,6 juta aplikasi Android di Google Play Store (data Statista). Di indonesia sendiri pada bulan Maret 2019 sebanyak 93,5% konsumen memilih platform Android untuk sistem operasi peranti mobile mereka (data Statcounter). Ini menandakan bahwa kebutuhan akan Android developer, semakin meningkat. Tak heran, profesi Android developer merupakan 1 dari 5 profesi yang paling diincar perusahaan (data LinkedIn Emerging Jobs Report 2019).',
      banner: 'images/banner_android4.png',
      icon: 'images/android4.png',
      level: 'Menengah',
      estimasi: 140),
  Kelas(
      nama: 'Belajar Fundamental Front-End Web',
      platform: 'Web',
      deskripsi:
          'Website di era sekarang sudah menjadi kebutuhan utama yang tidak bisa diabaikan. Seluruh sektor bisnis atau edukasi dapat memanfaatkan website sebagai alat untuk promosi, tukar informasi, dan lainnya. Per Januari 2019 terdapat 1.518.207.413 website yang aktif, berdasarkan survey dari Webcraft Webserver Survey. StackShare, salah satu komunitas developer terbesar di Amerika, menyatakan terdapat ribuan produk internasional termasuk AirBnB, Instagram, dan Gitlab telah menggunakan Web Component, Build Tools (seperti Webpack), dan AJAX seperti yang akan diajarkan pada kurikulum kelas ini.',
      banner: 'images/banner_web2.jpg',
      icon: 'images/web2.jpg',
      level: 'Menengah',
      estimasi: 70),
  Kelas(
      nama: 'Membangun Progressive Web Apps',
      platform: 'Web',
      deskripsi:
          'Membangun Progressive Web Apps (PWA) memiliki manfaat yang luar biasa, website Anda dapat diinstal pada mobile devices dan dijalankan secara offline. Selain itu, ServiceWorker sebagai salah satu komponen PWA dapat membantu meringankan traffic transaksi hingga 84% pada website Anda. Dengan menerapkan PWA, website Anda dapat menggunakan fitur push notification yang dapat menarik konsumen untuk kembali mengunjungi website Anda. Penerapan PWA sudah terbukti membantu AliExpress, bagian dari Alibaba Group, dalam meningkatkan konversi untuk pengguna baru di semua browser sebesar 104% dan di iOS sebesar 82%.',
      banner: 'images/banner_web3.png',
      icon: 'images/web3.png',
      level: 'Mahir',
      estimasi: 70),
  Kelas(
      nama: 'Belajar Fundamental Aplikasi iOS',
      platform: 'iOS',
      deskripsi:
          'Menjadi iOS developer merupakan pekerjaan yang diimpikan bagi banyak orang. Menurut data dari Indeed, salah satu platform pencari pekerjaan terbesar di dunia, tingkat kepuasan menjadi iOS developer itu 13% lebih tinggi dibandingkan dengan profesi Android Developer. The iOS Developer Community Survey menemukan bahwa di tahun 2019, 75.5% dari developer masih menggunakan codebase terpisah ketika aplikasinya perlu dapat dijalankan di berbagai platform yang berbeda (seperti OS Android dan iOS). Artinya banyak tempat kerja yang masih menginginkan codebase yang terpisah dan benar-benar dibangun dari Xcode. Oleh karena ini, permintaan industri untuk seorang iOS Developer masih sangat tinggi walaupun market share pengguna mobile platform iOS hanya sebesar 28.79% (data Statcounter, April 2020).',
      banner: 'images/banner_ios3.jpg',
      icon: 'images/ios3.jpg',
      level: 'Menengah',
      estimasi: 70),
];
