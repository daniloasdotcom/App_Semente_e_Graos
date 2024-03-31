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
              color: Color(0xFF49426E),
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
                      color: Color(0xFFF1C28E),
                      height: 1.5,
                      fontSize: 16,
                      fontFamily: 'Merriweather',
                    ),
                  ),
                ),
               Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                width: 200, // Ajuste a largura desejada
                height: 200, // Ajuste a altura desejada
                alignment: Alignment.center,
                child: const Icon(
                  FontAwesomeIcons.chalkboardUser,
                  color: Color(0xFFF1C28E),
                  size: 150,
                ),
              ),
                Container(
                  margin: const EdgeInsets.only(
                      left: 40, right: 40, top: 30, bottom: 30),
                  child: const Text(
                    "Laboratório de Sementes e Grãos",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFFF1C28E),
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
              color: Color(0xFF49426E),
            ),
          ),
          bodyWidget: Column(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                width: 200, // Ajuste a largura desejada
                height: 200, // Ajuste a altura desejada
                alignment: Alignment.center,
                child: const Icon(
                  FontAwesomeIcons.seedling   ,
                  color: Color(0xFFF1C28E),
                  size: 150,
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
                      color: Color(0xFFF1C28E),
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
                  color: Color(0xFFF1C28E),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton.icon(
                  onPressed: () {
                    _navigateToHomePage01(context);
                  },
                  icon: const Icon(Icons.home, color: Color(0xFF322E53)),
                  style: TextButton.styleFrom(
                    alignment: Alignment.centerLeft,
                    minimumSize: const Size(100, 50),
                  ),
                  label: const Text(
                    "Começar!",
                    style: TextStyle(
                        fontFamily: 'Merriweather',
                        fontSize: 12,
                        color: Color(0xFF322E53)),
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
                      color: Color(0xFFF1C28E),),
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
                        decorationColor: Color(0xFFF1C28E),
                        fontStyle: FontStyle.italic,
                        decorationStyle: TextDecorationStyle.solid,
                        color: Color(0xFFF1C28E),),
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
        _navigateToHomePage01(context);
      },
      onSkip: () {
        // Navegue para a próxima tela após a introdução
        // Substitua este código com a navegação real do seu aplicativo
        _navigateToHomePage01(context);
      },
      showSkipButton: true,
      skip: const Text(
        "Pular",
        style: TextStyle(color: Color(0xFF322E53), fontFamily: 'Merriweather'),
      ),
      dotsContainerDecorator: const ShapeDecoration(
          color:Color(0xFFF1C28E),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(0)),
          )),
      done: const Text(
        "Concluir",
        style: TextStyle(color: Color(0xFF322E53), fontFamily: 'Merriweather'),
      ),
      next: const Icon(
        Icons.arrow_forward,
        color: Color(0xFF322E53),
      ),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        color: Color(0xFF322E53),
        activeColor: Color(0xFF322E53),
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }

  void _navigateToHomePage01(BuildContext context) {
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
