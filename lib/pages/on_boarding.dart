// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:mvp_all/pages/home.dart';
import 'package:mvp_all/styles/colors/colors_views.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int page = 0;
  List<Map<String, String>> onBoardingDatos = [
    {
      "text": "ESPARCIMIENTO",
      "text1": "Brindamos todos los servicios para consetir a tu mascota.",
      "image": "assets/images/B1.png",
    },
    {
      "text": "ADOPCIÓN",
      "text1":
          "Nulla faucibus tellus ut odio scelerisque,vitae molestie lectus feugiat.",
      "image": "assets/images/B2.png",
    },
    {
      "text": "HOSPITALIDAD",
      "text1":
          "el lugar donde tu mascota sera muy bien atendida",
      "image": "assets/images/B3.png",
    },
    {
      "text": "VETERINARIA",
      "text1":
          "Nulla faucibus tellus ut odio scelerisque,vitae molestie lectus feugiat.",
      "image": "assets/images/B4.png",
    },
    {
      "text": "TIENDA",
      "text1":
          "Nulla faucibus tellus ut odio scelerisque,vitae molestie lectus feugiat.",
      "image": "assets/images/B5.png",
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Expanded(
                  flex: 4,
                  child: PageView.builder(
                      onPageChanged: (value) {
                        setState(() {
                          page = value;
                        });
                      },
                      itemCount: onBoardingDatos.length,
                      itemBuilder: (context, index) => ContentBoarding(
                            text: onBoardingDatos[index]["text"],
                            text1: onBoardingDatos[index]["text1"],
                            image: onBoardingDatos[index]["image"],
                          ))),
              Expanded(
                flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        onBoardingDatos.length,
                        (index) => newMethod(index: index),
                      ),
                    ),
                    _button(page, (onBoardingDatos.length - 1), context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  AnimatedContainer newMethod({int index}) {
    return AnimatedContainer(
      height: 4,
      margin: const EdgeInsets.all(1),
      width: page == index ? 20 : 12,
      decoration: BoxDecoration(
        color: page == index ? ColorsSelect.sliderColor : ColorsSelect.txtBoSubHe,
        borderRadius: BorderRadius.circular(3),
      ),
      duration: kThemeAnimationDuration,
    );
  }
}

_button(int index, int size, BuildContext context) {
  return Container(
    height: 45,
    width: 300,
    decoration: BoxDecoration(
      color: ColorsSelect.btnBackgroundBo1,
      borderRadius: BorderRadius.circular(5),
      border: Border.all(
        color: index == size
            ? ColorsSelect.btnBackgroundBo2
            : ColorsSelect.borderContainer,
      ),
    ),
    child: ElevatedButton(
      onPressed: () {
        if(index == size)
        {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const HomeApp(),
            ),
          );
        }
      },
      child: Text(
        index == size ? "Continuar" : "Siguiente",
        style: TextStyle(
            color: index == size
                ? ColorsSelect.textButton2
                : ColorsSelect.textButton1,
            fontSize: 16),
      ),
      style: ElevatedButton.styleFrom(
        primary: index == size
            ? ColorsSelect.btnBackgroundBo2
            : ColorsSelect.btnBackgroundBo1,
        fixedSize: const Size(300, 45),
        elevation: 0,
      ),
    ),
  );
}

class ContentBoarding extends StatelessWidget {
  const ContentBoarding({
    Key key,
    this.text,
    this.text1,
    this.image,
  });

  final text, text1, image;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image.asset(
              image,
              width: 290,
              height: 290,
            ),
            Text(
              text,
              style: const TextStyle(color: ColorsSelect.txtBohe, fontSize: 21),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Text(
                text1,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: ColorsSelect.txtBoSubHe,
                  fontSize: 15,
                ),
              ),
            )
          ],
        )
      ],
    );
  }
}
