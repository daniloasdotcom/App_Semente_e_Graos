// ignore: unnecessary_import
// main.dart
// ignore_for_file: prefer_const_constructors, prefer_final_fields, prefer_const_constructors_in_immutables, use_key_in_widget_constructors, library_private_types_in_public_api

import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:sementes_ufes/amendoim/questoes.amendoim.6to10.dart';
import 'package:sementes_ufes/coments.model.dart';
import 'package:sementes_ufes/home.dart';
// Importe a classe Quiz

class AmendoimPage6to10 extends StatefulWidget {
  final QuizAmendoim6to10 quiz; // Adicione um parâmetro para a classe Quiz

  AmendoimPage6to10(this.quiz);

  @override
  _AmendoimPage6to10State createState() => _AmendoimPage6to10State();
}

class _AmendoimPage6to10State extends State<AmendoimPage6to10>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _opacityAnimation;

  bool shouldBlink = false; // Sua condição booleana
  int _questionIndex = 0;
  bool _mostrarBotao = false;

  List<Color> backgroundColors = [
    /*
    const Color(0xFFE6CEBC),
    const Color(0xFFE6CEBC),
    */
    Colors.white
  ];

  ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(
          milliseconds: 500), // Ajuste a duração conforme necessário
      reverseDuration: const Duration(milliseconds: 500),
    );

    _opacityAnimation =
        Tween<double>(begin: 0.5, end: 1.0).animate(_controller);

    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      } else if (status == AnimationStatus.dismissed) {
        _controller.forward();
      }
    });
  }

  void _nextQuestion() {
    setState(() {
      _mostrarBotao = false;
      _questionIndex = (_questionIndex + 1) % widget.quiz.questionsAmendoim6to10.length;
      _scrollController.animateTo(
        0.0,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  void _previousQuestion() {
    setState(() {
      _mostrarBotao = false;
      _questionIndex =
          (_questionIndex - 1 + widget.quiz.questionsAmendoim6to10.length) %
              widget.quiz.questionsAmendoim6to10.length;
      _scrollController.animateTo(
        0.0,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
      );
    });
  }

  void _answerQuestion(String selectedOption) {
    String correctAnswer =
        widget.quiz.questionsAmendoim6to10[_questionIndex]['correctAnswer'];
    bool isCorrect = selectedOption == correctAnswer;

    if (isCorrect) {
      // Rolar para o final ao clicar na resposta correta
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 1500),
        curve: Curves.easeInOut,
      );

      setState(() {
        _mostrarBotao = true;
      });

      shouldBlink = true;

      _controller.reset(); // Adicione esta linha para reiniciar a animação

      _controller.forward();
    }

    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(isCorrect ? 'Resposta Correta' : 'Resposta Errada'),
            content: Text(isCorrect
                ? 'Parabéns! Você acertou!'
                : 'Ops! Tente novamente.'),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  Navigator.pop(context); // Fecha o AlertDialog
                  // Remova a linha abaixo, pois não precisa mais resetar shouldBlink
                  // setState(() {
                  //   shouldBlink = false;
                  // });
                },
                child: const Text('OK'),
              ),
            ],
          );
        });
  }

  void _commentBlock(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Row(
            children: [
              Icon(
                FontAwesomeIcons.lock,
                color: Colors.red, // Cor do ícone (ajuste conforme necessário)
              ),
              SizedBox(width: 8),
              Text('Explicação\nBloqueada'),
            ],
          ),
          content:
              const Text('Clique na reposta correta e desbloquei a explicação'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(); // Fecha o AlertDialog
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void _showAnswerDetail() {
    String questionTitle = questionsAmendoim6to10[_questionIndex]['question'];
    List<String> questionSuposition = questionsAmendoim6to10[_questionIndex]['supositions'];
    List<String> answerCorrect = questionsAmendoim6to10[_questionIndex]['options'];
    String commentId = questionsAmendoim6to10[_questionIndex]['commentId'];

    Widget commentPage = commentPages[commentId] ?? Container();

    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation1, animation2) => AnswerDetailPage(
          questionSuposition: questionSuposition,
          questionTitle: questionTitle,
          commentPage: commentPage,
          answerCorrect: answerCorrect,
        ),
        transitionsBuilder: (context, animation1, animation2, child) {
          const begin = Offset(1.0, 0.0);
          const end = Offset.zero;
          const curve = Curves.easeInOut;

          var tween =
              Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          var offsetAnimation = animation1.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
        transitionDuration: const Duration(milliseconds: 1500),
      ),
    );
  }

  Column _showImageQuestion() {
    String? images = widget.quiz.questionsAmendoim6to10[_questionIndex]['images'];

    if (images != null) {
      Widget imagesQuestion = imageQuestions[images] ?? Container();

      return Column(
        children: [
          Container(
            child: imagesQuestion,
          ),
          const SizedBox(height: 20),
        ],
      );
    } else {
      return const Column(); // Se não houver imagem, retorna um conjunto vazio
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<String> options =
        List.from(widget.quiz.questionsAmendoim6to10[_questionIndex]['options']);
    options.shuffle();

    List<String> supositions =
        List.from(widget.quiz.questionsAmendoim6to10[_questionIndex]['supositions']);

    return Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor:
            backgroundColors[_questionIndex % backgroundColors.length],
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.black,
          ),
          centerTitle: true,
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 0,
              ),
              Text("Caderno de\nFisiologia Vegetal",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontFamily: 'Merriweather',
                      fontSize: 18,
                      color: Colors.black)),
            ],
          ),
          flexibleSpace: ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(color: Colors.transparent),
            ),
          ),
          backgroundColor: Colors.grey.withAlpha(150),
          toolbarHeight: 80,
          elevation: 0,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(0),
                  bottomRight: Radius.circular(0))),

          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.home,
                color: Colors.black,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return HomePage();
                }));
              },
            )
          ],
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.blue,
              onPressed: _previousQuestion,
              child: const Icon(Icons.skip_previous, color: Colors.white),
            ),
            const SizedBox(
                width: 16), // Ajuste o espaçamento conforme necessário
            FloatingActionButton(
              backgroundColor: Colors.blue,
              onPressed: _nextQuestion,
              child: const Icon(Icons.skip_next, color: Colors.white),
            ),
          ],
        ),
        body: Container(
          color: backgroundColors[_questionIndex % backgroundColors.length],
          child: ListView(
            controller: _scrollController,
            physics: const BouncingScrollPhysics(),
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Questão ${_questionIndex + 6}',
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                        fontFamily: 'Merriweather',
                        color: Colors.black,
                        fontSize: 17,
                      ),
                    ),
                    Container(
                      margin:
                          const EdgeInsets.only(left: 75, right: 75, top: 5),
                      height: 2,
                      color: Colors.grey[500], // Cor da linha
                    ),
                    const SizedBox(height: 20),
                    Text(
                      '${widget.quiz.questionsAmendoim6to10[_questionIndex]['question']}',
                      textAlign: TextAlign.justify,
                      style: const TextStyle(
                          fontSize: 14,
                          height: 1.5,
                          fontFamily: 'Merriweather',
                          color: Colors.black),
                    ),
                    const SizedBox(height: 20),
                    _showImageQuestion(),
                    Visibility(
                      visible: supositions[0] != '1',
                      child: Column(
                        children: supositions.map((supositions) {
                          return Column(
                            children: [
                              Container(
                                alignment: Alignment.bottomLeft,
                                child: Text(
                                  supositions,
                                  textAlign: TextAlign.justify,
                                  style: const TextStyle(
                                      fontSize: 14,
                                      height: 1.5,
                                      fontFamily: 'Merriweather',
                                      color: Colors.black),
                                ),
                              ),
                              const SizedBox(
                                  height: 10), // Espaçamento entre os botões
                            ],
                          );
                        }).toList(),
                      ),
                    ),
                    Column(
                      children: options.map((option) {
                        return Column(
                          children: [
                            Container(
                              alignment: Alignment.center,
                              padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
                              child: ElevatedButton(
                                onPressed: () => _answerQuestion(option),
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        10.0), // Define o raio da borda como 0.0
                                  ),
                                  backgroundColor: Color(0xFFE6CEBC),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 15),
                                ),
                                child: Text(
                                  option,
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 14,
                                      fontFamily: 'Merriweather'),
                                ),
                              ),
                            ),
                            const SizedBox(
                                height: 10), // Espaçamento entre os botões
                          ],
                        );
                      }).toList(),
                    ),
                    _mostrarBotao
                        ? Column(children: [
                            const Divider(thickness: 3, color: Colors.black),
                            const SizedBox(height: 20),
                            AnimatedBuilder(
                                animation: _opacityAnimation,
                                builder: (context, child) {
                                  return Opacity(
                                    opacity: _mostrarBotao
                                        ? _opacityAnimation.value
                                        : 1.0,
                                    child: ElevatedButton(
                                        onPressed: () {
                                          _showAnswerDetail();
                                        },
                                        style: ElevatedButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                10.0), // Ajuste o raio conforme necessário
                                            side: const BorderSide(
                                                color: Colors.black, width: .5),
                                          ),
                                          elevation:
                                              15, // Controla a altura da sombra
                                          shadowColor: Colors.black,
                                          backgroundColor: Colors.green,
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 30, vertical: 15),
                                        ),
                                        child: const Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Icon(
                                              FontAwesomeIcons.lockOpen,
                                              size: 30,
                                              color: Colors.white,
                                            ),
                                            SizedBox(width: 12),
                                            Text(
                                              'Explicação Desbloqueada',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                  fontFamily: 'Merriweather'),
                                            ),
                                          ],
                                        )),
                                  );
                                }),
                            const SizedBox(height: 20)
                          ])
                        : Column(children: [
                            const Divider(thickness: 3, color: Colors.black),
                            const SizedBox(height: 20),
                            ElevatedButton(
                                onPressed: () => _commentBlock(context),
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(
                                        10.0), // Ajuste o raio conforme necessário
                                    side: const BorderSide(
                                        color: Colors.black, width: .5),
                                  ),
                                  elevation: 15, // Controla a altura da sombra
                                  shadowColor: Colors.black,
                                  backgroundColor: Colors.blue,
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 15),
                                ),
                                child: const Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    Icon(
                                      FontAwesomeIcons.lock,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                    SizedBox(width: 12),
                                    Text(
                                      'Explicação',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 14,
                                          fontFamily: 'Merriweather'),
                                    ),
                                  ],
                                )),
                            const SizedBox(height: 20)
                          ]),
                    const Divider(thickness: 3, color: Colors.black),
                    const SizedBox(height: 20),
                    /*
                    ElevatedButton(
                        onPressed: _nextQuestion,
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFBA6F4D),
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 15),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: const [
                            Text(
                              'Próxima Questão',
                              style: TextStyle(
                                  fontSize: 14, fontFamily: 'Merriweather'),
                            ),
                            SizedBox(width: 12),
                            Icon(
                              Icons.skip_next,
                              size: 30,
                            ),
                          ],
                        )),

                      */
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
