import 'package:flutter/material.dart';
import 'package:veritabaniodev/guncelleme/guncelleme.dart';
import 'package:veritabaniodev/pages/profil_page.dart';
import 'package:veritabaniodev/theme/color.dart';

class RollerGuncellemePage extends StatefulWidget {
  @override
  _RollerGuncellemePageState createState() => _RollerGuncellemePageState();
}

class _RollerGuncellemePageState extends State<RollerGuncellemePage> {
  TextEditingController t5 = TextEditingController();
  TextEditingController t6 = TextEditingController();
  TextEditingController t7 = TextEditingController();

  var gelenKullaniciToplulukAdi = "";
  var gelenKullaniciEkipAdi = "";
  var gelenKullaniciRol = "";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          color: darkblue,
        ),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 140,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 14.0),
              child: Text(
                "Güncelle",
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
                          hintText: "Topluluk Adınız",
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                        controller: t5,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Ekip Adınız",
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                        controller: t6,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Ekipteki Rolünüz",
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                        controller: t7,
                      ),
                      InkWell(
                      onTap: (){
                          Guncelleme().kullaniciRolGuncelleme(t5.text, t6.text, t7.text,);
                          Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilPage()));
                      },
                      
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(30))
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(5),
                          child: Center(child: Text(
                            "Güncelle",
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