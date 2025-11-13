import 'package:flutter/material.dart';

class News {
  final String title;
  final String source;
  final String time;
  final String category;
  final Color categoryColor;

  News({
    required this.title,
    required this.source,
    required this.time,
    required this.category,
    required this.categoryColor,
  });
}

class BeritaFragment extends StatelessWidget {
  const BeritaFragment({super.key});

  @override
  Widget build(BuildContext context) {
    final List<News> newsList = [
      News(
        title: 'Perkembangan Teknologi AI Semakin Pesat di Indonesia',
        source: 'TechNews',
        time: '2 jam yang lalu',
        category: 'Teknologi',
        categoryColor: Color(0xFF9D8DF1),
      ),
      News(
        title: 'Ekonomi Digital Indonesia Diprediksi Tumbuh 20% di 2025',
        source: 'EkonomiToday',
        time: '3 jam yang lalu',
        category: 'Ekonomi',
        categoryColor: Color(0xFF4CAF50),
      ),
      News(
        title: 'Universitas Negeri Buka Program Beasiswa Penuh untuk Mahasiswa',
        source: 'PendidikanID',
        time: '5 jam yang lalu',
        category: 'Pendidikan',
        categoryColor: Color(0xFFFF9800),
      ),
      News(
        title: 'Timnas Indonesia Raih Kemenangan Gemilang di Piala AFF',
        source: 'SportNews',
        time: '6 jam yang lalu',
        category: 'Olahraga',
        categoryColor: Color(0xFFF44336),
      ),
      News(
        title: 'Pengembangan Smart City di Jakarta Masuki Tahap Kedua',
        source: 'MetroNews',
        time: '8 jam yang lalu',
        category: 'Teknologi',
        categoryColor: Color(0xFF9D8DF1),
      ),
      News(
        title: 'Festival Budaya Nusantara 2025 Akan Digelar di 10 Kota',
        source: 'BudayaNews',
        time: '10 jam yang lalu',
        category: 'Budaya',
        categoryColor: Color(0xFFB8A3FF),
      ),
      News(
        title: 'Startup Lokal Raih Pendanaan 100 Miliar dari Investor Asing',
        source: 'StartupDaily',
        time: '12 jam yang lalu',
        category: 'Bisnis',
        categoryColor: Color(0xFF00BCD4),
      ),
      News(
        title: 'Peneliti Indonesia Temukan Metode Baru Pengolahan Sampah',
        source: 'SainsNews',
        time: '1 hari yang lalu',
        category: 'Sains',
        categoryColor: Color(0xFF6B5CE7),
      ),
      News(
        title: 'Pemerintah Luncurkan Program Digitalisasi UMKM Nasional',
        source: 'BisnisToday',
        time: '1 hari yang lalu',
        category: 'Bisnis',
        categoryColor: Color(0xFF00BCD4),
      ),
      News(
        title: 'Konser Musik Indie Terbesar Akan Digelar di Bandung',
        source: 'MusicNews',
        time: '1 hari yang lalu',
        category: 'Hiburan',
        categoryColor: Color(0xFFE91E63),
      ),
      News(
        title: 'Inovasi Energi Terbarukan di Indonesia Mendapat Apresiasi Dunia',
        source: 'EnergyDaily',
        time: '2 hari yang lalu',
        category: 'Lingkungan',
        categoryColor: Color(0xFF8BC34A),
      ),
      News(
        title: 'Program Vaksinasi Nasional Capai Target 90 Persen',
        source: 'HealthNews',
        time: '2 hari yang lalu',
        category: 'Kesehatan',
        categoryColor: Color(0xFF00BCD4),
      ),
      News(
        title: 'Film Indonesia Raih Penghargaan di Festival Film Internasional',
        source: 'CinemaNews',
        time: '2 hari yang lalu',
        category: 'Hiburan',
        categoryColor: Color(0xFFE91E63),
      ),
      News(
        title: 'Peluncuran Satelit Komunikasi Buatan Indonesia Sukses',
        source: 'SpaceNews',
        time: '3 hari yang lalu',
        category: 'Teknologi',
        categoryColor: Color(0xFF9D8DF1),
      ),
      News(
        title: 'Pariwisata Indonesia Alami Peningkatan Wisatawan 40 Persen',
        source: 'TravelNews',
        time: '3 hari yang lalu',
        category: 'Pariwisata',
        categoryColor: Color(0xFFFFC107),
      ),
    ];

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF6B5CE7).withOpacity(0.3),
                Color(0xFF2D3250),
              ],
            ),
          ),
          child: Row(
            children: [
              Icon(Icons.article, color: Color(0xFF9D8DF1)),
              const SizedBox(width: 10),
              const Text(
                'Berita Terkini',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const Spacer(),
              TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.refresh, size: 18, color: Color(0xFF9D8DF1)),
                label: Text(
                  'Refresh',
                  style: TextStyle(color: Color(0xFF9D8DF1)),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: newsList.length,
            itemBuilder: (context, index) {
              final news = newsList[index];
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                elevation: 4,
                color: Color(0xFF2D3250),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                  side: BorderSide(
                    color: Color(0xFF6B5CE7).withOpacity(0.2),
                  ),
                ),
                child: InkWell(
                  onTap: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text('Membuka: ${news.title}'),
                        backgroundColor: Color(0xFF6B5CE7),
                      ),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Icon berita
                        Container(
                          width: 60,
                          height: 60,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                news.categoryColor.withOpacity(0.6),
                                news.categoryColor.withOpacity(0.3),
                              ],
                            ),
                            borderRadius: BorderRadius.circular(8),
                            boxShadow: [
                              BoxShadow(
                                color: news.categoryColor.withOpacity(0.3),
                                blurRadius: 8,
                                spreadRadius: 1,
                              ),
                            ],
                          ),
                          child: Icon(
                            Icons.article_outlined,
                            color: news.categoryColor,
                            size: 30,
                          ),
                        ),
                        const SizedBox(width: 12),
                        // Konten berita
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Kategori
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                  vertical: 4,
                                ),
                                decoration: BoxDecoration(
                                  color: news.categoryColor.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(4),
                                  border: Border.all(
                                    color: news.categoryColor.withOpacity(0.5),
                                  ),
                                ),
                                child: Text(
                                  news.category,
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: news.categoryColor,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              const SizedBox(height: 6),
                              // Judul
                              Text(
                                news.title,
                                style: const TextStyle(
                                  fontSize: 15,
                                  fontWeight: FontWeight.w600,
                                  height: 1.3,
                                  color: Colors.white,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                              const SizedBox(height: 8),
                              // Sumber dan waktu
                              Row(
                                children: [
                                  Icon(
                                    Icons.source,
                                    size: 14,
                                    color: Color(0xFF9D8DF1),
                                  ),
                                  const SizedBox(width: 4),
                                  Text(
                                    news.source,
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: Colors.white60,
                                    ),
                                  ),
                                  const SizedBox(width: 12),
                                  Icon(
                                    Icons.access_time,
                                    size: 14,
                                    color: Color(0xFF9D8DF1),
                                  ),
                                  const SizedBox(width: 4),
                                  Expanded(
                                    child: Text(
                                      news.time,
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.white60,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        // Bookmark icon
                        Container(
                          decoration: BoxDecoration(
                            color: Color(0xFF6B5CE7).withOpacity(0.2),
                            shape: BoxShape.circle,
                          ),
                          child: IconButton(
                            icon: const Icon(Icons.bookmark_border),
                            color: Color(0xFF9D8DF1),
                            iconSize: 20,
                            onPressed: () {
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  content: const Text('Ditambahkan ke bookmark'),
                                  duration: Duration(seconds: 1),
                                  backgroundColor: Color(0xFF6B5CE7),
                                ),
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}