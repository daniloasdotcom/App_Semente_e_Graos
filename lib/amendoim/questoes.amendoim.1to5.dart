// quiz.dart
// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';

class QuizAmendoim1to5 {
  List<Map<String, dynamic>> questionsAmendoim1to5;

  QuizAmendoim1to5(this.questionsAmendoim1to5) {
    questionsAmendoim1to5.shuffle(); // Embaralha a ordem das perguntas ao criar o quiz
  }
}

// Lista de perguntas e respostas
List<Map<String, dynamic>> questionsAmendoim1to5 = [
  //Questão 01
  {
    'question':
        '(UFMT-2021) Toda planta que se desenvolve em locais não desejados pode ser classificada como invasora e ocasionar redução de produtividade da cultura de interesse em decorrência de competição interespecífica. Dessa forma, a competição em que a ação inibidora é exercida por uma planta sobre outra por meio de substâncias químicas, podendo promover a inibição da germinação e crescimento, principalmente em plântulas ou ainda anomalias morfológicas diversas, é comumente conhecida como competição...',
    'supositions': ['1', '2', '3', '4'],
    'images': '',
    'options': ['Alelopática', 'Pela água.', 'Por nutrientes', 'Por luz'],
    'correctAnswer': 'Alelopática',
    'commentId': 'comment_1',
  },
  //Questão 02
  {
    'question':
        '(UFSC-2022) A fotossíntese é um processo fotoquímico por meio do qual as plantas, algas e cianobactérias convertem energia luminosa em energia química para síntese de compostos orgânicos. Assinale a alternativa correta sobre esse importante processo.',
    'supositions': ['1', '2', '3', '4'],
    'images': '',
    'options': [
      'O comprimento de onda está inversamente relacionado com a frequência e a quantidade de energia da luz',
      'A clorofila b é encontrada caracteristicamente em cianobactérias',
      'Nos eucariotos, a fotossíntese ocorre em grânulos, ligados diretamente à membrana plasmática',
      'O comprimento de onda está diretamente relacionado com a frequência e a quantidade de energia da luz',
      'A síntese de ATP a partir de ADP e Pi só ocorre na presença de luz'
    ],
    'correctAnswer':
        'O comprimento de onda está inversamente relacionado com a frequência e a quantidade de energia da luz',
    'commentId': 'comment_2',
  },
  //Questão 03
  {
    'question':
        '(UFSC-2022) O balanço hídrico nos vegetais é determinante de produtividade. Em relação ao tema, assinale a alternativa correta.',
    'supositions': ['1', '2', '3', '4'],
    'images': '',
    'options': [
      'Uma pressão hidrostática negativa na água do solo diminui seu potencial hídrico. A maior parte da água se move no solo por fluxo de massa.',
      'No xilema do caule e da folha, a água se move por difusão',
      'Nas folhas, a água se move a curtas distâncias, por isso a resistência à passagem desta (resistência hidráulica) é baixa neste órgão do vegetal',
      'O movimento da água da folha para a atmosfera se dá por fluxo de massa.',
      'Na raiz, a água se move pelas rotas apoplástica (via plasmodesmos), simplástica (sem atravessar as membranas das células) e transmembrana (via membrana plasmática).'
    ],
    'correctAnswer':
        'Uma pressão hidrostática negativa na água do solo diminui seu potencial hídrico. A maior parte da água se move no solo por fluxo de massa.',
    'commentId': 'comment_3',
  },
  //Questão 04
  {
    'question':
        '(UFC-2018) Plantas com superprodução de citocinina exibem várias características que indicam seu papel na fisiologia e no desenvolvimento vegetal. Quais das características abaixo são associadas à superprodução de citocininas: ',
    'supositions': [
      '1) Os meristemas apicais das partes aéreas apresentam mais folhas',
      '2) Plantas atrofiadas com entrenós muito curtos;',
      '3) As folhas possuem baixo nível de clorofila e geralmente são mais amareladas;',
      '4) O enraizamento de estacas caulinares é reduzido, assim como a taxa de crescimento da raiz',
      '5) A dominância apical é muito elevada.\n\nAssinale a opção correta.'
    ],
    'images': '',
    'options': [
      'Somente são associadas as características 1, 2 e 4',
      'Somente são associadas as características 3 e 5.',
      'Somente são associadas as características 1, 2, 4 e 5',
      'Todas são associadas à superprodução de citocininas',
      'Nenhuma delas é associada à superprodução de citocininas'
    ],
    'correctAnswer': 'Somente são associadas as características 1, 2 e 4',
    'commentId': 'comment_4',
  },
  //Questão 05
  {
    'question':
        '(UFC-2018) Os hormônios/reguladores vegetais são substâncias, simples ou complexas, que atuam em concentrações baixas para estimular, inibir ou modificar, de algum modo, processos fisiológicos específicos. Associe os hormônios/reguladores vegetais com suas respectivas funções apresentadas a seguir:',
    'supositions': [
      '1) Giberelina ',
      '2) Etileno',
      '3) Citocinina',
      '4) Auxina',
      '5) Ácido abscísico',
      '------------------',
      '(_) aumenta a taxa de senescência foliar.',
      '(_) regula a dominância apical.',
      '(_) retarda a senescência foliar.',
      '(_) inibição da germinação precoce e a viviparidade.',
      '(_) influencia a iniciação floral e a determinação do sexo.',
      'Assinale abaixo, a opção que contém a sequência que correlaciona, corretamente, os cinco hormônios/reguladores às suas respectivas funções.'
    ],
    'images': '',
    'options': [
      '2, 4, 3, 5, 1 ',
      '5, 2, 3, 4, 1',
      '5, 4, 2, 1, 3',
      '2, 4, 3, 1, 5',
      '2, 5, 1, 4, 3'
    ],
    'correctAnswer': '2, 4, 3, 5, 1 ',
    'commentId': 'comment_5',
  },
];

