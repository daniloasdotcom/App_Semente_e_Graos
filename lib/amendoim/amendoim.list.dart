import 'package:flutter/material.dart';
import 'package:sementes_ufes/amendoim/amendoim.page.1to5.dart';
import 'package:sementes_ufes/amendoim/amendoim.page.6to10.dart';
import 'package:sementes_ufes/amendoim/questoes.amendoim.1to5.dart';
import 'package:sementes_ufes/amendoim/questoes.amendoim.6to10.dart';
import 'package:sementes_ufes/home.dart';
import 'package:shared_preferences/shared_preferences.dart';


class AmendoimList extends StatefulWidget {
  @override
  State<AmendoimList> createState() => _AmendoimListState();
}

class _AmendoimListState extends State<AmendoimList> {
  late SharedPreferences prefsAmendoim;
  late List<bool> isCheckedListAmendoim;
  

  @override
  void initState() {
    super.initState();
    initializeSharedPrefAmendoim();
  }

  void initializeSharedPrefAmendoim() async {
    prefsAmendoim = await SharedPreferences.getInstance();
    isCheckedListAmendoim = List.generate(buttonLabelsAmendoim.length, (index) {
      return prefsAmendoim.getBool('isCheckedAmendoim_$index') ?? false;
    });
    setState(() {});
  }

  void toggleCheckBoxAmendoim(int index) {
    setState(() {
      isCheckedListAmendoim[index] = !isCheckedListAmendoim[index];
      prefsAmendoim.setBool('isCheckedAmendoim_$index', isCheckedListAmendoim[index]);
    });
  }
  
  final List<String> buttonLabelsAmendoim = [
    'Questões\n1 a 5',
    'Questões\n6 a 10',
    // Adicione mais botões conforme necessário
  ];

  final List<Widget> pagesAmendoim = [
    AmendoimPage1to5(QuizAmendoim1to5(questionsAmendoim1to5)),
    AmendoimPage6to10(QuizAmendoim6to10(questionsAmendoim6to10)),
    // Adicione mais páginas conforme necessário
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.white,
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
          toolbarHeight: 80,
          elevation: 0,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30))),
          shadowColor: Colors.blue,
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.home,
                color: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return HomePage();
                }));
              },
            )
          ],
        ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              "Caderno de\nEcofisiologia do\nAmendoim",
              style: TextStyle(
                fontFamily: 'Merriweather',
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                ),
                itemCount: buttonLabelsAmendoim.length,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: isCheckedListAmendoim[index]
                              ? Colors.green // Altere a cor conforme necessário
                              : Colors.blue,
                        ),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => pagesAmendoim[index],
                            ),
                          );
                        },
                        child: Text(
                          buttonLabelsAmendoim[index],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 11,
                            color: Colors.white,
                            fontFamily: 'Merriweather',
                          ),
                        ),
                      ),
                      Checkbox(
                        value: isCheckedListAmendoim[index],
                        onChanged: (value) {
                          toggleCheckBoxAmendoim(index);
                        },
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
