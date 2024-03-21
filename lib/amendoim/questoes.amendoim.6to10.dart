// quiz.dart
// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:easy_rich_text/easy_rich_text.dart';
import 'package:flutter/material.dart';

class QuizAmendoim6to10 {
  List<Map<String, dynamic>> questionsAmendoim6to10;

  QuizAmendoim6to10(this.questionsAmendoim6to10) {
    questionsAmendoim6to10.shuffle(); // Embaralha a ordem das perguntas ao criar o quiz
  }
}

// Lista de perguntas e respostas
List<Map<String, dynamic>> questionsAmendoim6to10 = [
  //Questão 06
  {
    'question':
        '(UFC-2018) O rendimento das culturas de grãos pode ser explicado por uma sequência de relações ecofisiológicas interrelacionadas. Dessa forma, as características fisiológicas que completam a sequência do esquema simplificado de geração do rendimento é:',
    'supositions': [
      'Assinale a alternativa que apresenta a sequência correta:'
    ],
    'images': 'imagem_01',
    'options': [
      '(I) Indice de área foliar; (II) Radiação interceptada; (III) Biomassa total; (IV) Índice de colheita',
      '(I) Indice de área foliar; (II) Índice de colheita; (III) Biomassa total; (IV) Número de sementes',
      '(I) Indice de área foliar; (II) Biomassa total; (III) Índice de colheita ; (IV) Radiação interceptada',
      '(I) Indice de área foliar; (II) Radiação interceptada; (III) Índice de colheita; (IV) Biomassa total',
      '(I) Temperatura foliar; (II) Radiação interceptada; (III) Índice de Area foliar; (IV) Índice de colheita.'
    ],
    'correctAnswer':
        '(I) Indice de área foliar; (II) Radiação interceptada; (III) Biomassa total; (IV) Índice de colheita',
    'commentId': 'comment_6',
  },
  //Questão 07
  {
    'question':
        '(UFC-2018) Com base nos conhecimentos sobre fisiologia das plantas cultivadas, julgue as sentenças (1) e (2) abaixo:\n\n(1)	Numa situação em que uma folha de uma planta de arroz, anteriormente mantida no escuro por um longo tempo, for iluminada (exposta a iluminação ou radiação), a luz percebida pelas células-guardas desencadeará uma série de respostas, resultando na abertura do poro estomático e tornando possíveis a entrada do CO2 do ambiente e a realização da fotossíntese.\n\nPORQUE:\n\n(2)	Quando o nível de CO2 no interior da folha for alto, os estômatos se fecham parcialmente, preservando assim o nível de água na folha que vai realizar a fotossíntese.\n\nAnalisando-se as afirmações acima, conclui-se que:',
    'supositions': ['1', '2', '3', '4'],
    'images': '',
    'options': [
      'As duas afirmações são verdadeiras, e a segunda não justifica a primeira',
      'As duas afirmações são verdadeiras, e a segunda justifica a primeira',
      'A primeira afirmação é falsa, e a segunda é verdadeira',
      'A primeira afirmação é verdadeira, e a segunda é falsa',
      'As duas afirmações são falsas'
    ],
    'correctAnswer':
        'As duas afirmações são verdadeiras, e a segunda não justifica a primeira',
    'commentId': 'comment_7',
  },
  //Questão 08
  {
    'question':
        '(UFC-2018) Os óleos essenciais constituem um dos mais importantes grupos de matérias-primas vegetais para as indústrias alimentícia, farmacêutica, de perfumaria e afins. São constituídos por uma mistura complexa de diversas classes de substâncias, entre elas os fenilpropanoides, mono e sesquiterpenos, pertencentes ao metabolismo secundário das plantas. O metabolismo secundário, por sua vez, pode ser influenciado por diversos fatores. Considerando que a qualidade das plantas medicinais, aromáticas e condimentares reside no teor e na composição química dos óleos essenciais, avalie as afirmativas a seguir:\n\n(1)	A composição química dos óleos essenciais é determinada por fatores genéticos, sendo nula a influência de fatores abióticos.\n\n(2)	As interações planta/microrganismos, planta/insetos e planta/planta não influenciam na composição química dos óleos essenciais.\n\n(3)	Em tecidos vegetais mais jovens, verifica-se aumento na produção de vários compostos secundários, entre os quais se encontram os óleos essenciais.\n\n(4)	A idade e o estádio de desenvolvimento da planta influenciam na composição química dos óleos essenciais; entretanto, o ritmo circadiano não afeta a qualidade.\n\n(5)	A composição do óleo essencial sofre alterações durante os processos de colheita e pós-colheita, sendo essas alterações atribuídas a conversões espontâneas, que ocorrem continuamente.\n\nÉ correto o que se afirma:',
    'supositions': ['1', '2', '3', '4'],
    'images': '',
    'options': [
      'apenas em 3 e 5',
      'apenas em 1 e 3',
      'apenas em 2 e 4',
      'apenas em 3 e 4',
      'apenas em 3, 4 e 5.'
    ],
    'correctAnswer':
        'apenas em 3 e 5',
    'commentId': 'comment_8',
  },
  //Questão 09
  {
    'question':
        '(UFSB-2017) Sobre a fisiologia da cultura da mamona, marque V para as afirmativas verdadeiras e F para as falsas.\n\n( ) A mamoneira é bem adaptada à região semiárida por ser capaz de produzir satisfatoriamente sob pouca disponibilidade de água (tolerância à seca).\n\n( ) A mamoneira é considerada uma planta de dias curtos, embora se adapte bem às regiões com fotoperíodos longos, desde que não sejam inferiores a oito horas.\n\n( ) A mamoneira se desenvolve bem em ambientes com uma faixa de temperatura variando de 20°C a 35°C, sendo que a temperatura ideal é 28°C.\n\n( ) A altitude é considerada como critério no zoneamento dessa cultura, pois interfere na radiação solar diária, na temperatura e umidade relativa do ar.\n\nAssinale a sequência correta.',
    'supositions': ['1', '2', '3', '4'],
    'images': '',
    'options': [
      'V, F, V, V',
      'F, V, F, F',
      'V, F, V, F',
      'F, V, F, V',
    ],
    'correctAnswer':
        'V, F, V, V',
    'commentId': 'comment_9',
  },
  //Questão 09
  {
    'question':
        '(UFSB-2017) Sobre a fisiologia da cultura da mamona, marque V para as afirmativas verdadeiras e F para as falsas.\n\n( ) A mamoneira é bem adaptada à região semiárida por ser capaz de produzir satisfatoriamente sob pouca disponibilidade de água (tolerância à seca).\n\n( ) A mamoneira é considerada uma planta de dias curtos, embora se adapte bem às regiões com fotoperíodos longos, desde que não sejam inferiores a oito horas.\n\n( ) A mamoneira se desenvolve bem em ambientes com uma faixa de temperatura variando de 20°C a 35°C, sendo que a temperatura ideal é 28°C.\n\n( ) A altitude é considerada como critério no zoneamento dessa cultura, pois interfere na radiação solar diária, na temperatura e umidade relativa do ar.\n\nAssinale a sequência correta.',
    'supositions': ['1', '2', '3', '4'],
    'images': '',
    'options': [
      'V, F, V, V',
      'F, V, F, F',
      'V, F, V, F',
      'F, V, F, V',
    ],
    'correctAnswer':
        'V, F, V, V',
    'commentId': 'comment_9',
  },
  //Questão 10
  {
    'question':
        '(IFES-2022) A auxina foi o primeiro hormônio vegetal a ser descoberto e estudado, sendo responsável pela regulação de muitos aspectos do desenvolvimento vegetal. Com relação à auxina, avalie as seguintes afirmações:\n\nI. Estimula o alongamento de caules e dominância apical.\n\nII. Atua em elementos condutores do xilema, visando o desenvolvimento de gemas laterais.\n\nIII. Retarda o início da abscisão foliar.\n\nEstá(ão) CORRETA(S):',
    'supositions': ['1', '2', '3', '4'],
    'images': '',
    'options': [
      'Apenas I e III',
      'Apenas III',
      'Apenas I e II',
      'Apenas II e III',
      'Apenas II',
    ],
    'correctAnswer':
        'Apenas I e III',
    'commentId': 'comment_10',
  },
];