Map<String, Widget> commentPages = {
  'comment_1': MyCommentPage1(),
  'comment_2': MyCommentPage2(),
  'comment_3': MyCommentPage3(),
  'comment_4': MyCommentPage4(),
  'comment_5': MyCommentPage5(),
  // Adicione mais páginas de comentário conforme necessário
};

class MyCommentPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
            'A resposta correta, "Alelopática", está relacionada ao fenômeno da alelopatia, que envolve a liberação de substâncias químicas por uma planta que afetam o crescimento, desenvolvimento ou germinação de outras plantas ao seu redor. Este é um mecanismo que pode levar à inibição de processos vitais em outras plantas, como germinação de sementes e crescimento de plântulas.',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 14,
              height: 2.0,
              fontFamily: 'Merriweather',
            )),
        SizedBox(height: 30),
        Text(
            'A alelopatia é um fenômeno interessante na ecologia das plantas e tem implicações importantes na dinâmica das comunidades vegetais. Esse processo pode influenciar a composição e a estrutura das comunidades de plantas em ecossistemas, afetando a distribuição e a abundância de diferentes espécies.',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 14,
              height: 2.0,
              fontFamily: 'Merriweather',
            )),
        SizedBox(height: 30),
      ],
    );
  }
}

class MyCommentPage2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Text(
            'A sentença destaca a relação inversa entre o comprimento de onda e a frequência da luz, indicando que comprimentos de onda mais curtos estão associados a frequências mais altas e, consequentemente, a uma maior quantidade de energia. Isso é fundamental para entender fenômenos como a dispersão da luz, espectros eletromagnéticos e a interação da luz com a matéria, como é o caso da fotossíntese.',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 14,
              height: 2.0,
              fontFamily: 'Merriweather',
            )),
        SizedBox(height: 30),
        Text(
            'Quanto menor o comprimento de onda da luz, maior será sua frequência, e vice-versa. Essa relação é expressa pela equação:',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 14,
              height: 2.0,
              fontFamily: 'Merriweather',
            )),
        SizedBox(height: 30),
        Text('c=λ⋅ν',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 22,
              height: 2.0,
              fontFamily: 'Merriweather',
            )),
        SizedBox(height: 30),
        Text('onde:',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 14,
              height: 2.0,
              fontFamily: 'Merriweather',
            )),
        SizedBox(height: 30),
        Text('c é a velocidade da luz no vácuo,',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 14,
              height: 2.0,
              fontFamily: 'Merriweather',
            )),
        SizedBox(height: 30),
        Text('λ é o comprimento de onda da luz,',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 14,
              height: 2.0,
              fontFamily: 'Merriweather',
            )),
        SizedBox(height: 30),
        Text('ν é a frequência da luz',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 14,
              height: 2.0,
              fontFamily: 'Merriweather',
            )),
        SizedBox(height: 30),
        /* 
        Container(
          padding:
              const EdgeInsets.only(left: 40, right: 40, top: 100, bottom: 100),
          margin: const EdgeInsets.only(bottom: 10),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                  'assets/images/lipidios/lipidios.png'), // Replace with your image path
              fit: BoxFit.contain, // You can adjust the fit as needed
            ),
          ),
        ),
        */
      ],
    );
  }
}

