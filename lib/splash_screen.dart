import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Delay selama 3 detik untuk menampilkan splash screen
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/login');
    });
  }

   @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        // Ganti bagian ini dengan kode untuk menampilkan gambar logo dari assets
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/app1.png'),
            //SizedBox(height: 10), // Jarak antara gambar dan teks
            Text(
              'Versi 0.10.0',
              style: TextStyle(fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}



