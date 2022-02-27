

import 'package:flutter/material.dart';
import 'package:veritabaniodev/pages/roller_page.dart';
import 'package:veritabaniodev/pages/veritabani.dart';
import 'package:veritabaniodev/theme/color.dart';

class EgitimPage extends StatefulWidget {
  @override
  _EgitimPageState createState() => _EgitimPageState();
}

class _EgitimPageState extends State<EgitimPage> {
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();
  TextEditingController t3 = TextEditingController();
  TextEditingController t4 = TextEditingController();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: darkblue,
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 140,
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 14.0),
              child: Text(
                "Kayıt Oluştur",
                style: TextStyle(color: white, fontSize: 36),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 40.0, left: 28, right: 28),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Okulunuz",
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                        controller: t1,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Bölümünüz",
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                        controller: t2,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Sınıfınız",
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                        controller: t3,
                      ),
                      InkWell(
                      onTap: (){
                            VeritabaniIslemleri().kullaniciEgitim(t1.text, t2.text, t3.text,);
                            Navigator.push(context, MaterialPageRoute(builder: (context) => RollerPage()));
                      },
                      
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30))
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Center(child: Text(
                            "Kaydet",
                          style: TextStyle(fontSize: 20,color: darkblue),
                          ),),
                        ),
                      ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