class MyCommentPage3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
            'A resposta correta destaca a relação entre a pressão hidrostática na água do solo, o potencial hídrico e o movimento da água no solo.',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 14,
              height: 2.0,
              fontFamily: 'Merriweather',
            )),
        const SizedBox(height: 30),
        EasyRichText(
          "Pressão hidrostática negativa na água do solo diminui seu potencial hídrico: Extamente, pois o potencial hidríco é o resultado do somátório de diferentes tipos de potenciais. Sendo assim um potencial negativo, como é o caso da pressão hidrostática negativa mencionada na altarnativa, resultará em diminuição do potencial hídrico.",
          textAlign: TextAlign.justify,
          defaultStyle: const TextStyle(
            height: 2,
            color: Colors.black,
            fontFamily: 'Merriweather',
          ),
          patternList: [
            EasyRichTextPattern(
              targetString:
                  'Pressão hidrostática negativa na água do solo diminui seu potencial hídrico:',
              style: const TextStyle(
                height: 1.5,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontFamily: 'Merriweather',
              ),
            ),
          ],
        ),
        const SizedBox(height: 30),
        EasyRichText(
          "A maior parte da água se move no solo por fluxo de massa: O movimento da água no solo é influenciado por diversos processos, e o fluxo de massa é um deles. O fluxo de massa ocorre quando a água se move através dos poros do solo devido a uma diferença de potencial hídrico. Essa explicação destaca a importância desse processo no transporte eficiente de água no solo, o que é crucial para o balanço hídrico e, por conseguinte, para a produtividade das plantas.",
          textAlign: TextAlign.justify,
          defaultStyle: const TextStyle(
            height: 2,
            color: Colors.black,
            fontFamily: 'Merriweather',
          ),
          patternList: [
            EasyRichTextPattern(
              targetString:
                  'A maior parte da água se move no solo por fluxo de massa:',
              style: const TextStyle(
                height: 1.5,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontFamily: 'Merriweather',
              ),
            ),
          ],
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}

class MyCommentPage4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
            'Apenas as características 1, 2 e 4 estão relacionadas à superprodução de citocininas em plantas. Vamos analisar cada uma dessas características:',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 14,
              height: 2.0,
              fontFamily: 'Merriweather',
            )),
        const SizedBox(height: 30),
        EasyRichText(
          "Estimulação da divisão celular: As citocininas são conhecidas por estimular a divisão celular, promovendo o crescimento e desenvolvimento vegetal.",
          textAlign: TextAlign.justify,
          defaultStyle: const TextStyle(
            height: 2,
            color: Colors.black,
            fontFamily: 'Merriweather',
          ),
          patternList: [
            EasyRichTextPattern(
              targetString: 'Estimulação da divisão celular:',
              style: const TextStyle(
                height: 1.5,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontFamily: 'Merriweather',
              ),
            ),
          ],
        ),
        const SizedBox(height: 30),
        EasyRichText(
          "Retardamento do envelhecimento de folhas: As citocininas também desempenham um papel na inibição do envelhecimento das folhas, prolongando sua vida útil.",
          textAlign: TextAlign.justify,
          defaultStyle: const TextStyle(
            height: 2,
            color: Colors.black,
            fontFamily: 'Merriweather',
          ),
          patternList: [
            EasyRichTextPattern(
              targetString: 'Retardamento do envelhecimento de folhas:',
              style: const TextStyle(
                height: 1.5,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontFamily: 'Merriweather',
              ),
            ),
          ],
        ),
        const SizedBox(height: 30),
        EasyRichText(
          "Promoção do desenvolvimento de brotos laterais: As citocininas têm a capacidade de promover a formação e o desenvolvimento de brotos laterais nas plantas.",
          textAlign: TextAlign.justify,
          defaultStyle: const TextStyle(
            height: 2,
            color: Colors.black,
            fontFamily: 'Merriweather',
          ),
          patternList: [
            EasyRichTextPattern(
              targetString: 'Promoção do desenvolvimento de brotos laterais:',
              style: const TextStyle(
                height: 1.5,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontFamily: 'Merriweather',
              ),
            ),
          ],
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}

