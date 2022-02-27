import 'package:flutter/material.dart';
import 'package:veritabaniodev/guncelleme/guncelleme.dart';
import 'package:veritabaniodev/pages/profil_page.dart';
import 'package:veritabaniodev/theme/color.dart';

class SertifikaGuncellemePage extends StatefulWidget {
  @override
  _SertifikaGuncellemePageState createState() => _SertifikaGuncellemePageState();
}

class _SertifikaGuncellemePageState extends State<SertifikaGuncellemePage> {
  TextEditingController t8 = TextEditingController();
  TextEditingController t9 = TextEditingController();
  TextEditingController t10 = TextEditingController();

  var gelenKullaniciSertifikaAdi = "";
  var gelenKullaniciVerenKurumAdi = "";
  var gelenKullaniciAlinmaTarihi = "";

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
                          hintText: "Sertifika Adı",
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                        controller: t8,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Veren Kurum",
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                        controller: t9,
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: "Alınma Tarihi",
                          hintStyle: TextStyle(color: Colors.grey),
                        ),
                        controller: t10,
                      ),
                      InkWell(
                      onTap: (){
                          Guncelleme().kullaniciSertifikaGuncelleme(t8.text, t9.text, t10.text,);
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