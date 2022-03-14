import 'package:flutter/material.dart';
import 'package:mvp_all/styles/colors/colors_home_page.dart';

void main() {
  runApp(const HomeApp());
}

class HomeApp extends StatelessWidget {
  const HomeApp({Key key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        backgroundColor: ColorHomePage.backgroundHome,
        body: Column(
          children: [
            Center(
              child: Container(
                height: 150,
                margin: const EdgeInsets.only(left: 24, right: 24, top: 50),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images_home/splash.png'),
                  ),
                ),
              ),
            ),
            Container(
              width: 300,
              height: 48,
              margin: const EdgeInsets.only(bottom: 20, top: 50),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color:  ColorHomePage.btnGoogleSing ),
              child: Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    margin: const EdgeInsets.only(left: 20, right: 35),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images_home/google.png'),
                      ),
                    ),
                  ),
                  const Text(
                    'Continuar con Google',
                    style: TextStyle(
                      color: ColorHomePage.textColorBtn,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: 300,
              height: 48,
              margin: const EdgeInsets.only(bottom: 30),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: ColorHomePage.btnFacebook
                ),
              child: Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    margin: const EdgeInsets.only(left: 22, right: 27.5),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images_home/facebook.png'),
                      ),
                    ),
                  ),
                  const Text(
                    'Continuar con Facebook',
                    style: TextStyle(
                      fontSize: 14,
                      color: ColorHomePage.textColorBtn,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 300,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                color: Colors.white,
                border: Border.all(
                  color: ColorHomePage.outlineBtnRegister,
                  width: 3,
                ),
              ),
              child: Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 22.5, right: 31),
                    child: const Icon(
                      Icons.mail,
                      color: ColorHomePage.iconMail,
                      size: 30,
                    ),
                  ),
                  const Text(
                    'Registrarse con e-mail',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: ColorHomePage.txtColorMail,
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: 300,
              height: 48,
              alignment: Alignment.bottomCenter,
              margin: const EdgeInsets.only(top: 20,bottom: 9),
              color: Colors.white,
              child: const Text(
                'Entrar como invitado ',
                style: TextStyle(
                  color: ColorHomePage.textBtnInvited,
                  fontSize: 13,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              width: 300,
              height: 48,
              alignment: Alignment.topCenter,
              color: Colors.white,
              child: const Text(
                'Entrar como vendedor ',
                style: TextStyle(
                  color: ColorHomePage.txtBtnSelling,
                  fontWeight: FontWeight.bold,
                  fontSize: 13,
                ),
              ),
            ),
            Container(
              width: 300,
              height: 48,
              alignment: Alignment.center,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                   Padding(
                     padding: EdgeInsets.only(right: 2.5),
                     child: Text(
                      '¿Ya tienes una cuenta?',
                      style: TextStyle(
                        color: ColorHomePage.txtBtnAccount,
                        fontSize: 13,
                      ),
                  ),
                   ),
                  Padding(
                    padding: EdgeInsets.only(left: 2.5),
                    child: Text(
                      'Iniciar sesión',
                      style: TextStyle(
                        color: ColorHomePage.textBtnInvited,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