Map<String, Widget> commentPages = {
  'comment_6': MyCommentPage6(),
  'comment_7': MyCommentPage7(),
  'comment_8': MyCommentPage8(),
  // Adicione mais páginas de comentário conforme necessário
};

class MyCommentPage6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
            'Para solucionar esta questão podemos analisar a figura e as alternativas, um passo por vez:',
            textAlign: TextAlign.justify,
            style: TextStyle(
              fontSize: 14,
              height: 2.0,
              fontFamily: 'Merriweather',
            )),
        const SizedBox(height: 30),
        EasyRichText(
          'Na figura, "I" é o resultado combinado do aparecimento de folhas e da expansão foliar. Nossas alternativas só indicam duas possibilidades, Indice de área foliar ou Temperatura foliar. Neste caso nossa melhor escolha é ficar com Indice de área foliar',
          textAlign: TextAlign.justify,
          defaultStyle: const TextStyle(
            height: 2,
            color: Colors.black,
            fontFamily: 'Merriweather',
          ),
          patternList: [
            EasyRichTextPattern(
              targetString: 'Indice de área foliar',
              style: const TextStyle(
                height: 1.5,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontFamily: 'Merriweather',
              ),
            ),
            EasyRichTextPattern(
              targetString: 'Temperatura foliar',
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
        EasyRichText(
          'Indice de área foliar: O Indice de área foliar é um parâmetro que, numa explicação bem resumida, expressa a quantidade de área de folhas. Desta forma ao analisar a primeira icognita da figura como o resultado do aparecimento de folhas somado à expansão foliar fica clara a ideia de geração de área foliar, consequenmente resultando no indice de área foliar.',
          textAlign: TextAlign.justify,
          defaultStyle: const TextStyle(
            height: 2,
            color: Colors.black,
            fontFamily: 'Merriweather',
          ),
          patternList: [
            EasyRichTextPattern(
              targetString: 'Indice de área foliar',
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
          'Esse indice de área foliar, ou seja, a área de folhas, definirá quanto da radiação luminosa que atinge a área de cultivo será interceptada. Naturalmente aqui definimos a icognita "II", seja "II" é Radiação Interceptada',
          textAlign: TextAlign.justify,
          defaultStyle: const TextStyle(
            height: 2,
            color: Colors.black,
            fontFamily: 'Merriweather',
          ),
          patternList: [
            EasyRichTextPattern(
              targetString: 'Radiação Interceptada',
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
          'Na figura há um parâmetro chamado de eficiência de conversão que irá se combinar com a radiação interceptada. Em termos fotossínteticos esta chamada "conversão" se refere à conversão de energia luminosa em carboidratos, ou seja, conversão de carbono gasoso em biomassa. A eficiência de conversão define, portanto, quando da radiação interpecptada poderá ser convertida em biomassa. Sendo assim fica claro que a icognita "III" se refere à Biomassa total produzida pelas plantas.',
          textAlign: TextAlign.justify,
          defaultStyle: const TextStyle(
            height: 2,
            color: Colors.black,
            fontFamily: 'Merriweather',
          ),
          patternList: [
            EasyRichTextPattern(
              targetString: 'Biomassa total',
              style: const TextStyle(
                height: 1.5,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontFamily: 'Merriweather',
              ),
            ),
            EasyRichTextPattern(
              targetString: 'eficiência de conversão',
              style: const TextStyle(
                height: 1.5,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontFamily: 'Merriweather',
              ),
            ),
            EasyRichTextPattern(
              targetString: 'radiação interceptada',
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
          'Por ultimo, temos a icognita "IV" que se combina com a Biomassa total definindo o parâmetro final que é o rendimento de grãos. Os grãos produzidos são assim uma porção da biomassa total produzida pelas plantas. Além disso os grãos correspondem ao produto principal colhido e objeto da nossa questão. Ou seja, o rendimento do grãos é uma porção da planta, em outras palavras uma porção da biomassa total, por isso nossa icognita "IV" é o indice de colheita, ou seja, um valor númerico que é aplicado à biomassa total a fim de obter a fração de biomassa que é colhida como grãos.',
          textAlign: TextAlign.justify,
          defaultStyle: const TextStyle(
            height: 2,
            color: Colors.black,
            fontFamily: 'Merriweather',
          ),
          patternList: [
            EasyRichTextPattern(
              targetString: 'Biomassa total',
              style: const TextStyle(
                height: 1.5,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontFamily: 'Merriweather',
              ),
            ),
            EasyRichTextPattern(
              targetString: 'rendimento de grãos',
              style: const TextStyle(
                height: 1.5,
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontFamily: 'Merriweather',
              ),
            ),
            EasyRichTextPattern(
              targetString: 'indice de colheita',
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

class MyCommentPage7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Text('Comentário para a setima pergunta.');
  }
}

class MyCommentPage8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Text('Comentário para a oitava pergunta.');
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
