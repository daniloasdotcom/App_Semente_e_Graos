import 'package:flutter/material.dart';

class AnswerDetailPage extends StatelessWidget {
  final String questionTitle;
  final List<String> questionSuposition;
  final List<String> answerCorrect;
  final Widget commentPage;

  // ignore: prefer_const_constructors_in_immutables, use_key_in_widget_constructors
  AnswerDetailPage({
    required this.questionTitle,
    required this.questionSuposition,
    required this.answerCorrect,
    required this.commentPage,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        backgroundColor: const Color(0xFFBA6F4D),
        title: const Text(
          'Comentários da Resposta',
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontFamily: 'Merriweather',
          ),
        ),
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(16.0),
        children: [
          const Text(
            'Questão:',
            style: TextStyle(
                fontSize: 18,
                fontFamily: 'Merriweather',
                fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Text(questionTitle,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontSize: 14,
                height: 1.5,
                fontFamily: 'Merriweather',
              )),
          const SizedBox(height: 20),
          Visibility(
            visible: questionSuposition[0] != '1',
            child: Column(
              children: questionSuposition.map((supositions) {
                return Column(
                  children: [
                    Container(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        supositions,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                            fontSize: 14,
                            fontFamily: 'Merriweather',
                            color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 10), // Espaçamento entre os botões
                  ],
                );
              }).toList(),
            ),
          ),
          const SizedBox(height: 10),
          Container(
              margin: const EdgeInsets.only(left: 40, right: 40, top: 5),
              child: const Divider(
                thickness: 2,
              )),
          const SizedBox(height: 10),
          /*
          Column(
              children: answerCorrect.map((options) {
                return Column(
                  children: [
                    Container(
                      alignment: Alignment.bottomLeft,
                      child: Text(
                        options,
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                            fontSize: 14,
                            fontFamily: 'Merriweather',
                            color: Colors.black),
                      ),
                    ),
                    const SizedBox(height: 10), // Espaçamento entre os botões
                  ],
                );
              }).toList(),
            ),
            */
          const SizedBox(height: 20),
          const Text(
            'Resposta Correta:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          Column(
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                child: Text(
                  answerCorrect[0],
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                      fontSize: 14,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Merriweather',
                      color: Colors.black),
                ),
              ),
              const SizedBox(height: 10), // Espaçamento entre os botões
            ],
          ),
          const SizedBox(height: 10),
          Container(
              margin: const EdgeInsets.only(left: 40, right: 40, top: 5),
              child: const Divider(
                thickness: 2,
              )),
          const SizedBox(height: 10),
          const Text(
            'Comentário:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 10),
          commentPage,
          const SizedBox(height: 20),
          Container(
            margin: const EdgeInsets.only(left: 30, right: 30),
            child: ElevatedButton(
              onPressed: () {
                Navigator.pop(
                    context); // Volta para a página anterior (QuizPage)
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFBA6F4D),
                padding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              child: const Text(
                'Voltar ao Quiz',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Merriweather',
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
