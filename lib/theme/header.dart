import 'package:flutter/material.dart';
import 'package:veritabaniodev/theme/color.dart';

class Header extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(bottom :14.0),
        child: Text("Hoşgeldiniz",style: TextStyle(color: white,fontSize: 40),),
      ),
    );
  }
}