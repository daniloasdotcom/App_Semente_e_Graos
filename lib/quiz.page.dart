// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sementes_ufes/amendoim/amendoim.list.dart';
import 'package:sementes_ufes/home.dart';
import 'package:url_launcher/url_launcher.dart';

class QuizPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF49426E),
      body: Row(
        children: [
          Container(
            width: 60, // Largura da barra lateral
            color: const Color(0xFF322E53),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Coloque os itens da barra lateral aqui
                IconButton(
                  icon: const Icon(Icons.home, color: Color(0xFFF1C28E), size: 30,),
                  onPressed: () {
                    Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                        builder: (context) => HomePage(),
                      ),
                    );
                  },
                ),
                const SizedBox(height: 20),
                IconButton(
                  icon: const Icon(FontAwesomeIcons.globe, color: Color(0xFFF1C28E)),
                  onPressed: () {
                    // Substitua o URL fictício pelo link real do Facebook
                    // ignore: deprecated_member_use
                    launch(
                        'https://daniloasdotcom.github.io/sementes-e-graos/');
                  },
                ),
                const SizedBox(height: 20),
                IconButton(
                  icon:
                      const Icon(FontAwesomeIcons.youtube, color: Color(0xFFF1C28E)),
                  onPressed: () {
                    // Substitua o URL fictício pelo link real do Twitter
                    // ignore: deprecated_member_use
                    launch(
                        'https://www.youtube.com/channel/UC0UymNZAzHWkoyTyAgc0lgg?view_as=subscriber');
                  },
                ), // Adicione outros ícones ou widgets conforme necessário
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                const SizedBox(height: 80),
                Container(
                  padding: const EdgeInsets.only(left: 40, right: 40),
                  child: const Text(
                    'Cadernos de questões\ncomentadas',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Merriweather',
                        color: Color(0xFFF1C28E),
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 75, right: 75, top: 5),
                  height: 2,
                  color: Colors.grey[500], // Cor da linha
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 0),
                    child: Scrollbar(
                      thumbVisibility: true,
                      child: ListView(
                          physics: const BouncingScrollPhysics(),
                          scrollDirection: Axis.vertical,
                          children: [
                            Container(
                              height: 70,
                              margin:
                                  const EdgeInsets.only(left: 20, right: 20),
                              decoration: BoxDecoration(
                                color: const Color(0xFFF1C28E),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextButton.icon(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder:
                                          (context, animation1, animation2) =>
                                              AmendoimList(),
                                      transitionsBuilder: (context, animation1,
                                          animation2, child) {
                                        const begin = Offset(1.0, 0.0);
                                        const end = Offset.zero;
                                        const curve = Curves.easeInOut;

                                        var tween = Tween(
                                                begin: begin, end: end)
                                            .chain(CurveTween(curve: curve));
                                        var offsetAnimation =
                                            animation1.drive(tween);

                                        return SlideTransition(
                                          position: offsetAnimation,
                                          child: child,
                                        );
                                      },
                                      transitionDuration:
                                          const Duration(milliseconds: 1500),
                                    ),
                                  );
                                },
                                icon: const Row(
                                  children: [
                                    SizedBox(width: 8),
                                    Icon(FontAwesomeIcons.bookOpen,
                                        color: Color(0xFF322E53)),
                                    SizedBox(
                                        width:
                                            8), // Espaço entre o ícone e o texto
                                  ],
                                ),
                                style: TextButton.styleFrom(
                                  alignment: Alignment.centerLeft,
                                  minimumSize: const Size(100, 50),
                                ),
                                label: const Text(
                                  "Ecofisiologia do Amendoim",
                                  style: TextStyle(
                                    fontFamily: 'Merriweather',
                                    fontSize: 12,
                                    color: Color(0xFF322E53),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 70,
                              margin:
                                  const EdgeInsets.only(left: 20, right: 20),
                              decoration: BoxDecoration(
                                color: const Color(0xFFF1C28E),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextButton.icon(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder:
                                          (context, animation1, animation2) =>
                                              AmendoimList(),
                                      transitionsBuilder: (context, animation1,
                                          animation2, child) {
                                        const begin = Offset(1.0, 0.0);
                                        const end = Offset.zero;
                                        const curve = Curves.easeInOut;

                                        var tween = Tween(
                                                begin: begin, end: end)
                                            .chain(CurveTween(curve: curve));
                                        var offsetAnimation =
                                            animation1.drive(tween);

                                        return SlideTransition(
                                          position: offsetAnimation,
                                          child: child,
                                        );
                                      },
                                      transitionDuration:
                                          const Duration(milliseconds: 1500),
                                    ),
                                  );
                                },
                                icon: const Row(
                                  children: [
                                    SizedBox(width: 8),
                                    Icon(FontAwesomeIcons.bookOpen,
                                        color: Color(0xFF322E53)),
                                    SizedBox(
                                        width:
                                            8), // Espaço entre o ícone e o texto
                                  ],
                                ),
                                style: TextButton.styleFrom(
                                  alignment: Alignment.centerLeft,
                                  minimumSize: const Size(100, 50),
                                ),
                                label: const Text(
                                  "Ecofisiologia do Girassol",
                                  style: TextStyle(
                                    fontFamily: 'Merriweather',
                                    fontSize: 12,
                                    color: Color(0xFF322E53),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 70,
                              margin:
                                  const EdgeInsets.only(left: 20, right: 20),
                              decoration: BoxDecoration(
                                color: const Color(0xFFF1C28E),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextButton.icon(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder:
                                          (context, animation1, animation2) =>
                                              AmendoimList(),
                                      transitionsBuilder: (context, animation1,
                                          animation2, child) {
                                        const begin = Offset(1.0, 0.0);
                                        const end = Offset.zero;
                                        const curve = Curves.easeInOut;

                                        var tween = Tween(
                                                begin: begin, end: end)
                                            .chain(CurveTween(curve: curve));
                                        var offsetAnimation =
                                            animation1.drive(tween);

                                        return SlideTransition(
                                          position: offsetAnimation,
                                          child: child,
                                        );
                                      },
                                      transitionDuration:
                                          const Duration(milliseconds: 1500),
                                    ),
                                  );
                                },
                                icon: const Row(
                                  children: [
                                    SizedBox(width: 8),
                                    Icon(FontAwesomeIcons.bookOpen,
                                        color: Color(0xFF322E53)),
                                    SizedBox(
                                        width:
                                            8), // Espaço entre o ícone e o texto
                                  ],
                                ),
                                style: TextButton.styleFrom(
                                  alignment: Alignment.centerLeft,
                                  minimumSize: const Size(100, 50),
                                ),
                                label: const Text(
                                  "Ecofisiologia do Trigo",
                                  style: TextStyle(
                                    fontFamily: 'Merriweather',
                                    fontSize: 12,
                                    color: Color(0xFF322E53),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 70,
                              margin:
                                  const EdgeInsets.only(left: 20, right: 20),
                              decoration: BoxDecoration(
                                color: const Color(0xFFF1C28E),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextButton.icon(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder:
                                          (context, animation1, animation2) =>
                                              AmendoimList(),
                                      transitionsBuilder: (context, animation1,
                                          animation2, child) {
                                        const begin = Offset(1.0, 0.0);
                                        const end = Offset.zero;
                                        const curve = Curves.easeInOut;

                                        var tween = Tween(
                                                begin: begin, end: end)
                                            .chain(CurveTween(curve: curve));
                                        var offsetAnimation =
                                            animation1.drive(tween);

                                        return SlideTransition(
                                          position: offsetAnimation,
                                          child: child,
                                        );
                                      },
                                      transitionDuration:
                                          const Duration(milliseconds: 1500),
                                    ),
                                  );
                                },
                                icon: const Row(
                                  children: [
                                    SizedBox(width: 8),
                                    Icon(FontAwesomeIcons.bookOpen,
                                        color: Color(0xFF322E53)),
                                    SizedBox(
                                        width:
                                            8), // Espaço entre o ícone e o texto
                                  ],
                                ),
                                style: TextButton.styleFrom(
                                  alignment: Alignment.centerLeft,
                                  minimumSize: const Size(100, 50),
                                ),
                                label: const Text(
                                  "Tecnologia e Produção de Sementes Sintéticas",
                                  style: TextStyle(
                                    fontFamily: 'Merriweather',
                                    fontSize: 12,
                                    color: Color(0xFF322E53),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 70,
                              margin:
                                  const EdgeInsets.only(left: 20, right: 20),
                              decoration: BoxDecoration(
                                color: const Color(0xFFF1C28E),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextButton.icon(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder:
                                          (context, animation1, animation2) =>
                                              AmendoimList(),
                                      transitionsBuilder: (context, animation1,
                                          animation2, child) {
                                        const begin = Offset(1.0, 0.0);
                                        const end = Offset.zero;
                                        const curve = Curves.easeInOut;

                                        var tween = Tween(
                                                begin: begin, end: end)
                                            .chain(CurveTween(curve: curve));
                                        var offsetAnimation =
                                            animation1.drive(tween);

                                        return SlideTransition(
                                          position: offsetAnimation,
                                          child: child,
                                        );
                                      },
                                      transitionDuration:
                                          const Duration(milliseconds: 1500),
                                    ),
                                  );
                                },
                                icon: const Row(
                                  children: [
                                    SizedBox(width: 8),
                                    Icon(FontAwesomeIcons.bookOpen,
                                        color: Color(0xFF322E53)),
                                    SizedBox(
                                        width:
                                            8), // Espaço entre o ícone e o texto
                                  ],
                                ),
                                style: TextButton.styleFrom(
                                  alignment: Alignment.centerLeft,
                                  minimumSize: const Size(100, 50),
                                ),
                                label: const Text(
                                  "Tecnologia e Produção de\nSementes Orgânicas",
                                  style: TextStyle(
                                    fontFamily: 'Merriweather',
                                    fontSize: 12,
                                    color: Color(0xFF322E53),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 70,
                              margin:
                                  const EdgeInsets.only(left: 20, right: 20),
                              decoration: BoxDecoration(
                                color: const Color(0xFFF1C28E),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextButton.icon(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder:
                                          (context, animation1, animation2) =>
                                              AmendoimList(),
                                      transitionsBuilder: (context, animation1,
                                          animation2, child) {
                                        const begin = Offset(1.0, 0.0);
                                        const end = Offset.zero;
                                        const curve = Curves.easeInOut;

                                        var tween = Tween(
                                                begin: begin, end: end)
                                            .chain(CurveTween(curve: curve));
                                        var offsetAnimation =
                                            animation1.drive(tween);

                                        return SlideTransition(
                                          position: offsetAnimation,
                                          child: child,
                                        );
                                      },
                                      transitionDuration:
                                          const Duration(milliseconds: 1500),
                                    ),
                                  );
                                },
                                icon: const Row(
                                  children: [
                                    SizedBox(width: 8),
                                    Icon(FontAwesomeIcons.bookOpen,
                                        color: Color(0xFF322E53)),
                                    SizedBox(
                                        width:
                                            8), // Espaço entre o ícone e o texto
                                  ],
                                ),
                                style: TextButton.styleFrom(
                                  alignment: Alignment.centerLeft,
                                  minimumSize: const Size(100, 50),
                                ),
                                label: const Text(
                                  "Produção orgânica de trigo, girassol e amendoim",
                                  style: TextStyle(
                                    fontFamily: 'Merriweather',
                                    fontSize: 12,
                                    color: Color(0xFF322E53),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 70,
                              margin:
                                  const EdgeInsets.only(left: 20, right: 20),
                              decoration: BoxDecoration(
                                color: const Color(0xFFF1C28E),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextButton.icon(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder:
                                          (context, animation1, animation2) =>
                                              AmendoimList(),
                                      transitionsBuilder: (context, animation1,
                                          animation2, child) {
                                        const begin = Offset(1.0, 0.0);
                                        const end = Offset.zero;
                                        const curve = Curves.easeInOut;

                                        var tween = Tween(
                                                begin: begin, end: end)
                                            .chain(CurveTween(curve: curve));
                                        var offsetAnimation =
                                            animation1.drive(tween);

                                        return SlideTransition(
                                          position: offsetAnimation,
                                          child: child,
                                        );
                                      },
                                      transitionDuration:
                                          const Duration(milliseconds: 1500),
                                    ),
                                  );
                                },
                                icon: const Row(
                                  children: [
                                    SizedBox(width: 8),
                                    Icon(FontAwesomeIcons.bookOpen,
                                        color: Color(0xFF322E53)),
                                    SizedBox(
                                        width:
                                            8), // Espaço entre o ícone e o texto
                                  ],
                                ),
                                style: TextButton.styleFrom(
                                  alignment: Alignment.centerLeft,
                                  minimumSize: const Size(100, 50),
                                ),
                                label: const Text(
                                  "Hormônios na fisiologia das sementes",
                                  style: TextStyle(
                                    fontFamily: 'Merriweather',
                                    fontSize: 12,
                                    color: Color(0xFF322E53),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 70,
                              margin:
                                  const EdgeInsets.only(left: 20, right: 20),
                              decoration: BoxDecoration(
                                color: const Color(0xFFF1C28E),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextButton.icon(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder:
                                          (context, animation1, animation2) =>
                                              AmendoimList(),
                                      transitionsBuilder: (context, animation1,
                                          animation2, child) {
                                        const begin = Offset(1.0, 0.0);
                                        const end = Offset.zero;
                                        const curve = Curves.easeInOut;

                                        var tween = Tween(
                                                begin: begin, end: end)
                                            .chain(CurveTween(curve: curve));
                                        var offsetAnimation =
                                            animation1.drive(tween);

                                        return SlideTransition(
                                          position: offsetAnimation,
                                          child: child,
                                        );
                                      },
                                      transitionDuration:
                                          const Duration(milliseconds: 1500),
                                    ),
                                  );
                                },
                                icon: const Row(
                                  children: [
                                    SizedBox(width: 8),
                                    Icon(FontAwesomeIcons.bookOpen,
                                        color: Color(0xFF322E53)),
                                    SizedBox(
                                        width:
                                            8), // Espaço entre o ícone e o texto
                                  ],
                                ),
                                style: TextButton.styleFrom(
                                  alignment: Alignment.centerLeft,
                                  minimumSize: const Size(100, 50),
                                ),
                                label: const Text(
                                  "Secagem e Armazenamento de Grãos de Trigo, Girassol e Amendoim",
                                  style: TextStyle(
                                    fontFamily: 'Merriweather',
                                    fontSize: 12,
                                    color: Color(0xFF322E53),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(left: 20, right: 20),
                              decoration: BoxDecoration(
                                color: const Color(0xFFF1C28E),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextButton.icon(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder:
                                          (context, animation1, animation2) =>
                                              AmendoimList(),
                                      transitionsBuilder: (context, animation1,
                                          animation2, child) {
                                        const begin = Offset(1.0, 0.0);
                                        const end = Offset.zero;
                                        const curve = Curves.easeInOut;

                                        var tween = Tween(
                                                begin: begin, end: end)
                                            .chain(CurveTween(curve: curve));
                                        var offsetAnimation =
                                            animation1.drive(tween);

                                        return SlideTransition(
                                          position: offsetAnimation,
                                          child: child,
                                        );
                                      },
                                      transitionDuration:
                                          const Duration(milliseconds: 1500),
                                    ),
                                  );
                                },
                                icon: const Row(
                                  children: [
                                    SizedBox(width: 8),
                                    Icon(FontAwesomeIcons.bookOpen,
                                        color: Color(0xFF322E53)),
                                    SizedBox(
                                        width:
                                            8), // Espaço entre o ícone e o texto
                                  ],
                                ),
                                style: TextButton.styleFrom(
                                  alignment: Alignment.centerLeft,
                                  minimumSize: const Size(100, 50),
                                ),
                                label: const Text(
                                  "Agricultura de Precisão Aplicada a Produção de Trigo, Girassol e Amendoim",
                                  style: TextStyle(
                                    fontFamily: 'Merriweather',
                                    fontSize: 12,
                                    color: Color(0xFF322E53),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Container(
                              margin:
                                  const EdgeInsets.only(left: 20, right: 20),
                              decoration: BoxDecoration(
                                color: const Color(0xFFF1C28E),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextButton.icon(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder:
                                          (context, animation1, animation2) =>
                                              AmendoimList(),
                                      transitionsBuilder: (context, animation1,
                                          animation2, child) {
                                        const begin = Offset(1.0, 0.0);
                                        const end = Offset.zero;
                                        const curve = Curves.easeInOut;

                                        var tween = Tween(
                                                begin: begin, end: end)
                                            .chain(CurveTween(curve: curve));
                                        var offsetAnimation =
                                            animation1.drive(tween);

                                        return SlideTransition(
                                          position: offsetAnimation,
                                          child: child,
                                        );
                                      },
                                      transitionDuration:
                                          const Duration(milliseconds: 1500),
                                    ),
                                  );
                                },
                                icon: const Row(
                                  children: [
                                    SizedBox(width: 8),
                                    Icon(FontAwesomeIcons.bookOpen,
                                        color: Color(0xFF322E53)),
                                    SizedBox(
                                        width:
                                            8), // Espaço entre o ícone e o texto
                                  ],
                                ),
                                style: TextButton.styleFrom(
                                  alignment: Alignment.centerLeft,
                                  minimumSize: const Size(100, 50),
                                ),
                                label: const Text(
                                  "Aplicação de Radiação Ionizante na Análise e Produção de Sementes",
                                  style: TextStyle(
                                    fontFamily: 'Merriweather',
                                    fontSize: 12,
                                    color: Color(0xFF322E53),
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            )
                          ]),
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 75, right: 75, top: 0),
                  height: 2,
                  color: Colors.grey[500], // Cor da linha
                ),
                const SizedBox(
                  height: 40,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
