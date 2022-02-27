
import 'package:flutter/material.dart';
import 'package:veritabaniodev/pages/home_page.dart';
import 'package:veritabaniodev/pages/kayit_page.dart';
import 'package:veritabaniodev/service/auth.dart';
import 'package:veritabaniodev/theme/color.dart';

import 'profil_page.dart';

class LoginPage extends StatefulWidget {
  
//şuan yeni kişi eklenebiliyor mu evet create nerede
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isHiddenPassword = true;

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  AuthService _authService = AuthService();




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
            Text("Hoşgeldiniz",style: TextStyle(color: white,fontSize: 40),),
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
                        decoration: const InputDecoration(
                          hintText: "Mail adresinizi giriniz",
                          hintStyle: TextStyle(color: Colors.grey),
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.grey,
                          ),
                        ),
                        controller: _emailController,
                      ),
                      TextFormField(
                        obscureText: isHiddenPassword,
                        decoration: InputDecoration(
                          suffixIcon: InkWell(
                            onTap: _togglePasswordView,
                            child: Icon(Icons.visibility),
                          ),
                          hintText: "Parolanızı giriniz",
                          hintStyle: TextStyle(color: Colors.grey),
                          prefixIcon: Icon(
                            Icons.lock,
                            color: Colors.grey,
                          )
                        ),
                        controller: _passwordController,
                      ),
                      InkWell(
                        onTap: (){
                          _authService
                          .signIn(_emailController.text, _passwordController.text)
                          .then((value) {
                            return Navigator.push(context, 
                            MaterialPageRoute(builder: (context) => HomePage()));
                          });
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: InkWell(
                            child: Container(
                              decoration: BoxDecoration(
                                color: darkblue,
                                borderRadius:  BorderRadius.all(Radius.circular(30))),
                              child: Padding(
                                padding: const EdgeInsets.all(5),
                                child: Center(
                                  child: Text("Giriş Yap",style: TextStyle(
                                color: white,
                                fontSize: 20,
                              ),),
                                ),
                              ),
                            ),
                            onTap: (){
                              _authService
                          .signIn(_emailController.text, _passwordController.text)
                          .then((value) {
                            return Navigator.push(context, 
                            MaterialPageRoute(builder: (context) => HomePage()));
                          });
                              //Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilPage()));
                            },
                          ),
                          
                        ),
                      ),
                      SizedBox(height: 20,),
                      InkWell(
                        onTap: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => KayitSayfasi()));

                        },
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Kayıt Ol" ,style: TextStyle(color: darkblue ,fontSize: 18),),
                          ),
                        ),
                      )
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
  void _togglePasswordView() {
    setState(() {
      isHiddenPassword = !isHiddenPassword;
    });
  }
}

