import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:sementes_ufes/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class IntroductionScreenPage extends StatefulWidget {
  @override
  State<IntroductionScreenPage> createState() => _IntroductionScreenPageState();
}

class _IntroductionScreenPageState extends State<IntroductionScreenPage> {
  Future<void> _setSkipIntro() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('skipIntro', true);
  }

  List<PageViewModel> getPages(BuildContext context) {
    return [
      PageViewModel(
          title: "",
          decoration: const PageDecoration(
            titleTextStyle:
                TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
            bodyTextStyle: TextStyle(fontSize: 18.0),
            // Adicione um fundo verde à página personalizada
            boxDecoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
          bodyWidget: Center(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                      left: 40, right: 40, top: 50, bottom: 20),
                  child: const Text(
                    "O Aplicativo Oficial para você Aluno do Professor Danilo",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      height: 1.5,
                      fontSize: 16,
                      fontFamily: 'Merriweather',
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  width: 250, // Ajuste a largura desejada
                  height: 250, // Ajuste a altura desejada
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.all(Radius.circular(90)),
                    border: Border.all(
                      color: Colors.white,
                      width: 4.0,
                    ),
                  ),
                  child: Image.asset(
                    'assets/images/pic01.png',
                    fit: BoxFit.cover,
                    width: 150, // Ajuste a largura desejada
                    height: 150, // Ajuste a altura desejada
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      left: 40, right: 40, top: 30, bottom: 30),
                  child: const Text(
                    "Laboratório de Sementes e Grãos",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 24,
                      fontFamily: 'Merriweather',
                    ),
                  ),
                ),
              ],
            ),
          )),
      PageViewModel(
          title: "",
          decoration: const PageDecoration(
            titleTextStyle:
                TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
            bodyTextStyle: TextStyle(fontSize: 18.0),
            // Adicione um fundo verde à página personalizada
            boxDecoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
          bodyWidget: Column(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                width: 250, // Ajuste a largura desejada
                height: 250, // Ajuste a altura desejada
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(90)),
                  border: Border.all(
                    color: Colors.white,
                    width: 4.0,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(90)),
                  child: Image.asset(
                    'assets/images/pic01.png',
                    fit: BoxFit.cover,
                    width: 150, // Ajuste a largura desejada
                    height: 150, // Ajuste a altura desejada
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    left: 40, right: 40, top: 10, bottom: 30),
                child: const Column(children: [
                  Text(
                    "A cada questão estudada um novo aprendizado cultivado",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      height: 1.5,
                      fontSize: 14,
                      fontFamily: 'Merriweather',
                    ),
                  ),
                ]),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(40, 5, 40, 5),
                margin: const EdgeInsets.only(
                    left: 40, right: 40, top: 5, bottom: 30),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton.icon(
                  onPressed: () {
                    _navigateToHomePage(context);
                  },
                  icon: const Icon(Icons.home, color: Colors.white),
                  style: TextButton.styleFrom(
                    alignment: Alignment.centerLeft,
                    minimumSize: const Size(100, 50),
                  ),
                  label: const Text(
                    "Começar!",
                    style: TextStyle(
                        fontFamily: 'Merriweather',
                        fontSize: 12,
                        color: Colors.white),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(40, 5, 40, 5),
                margin: const EdgeInsets.only(left: 40, right: 40, top: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton.icon(
                  onPressed: () async {
                    await _setSkipIntro();
                    // ignore: duplicate_ignore
                    // ignore: use_build_context_synchronously
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                  icon: const Icon(FontAwesomeIcons.eyeSlash,
                      color: Colors.black),
                  style: TextButton.styleFrom(
                    alignment: Alignment.centerLeft,
                    minimumSize: const Size(100, 50),
                  ),
                  label: const Text(
                    "Já Entendi, Não Mostrar Mais",
                    style: TextStyle(
                        fontFamily: 'Merriweather',
                        fontSize: 12,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.black,
                        fontStyle: FontStyle.italic,
                        decorationStyle: TextDecorationStyle.solid,
                        color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          )),
      PageViewModel(
          title: "",
          decoration: const PageDecoration(
            titleTextStyle:
                TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
            bodyTextStyle: TextStyle(fontSize: 18.0),
            // Adicione um fundo verde à página personalizada
            boxDecoration: BoxDecoration(
              color: Colors.white,
            ),
          ),
          bodyWidget: Column(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                width: 200, // Ajuste a largura desejada
                height: 200, // Ajuste a altura desejada
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: const BorderRadius.all(Radius.circular(90)),
                  border: Border.all(
                    color: Colors.white,
                    width: 4.0,
                  ),
                ),
                child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(90)),
                  child: Image.asset(
                    'assets/images/pic01.png',
                    fit: BoxFit.cover,
                    width: 150, // Ajuste a largura desejada
                    height: 150, // Ajuste a altura desejada
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(
                    left: 40, right: 40, top: 30, bottom: 30),
                child: const Column(children: [
                  Text(
                    "Adquira a assinatura premium e fique mais perto da aprovação",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      height: 1.5,
                      fontSize: 14,
                      fontFamily: 'Merriweather',
                    ),
                  ),
                ]),
              ),
              Container(
                padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                margin: const EdgeInsets.only(
                    left: 40, right: 40, top: 5, bottom: 20),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton.icon(
                  onPressed: () {
                    _navigateToHomePage(context);
                  },
                  icon: const Icon(Icons.home, color: Colors.white),
                  style: TextButton.styleFrom(
                    alignment: Alignment.centerLeft,
                    minimumSize: const Size(100, 50),
                  ),
                  label: const Text(
                    "Testar Versão Gratuita",
                    style: TextStyle(
                        fontFamily: 'Merriweather',
                        fontSize: 12,
                        color: Colors.white),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              
              Container(
                padding: const EdgeInsets.fromLTRB(40, 5, 40, 5),
                margin: const EdgeInsets.only(left: 40, right: 40, top: 0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton.icon(
                  onPressed: () async {
                    await _setSkipIntro();
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                  icon: const Icon(FontAwesomeIcons.eyeSlash,
                      color: Colors.black),
                  style: TextButton.styleFrom(
                    alignment: Alignment.centerLeft,
                    minimumSize: const Size(100, 50),
                  ),
                  label: const Text(
                    "Já Entendi, Não Mostrar Mais",
                    style: TextStyle(
                        fontFamily: 'Merriweather',
                        fontSize: 12,
                        decoration: TextDecoration.underline,
                        decorationColor: Colors.black,
                        fontStyle: FontStyle.italic,
                        decorationStyle: TextDecorationStyle.solid,
                        color: Colors.black),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          )),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return IntroductionScreen(
      pages: getPages(context),
      onDone: () {
        // Navegue para a próxima tela após a introdução
        // Substitua este código com a navegação real do seu aplicativo
        _navigateToHomePage(context);
      },
      onSkip: () {
        // Navegue para a próxima tela após a introdução
        // Substitua este código com a navegação real do seu aplicativo
        _navigateToHomePage(context);
      },
      showSkipButton: true,
      skip: const Text(
        "Pular",
        style: TextStyle(color: Colors.white, fontFamily: 'Merriweather'),
      ),
      dotsContainerDecorator: const ShapeDecoration(
          color: Colors.blue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(0)),
          )),
      done: const Text(
        "Concluir",
        style: TextStyle(color: Colors.white, fontFamily: 'Merriweather'),
      ),
      next: const Icon(
        Icons.arrow_forward,
        color: Colors.white,
      ),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Colors.white,
        activeColor: Colors.white,
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }

  void _navigateToHomePage(BuildContext context) {
    Navigator.of(context).pushReplacement(
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => HomePage(),
        transitionDuration: const Duration(milliseconds: 1500),
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(0.0, 1.0);
          const end = Offset.zero;
          const curve = Curves.easeInOut;

          var tween = Tween(begin: begin, end: end).chain(
            CurveTween(curve: curve),
          );

          var offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
      ),
    );
  }
}