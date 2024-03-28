import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sementes_ufes/amendoim/questoes.amendoim.1to5.dart';
import 'package:sementes_ufes/quiz.page.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  final Uri _url = Uri.parse('https://bioquimicacomdanilo.com.br/politicaapp');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2E4650),
      body: Center(
        child: ListView(
          children: [
            Stack(children: [
              Container(
                padding: const EdgeInsets.only(
                    left: 40, right: 40, top: 100, bottom: 100),
                margin: const EdgeInsets.only(bottom: 10),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        'assets/images/fundo01.jpg'), // Replace with your image path
                    fit: BoxFit.cover, // You can adjust the fit as needed
                  ),
                ),
                foregroundDecoration: const BoxDecoration(
                  color: Color.fromRGBO(43, 70, 80, 0.6),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 40, right: 40, top: 40),
                child: const Column(
                  children: [
                    Text(
                      "Semente e Grãos",
                      style: TextStyle(
                          fontFamily: 'Merriweather',
                          fontSize: 30,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      "Seu aplicativo de estudo das disciplina do laboratórios de sementes e grãos",
                      style: TextStyle(
                          fontFamily: 'Merriweather',
                          fontSize: 13,
                          height: 1.5,
                          color: Colors.white),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ]),

            const SizedBox(height: 30),

            Container(
              margin: const EdgeInsets.only(left: 40, right: 40),
              child: const Divider(
                color: Colors.white, // Define a cor da linha
                thickness: 0.5, // Define a espessura da linha (opcional)
              ),
            ), // Botão de acesso às rotas metabólicas
            Container(
              margin: const EdgeInsets.only(left: 40, right: 40, top: 5),
              decoration: BoxDecoration(
                color: const Color(0xFF2E4650),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.book_outlined,
                  color: Color(0xFFE58E57),
                ),
                style: TextButton.styleFrom(
                  alignment: Alignment.centerLeft,
                  minimumSize: const Size(100, 50),
                ),
                label: const Text(
                  "Estudo Guiado",
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 12,
                      color: Colors.white),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 40, right: 40),
              child: const Divider(
                color: Colors.white, // Define a cor da linha
                thickness: 0.5, // Define a espessura da linha (opcional)
              ),
            ), // Botão de acesso às rotas metabólicas
            Container(
              margin: const EdgeInsets.only(left: 40, right: 40),
              decoration: BoxDecoration(
                color: const Color(0xFF2E4650),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton.icon(
                onPressed: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) => QuizPage(),
                    ),
                  );
                },
                icon: const Icon(
                  Icons.question_answer,
                  color: Color(0xFFE58E57),
                ),
                style: TextButton.styleFrom(
                  alignment: Alignment.centerLeft,
                  minimumSize: const Size(100, 50),
                ),
                label: const Text(
                  "Questões Comentadas",
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 12,
                      color: Colors.white),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 40, right: 40),
              child: const Divider(
                color: Colors.white, // Define a cor da linha
                thickness: 0.5, // Define a espessura da linha (opcional)
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 40, right: 40, top: 5),
              decoration: BoxDecoration(
                color: const Color(0xFF2E4650),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton.icon(
                onPressed: () {},
                icon: const Icon(
                  Icons.dashboard,
                  color: Color(0xFFE58E57),
                ),
                style: TextButton.styleFrom(
                  alignment: Alignment.centerLeft,
                  minimumSize: const Size(100, 50),
                ),
                label: const Text(
                  "FlashCards",
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 12,
                      color: Colors.white),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            // Botão de Acesso à Página de About
            Container(
              margin: const EdgeInsets.only(left: 40, right: 40),
              child: const Divider(
                color: Colors.white, // Define a cor da linha
                thickness: 0.5, // Define a espessura da linha (opcional)
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 40, right: 40),
              decoration: BoxDecoration(
                color: const Color(0xFF2E4650),
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextButton.icon(
                onPressed: () {},
                icon: const Icon(FontAwesomeIcons.rocket,
                    color: Color(0xFFE58E57)),
                style: TextButton.styleFrom(
                  alignment: Alignment.centerLeft,
                  minimumSize: const Size(100, 50),
                ),
                label: const Text(
                  "Sobre o Aplicativo",
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 12,
                      color: Colors.white),
                  textAlign: TextAlign.left,
                ),
              ),
            ),

            Container(
              margin: const EdgeInsets.only(left: 40, right: 40),
              child: const Divider(
                color: Colors.white, // Define a cor da linha
                thickness: 0.5, // Define a espessura da linha (opcional)
              ),
            ),
            const SizedBox(height: 40),
            Container(
              margin: const EdgeInsets.only(left: 40, right: 40),
              child: const Column(
                children: [
                  Text(
                    "Desenvolvido por",
                    style: TextStyle(
                        fontFamily: 'Merriweather',
                        fontSize: 14,
                        fontStyle: FontStyle.italic,
                        height: 1.5,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20, right: 20),
              child: const Column(
                children: [
                  Text(
                    "daniloas.com",
                    style: TextStyle(
                        fontFamily: 'Merriweather',
                        fontSize: 14,
                        height: 1.5,
                        color: Colors.white),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                _launchUrl();
              },
              child: const Text(
                "Política de Privacidade",
                style: TextStyle(
                    fontFamily: 'Merriweather',
                    fontSize: 14,
                    fontStyle: FontStyle.italic,
                    height: 1.5,
                    decoration: TextDecoration.underline,
                    decorationThickness: 2.0,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(_url)) {
      throw Exception('Could not launch $_url');
    }
  }
}
