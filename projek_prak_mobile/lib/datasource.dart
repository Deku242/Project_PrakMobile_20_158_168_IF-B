import 'package:flutter/material.dart';

Color primaryBlack = const Color(0xff202c3b);

class DataSource {
  static String quote =
      "Nothing in life is to be feared, it is only to be understood. Now is the time to understand more, so that we may fear less.";

  static List questionAnswers = [
    {
      "question": "Apa itu virus corona??",
      "answer":
          "Coronavirus adalah keluarga besar virus yang dapat menyebabkan penyakit pada hewan atau manusia. Pada manusia, beberapa virus corona diketahui menyebabkan infeksi saluran pernapasan mulai dari flu biasa hingga penyakit yang lebih parah seperti Middle East Respiratory Syndrome (MERS) dan Severe Acute Respiratory Syndrome (SARS). Coronavirus yang paling baru ditemukan menyebabkan penyakit coronavirus COVID-19."
    },
    {
      "question": "Apa itu COVID-19??",
      "answer":
          "COVID-19 adalah penyakit menular yang disebabkan oleh coronavirus yang paling baru ditemukan. Virus dan penyakit baru ini tidak diketahui sebelum wabah dimulai di Wuhan, China, pada Desember 2019."
    },
    {
      "question": "Apa saja gejala COVID-19??",
      "answer":
          "Gejala COVID-19 yang paling umum adalah demam, kelelahan, dan batuk kering. Beberapa pasien mungkin mengalami sakit dan nyeri, hidung tersumbat, pilek, sakit tenggorokan atau diare. Gejala-gejala ini biasanya ringan dan dimulai secara bertahap. Beberapa orang terinfeksi tetapi tidak menunjukkan gejala apa pun dan tidak merasa tidak enak badan. Kebanyakan orang (sekitar 80%) sembuh dari penyakit tanpa memerlukan perawatan khusus. Sekitar 1 dari setiap 6 orang yang terkena COVID-19 menjadi sakit parah dan mengalami kesulitan bernapas. Orang yang lebih tua, dan mereka yang memiliki masalah medis mendasar seperti tekanan darah tinggi, masalah jantung atau diabetes, lebih mungkin mengembangkan penyakit serius. Orang dengan demam, batuk dan kesulitan bernapas harus mencari perhatian medis."
    },
    {
      "question": "Bagaimana COVID-19 dapat menyebar?",
      "answer":
          "Orang dapat tertular COVID-19 dari orang lain yang memiliki virus. Penyakit ini dapat menyebar dari orang ke orang melalui tetesan kecil dari hidung atau mulut yang menyebar ketika seseorang dengan COVID-19 batuk atau menghembuskan napas. Tetesan ini mendarat di benda dan permukaan di sekitar orang tersebut. Orang lain kemudian tertular COVID-19 dengan menyentuh benda atau permukaan tersebut, lalu menyentuh mata, hidung, atau mulut mereka. Orang juga dapat tertular COVID-19 jika mereka menghirup tetesan dari seseorang dengan COVID-19 yang batuk atau menghembuskan tetesan. Inilah sebabnya mengapa penting untuk menjaga jarak lebih dari 1 meter (3 kaki) dari orang yang sakit. \nWHO sedang menilai penelitian yang sedang berlangsung tentang cara COVID-19 menyebar dan akan terus membagikan temuan terbaru."
    },
    {
      "question": "Apakah virus penyebab COVID-19 bisa menular melalui udara?",
      "answer":
          "Studi hingga saat ini menunjukkan bahwa virus yang menyebabkan COVID-19 terutama ditularkan melalui kontak dengan tetesan pernapasan daripada melalui udara"
    },
    {
      "question":
          "Bisakah CoVID-19 ditangkap dari orang yang tidak memiliki gejala??",
      "answer":
          "Cara utama penyebaran penyakit ini adalah melalui tetesan pernapasan yang dikeluarkan oleh seseorang yang sedang batuk. Risiko tertular COVID-19 dari seseorang tanpa gejala sama sekali sangat rendah. Namun, banyak orang dengan COVID-19 hanya mengalami gejala ringan. Ini terutama benar pada tahap awal penyakit. Oleh karena itu, dimungkinkan untuk tertular COVID-19 dari seseorang yang, misalnya, hanya batuk ringan dan tidak merasa sakit. WHO sedang menilai penelitian yang sedang berlangsung tentang periode penularan COVID-19 dan akan terus membagikan temuan terbaru."
    },
    {
      "question": "Seberapa besar kemungkinan kita dapat tertular COVID-19?",
      "answer":
          "Risikonya tergantung di mana Anda berada - dan lebih khusus lagi, apakah ada wabah COVID-19 yang sedang berlangsung di sana.\nBagi sebagian besar orang di sebagian besar lokasi, risiko tertular COVID-19 masih rendah. Namun, sekarang ada tempat di seluruh dunia (kota atau daerah) di mana penyakit ini menyebar. Bagi orang yang tinggal di, atau berkunjung, daerah-daerah tersebut risiko tertular COVID-19 lebih tinggi. Pemerintah dan otoritas kesehatan mengambil tindakan tegas setiap kali kasus baru COVID-19 diidentifikasi. Pastikan untuk mematuhi pembatasan lokal tentang perjalanan, pergerakan, atau pertemuan besar. Bekerja sama dalam upaya pengendalian penyakit akan mengurangi risiko Anda terkena atau menyebarkan COVID-19.\nWabah COVID-19 dapat dibendung dan penularan dapat dihentikan, seperti yang telah ditunjukkan di China dan beberapa negara lain. Sayangnya, wabah baru dapat muncul dengan cepat. Sangat penting untuk menyadari situasi di mana Anda berada atau berniat untuk pergi. WHO menerbitkan pembaruan harian tentang situasi COVID-19 di seluruh dunia."
    },
    {
      "question": "Siapa yang berisiko terkena penyakit parah??",
      "answer":
          "Sementara kita masih mempelajari tentang bagaimana COVID-2019 mempengaruhi orang, orang tua dan orang dengan kondisi medis yang sudah ada sebelumnya (seperti tekanan darah tinggi, penyakit jantung, penyakit paru-paru, kanker atau diabetes) tampaknya lebih sering mengembangkan penyakit serius daripada yang lain."
    },
    {
      "question":
          "Haruskah saya memakai masker untuk melindungi diri saya sendiri?",
      "answer":
          "Gunakan masker hanya jika Anda sakit dengan gejala COVID-19 (terutama batuk) atau merawat seseorang yang mungkin mengidap COVID-19. Masker wajah sekali pakai hanya dapat digunakan sekali. Jika Anda tidak sakit atau merawat seseorang yang sakit maka Anda membuang-buang masker. Ada kekurangan masker di seluruh dunia, jadi WHO mendesak orang untuk menggunakan masker dengan bijak.\nWHO menyarankan penggunaan masker medis yang rasional untuk menghindari pemborosan sumber daya yang berharga dan penyalahgunaan masker\nCara paling efektif untuk melindungi diri sendiri dan orang lain pencegahan COVID-19 adalah dengan sering membersihkan tangan, menutup batuk dengan siku atau tisu dan menjaga jarak minimal 1 meter (3 kaki) dari orang yang batuk atau bersin."
    },
    {
      "question":
          "Apakah antibiotik efektif dalam mencegah atau mengobati COVID-19??",
      "answer":
          "Tidak. Antibiotik tidak bekerja melawan virus, mereka hanya bekerja pada infeksi bakteri. COVID-19 disebabkan oleh virus, jadi antibiotik tidak berfungsi. Antibiotik tidak boleh digunakan sebagai sarana pencegahan atau pengobatan COVID-19. Mereka hanya boleh digunakan seperti yang diarahkan oleh dokter untuk mengobati infeksi bakteri."
    }
  ];
}