class MyCommentPage5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
            'A resposta correta, que associa os hormônios vegetais às suas respectivas funções, é a seguinte: "2, 4, 3, 5, 1". Vamos analisar cada associação:',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 14,
              height: 2.0,
              fontFamily: 'Merriweather',
            )),
        const SizedBox(height: 30),
        EasyRichText(
          "Etileno (2): O etileno está associado à função de aumentar a taxa de senescência foliar, o que significa que ele promove o envelhecimento e a queda das folhas.",
          textAlign: TextAlign.justify,
          defaultStyle: const TextStyle(
            height: 2,
            color: Colors.black,
            fontFamily: 'Merriweather',
          ),
          patternList: [
            EasyRichTextPattern(
              targetString: 'Etileno',
              style: const TextStyle(
                height: 1.5,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontFamily: 'Merriweather',
              ),
            ),
          ],
        ),
        const SizedBox(height: 30),
        EasyRichText(
          "Auxina (4): A auxina regula a dominância apical, influenciando o crescimento e desenvolvimento das gemas apicais em relação às gemas laterais.",
          textAlign: TextAlign.justify,
          defaultStyle: const TextStyle(
            height: 2,
            color: Colors.black,
            fontFamily: 'Merriweather',
          ),
          patternList: [
            EasyRichTextPattern(
              targetString: 'Auxina',
              style: const TextStyle(
                height: 1.5,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontFamily: 'Merriweather',
              ),
            ),
          ],
        ),
        const SizedBox(height: 30),
        EasyRichText(
          "Citocinina (3): As citocininas estão associadas à influência na iniciação floral e na determinação do sexo das plantas.",
          textAlign: TextAlign.justify,
          defaultStyle: const TextStyle(
            height: 2,
            color: Colors.black,
            fontFamily: 'Merriweather',
          ),
          patternList: [
            EasyRichTextPattern(
              targetString: 'Citocinina',
              style: const TextStyle(
                height: 1.5,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontFamily: 'Merriweather',
              ),
            ),
          ],
        ),
        const SizedBox(height: 30),
        EasyRichText(
          "Ácido abscísico (5): O ácido abscísico está relacionado à inibição da germinação precoce e à viviparidade, que é a germinação de sementes ainda na planta-mãe.",
          textAlign: TextAlign.justify,
          defaultStyle: const TextStyle(
            height: 2,
            color: Colors.black,
            fontFamily: 'Merriweather',
          ),
          patternList: [
            EasyRichTextPattern(
              targetString: 'Ácido abscísico',
              style: const TextStyle(
                height: 1.5,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontFamily: 'Merriweather',
              ),
            ),
          ],
        ),
        const SizedBox(height: 30),
        EasyRichText(
          "Giberelina (1): As giberelinas estão associadas ao aumento do crescimento das plantas, estimulando processos como a elongação do caule.",
          textAlign: TextAlign.justify,
          defaultStyle: const TextStyle(
            height: 2,
            color: Colors.black,
            fontFamily: 'Merriweather',
          ),
          patternList: [
            EasyRichTextPattern(
              targetString: 'Giberelina',
              style: const TextStyle(
                height: 1.5,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontFamily: 'Merriweather',
              ),
            ),
          ],
        ),
        const SizedBox(height: 30),
      ],
    );
  }
}


Map<String, Widget> imageQuestions = {
  'imagem_01': MyImageQuestion1(),
};

class MyImageQuestion1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          const EdgeInsets.only(left: 40, right: 40, top: 100, bottom: 100),
      margin: const EdgeInsets.only(bottom: 10),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
              'assets/images/lipidios/lipidios.png'), // Replace with your image path
          fit: BoxFit.contain, // You can adjust the fit as needed
        ),
      ),
    );
  }
}
