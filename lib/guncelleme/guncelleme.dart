import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Guncelleme{
  FirebaseAuth auth = FirebaseAuth.instance;
  kullaniciAdSoyadIletisimGuncelleme(String t1, String t2, String t3,String t4) {
    var currentUser = FirebaseAuth.instance.currentUser!.email.toString();
    FirebaseFirestore.instance
        .collection("Veritabani")
        .doc("Kullanicilar")
        .collection("Kisisel Bilgiler")
        .doc(currentUser)
        .update({
      'KullaniciAd': t1,
      'KullaniciSoyad': t2,
      'KullaniciMail': t3,
      'KullaniciPass': t4,
      
    }).whenComplete(() => print("Kişi bilgisi Güncellendi"));
  }
  
  kullaniciEgitimGuncelleme(String t1, String t2, String t3) {
    var currentUser = FirebaseAuth.instance.currentUser!.email.toString();
    FirebaseFirestore.instance
        .collection("Veritabani")
        .doc("Kullanicilar")
        .collection("Egitim Bilgileri")
        .doc(currentUser)
        .update({
      'KullaniciOkul': t1,
      'KullaniciBolum': t2,
      'KullaniciSınıf': t3,
    }).whenComplete(
    () => print('Egitim Bilgisi Güncellendi'));
  }

  kullaniciRolGuncelleme(String t1, String t2, String t3) {
    var currentUser = FirebaseAuth.instance.currentUser!.email.toString();
    FirebaseFirestore.instance
        .collection("Veritabani")
        .doc("Kullanicilar")
        .collection("Rol Bilgileri")
        .doc(currentUser)
        .update({
      'KullaniciToplulukAdi': t1,
      'KullaniciEkipAdi': t2,
      'KullaniciRol': t3,
    }).whenComplete(() => print("Rol bilgisi Güncellendi"));
  }

  kullaniciSertifikaGuncelleme(String t1, String t2, String t3) {
    var currentUser = FirebaseAuth.instance.currentUser!.email.toString();
    FirebaseFirestore.instance
        .collection("Veritabani")
        .doc("Kullanicilar")
        .collection("Sertifika Bilgileri")
        .doc(currentUser)
        .update({
      'KullaniciSertfikaAdi': t1,
      'KullaniciVerenKurum': t2,
      'KullaniciAlınmaTarihi': t3,
    }).whenComplete(() => print("Rol Bilgisi Güncellendi"));
  }
  }