

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/home/home_body.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.black,
        elevation: 0,
        title: Text('مرحبا بكم في متجر الالكترونيات',
        style: GoogleFonts.getFont('Almarai'),
        ),
        centerTitle: false,
        actions: [
          IconButton(onPressed: (){
          }, icon: const Icon(Icons.menu))

        ],
      ),
      body: const HomeBody(),
    );

  }
}
