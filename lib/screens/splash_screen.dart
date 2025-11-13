import 'package:flutter/material.dart';
import 'dart:async';
import 'dashboard_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const DashboardScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF6B5CE7), // Ungu
              Color(0xFF4A3F8F), // Ungu gelap
              Color(0xFF2D3250), // Hitam kebiruan
              Color(0xFF1A1B2E), // Hitam
            ],
            stops: [0.0, 0.3, 0.7, 1.0],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Foto Profile
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Color(0xFF9D8DF1), width: 4),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xFF6B5CE7).withOpacity(0.5),
                      blurRadius: 20,
                      spreadRadius: 5,
                    ),
                  ],
                ),
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('aset/image/kasep.jpg'),
                ),
              ),
              const SizedBox(height: 30),
              
              // Judul Aplikasi
              const Text(
                'UTS Mobile App',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 10),
              
              // NIM
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                decoration: BoxDecoration(
                  color: Color(0xFF2D3250),
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    color: Color(0xFF9D8DF1).withOpacity(0.5),
                  ),
                ),
                child: const Text(
                  'NRP: 152023147',
                  style: TextStyle(
                    fontSize: 18,
                    color: Color(0xFF9D8DF1),
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(height: 15),
              
              // Nama
              const Text(
                'Rizki Hidayatulloh',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 40),
              
              // Loading Indicator
              const CircularProgressIndicator(
                color: Color(0xFF9D8DF1),
                strokeWidth: 3,
              ),
              const SizedBox(height: 15),
              const Text(
                'Loading...',
                style: TextStyle(
                  color: Colors.white70,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}