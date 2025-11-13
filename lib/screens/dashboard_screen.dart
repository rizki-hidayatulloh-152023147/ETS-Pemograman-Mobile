import 'package:flutter/material.dart';
import '../fragments/biodata_fragment.dart';
import '../fragments/kontak_fragment.dart';
import '../fragments/kalkulator_fragment.dart';
import '../fragments/cuaca_fragment.dart';
import '../fragments/berita_fragment.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key});

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  int _selectedIndex = 0;

  final List<Widget> _fragments = [
    const BiodataFragment(),
    const KontakFragment(),
    const KalkulatorFragment(),
    const CuacaFragment(),
    const BeritaFragment(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dashboard',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF6B5CE7),
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                Color(0xFF6B5CE7),
                Color(0xFF9D8DF1),
              ],
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF1A1B2E),
              Color(0xFF2D3250),
            ],
          ),
        ),
        child: _fragments[_selectedIndex],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Color(0xFF6B5CE7).withOpacity(0.3),
              blurRadius: 10,
              spreadRadius: 1,
            ),
          ],
        ),
        child: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Biodata',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.contacts),
              label: 'Kontak',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calculate),
              label: 'Kalkulator',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.wb_sunny),
              label: 'Cuaca',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.article),
              label: 'Berita',
            ),
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: Color(0xFF9D8DF1),
          unselectedItemColor: Colors.white54,
          backgroundColor: Color(0xFF2D3250),
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          elevation: 0,
        ),
      ),
    );
  }
}