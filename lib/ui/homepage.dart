import 'package:flutter/material.dart';


import '../widget/costom_up_widget.dart';
import '../model/question_local.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool? isFinished;
  List<Icon> icons = [];

  String? suroolor = questionslocal.suroonualipKel();
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        centerTitle: true,
        title: Text("Тест №1", style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              questionslocal.suroonualipKel().toString(),
              style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
            isFinished == true
                ? CostomPopUpWidget(
                    onTap: () {
                      setState(() {});
                      isFinished = false;
                      questionslocal.suroonualipKel();
                      questionslocal.kairadanbashta();
                      icons = [];
                    },
                  )
                : Padding(
                    padding: const EdgeInsets.all(12),
                    child: Column(
                      children: [
                        Container(
                          height: 60,
                          width: 500,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          child: InkWell(
                            onTap: () {
                              koldonuuchunJoobu(true);
                            },
                            child: Container(
                              width: 400,
                              decoration: BoxDecoration(
                                color: Color(0xff4CB050),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                              ),
                              child: const Text(
                                'Туура',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 40),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 60,
                                width: 500 /*  */,
                                decoration: BoxDecoration(
                                  color: Color.fromARGB(255, 240, 51, 9),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10)),
                                ),
                                child: InkWell(
                                  onTap: () {
                                    koldonuuchunJoobu(false);
                                  },
                                  child: Text(
                                    "Ката",
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                        fontSize: 40,
                                        color:
                                            Color.fromARGB(255, 233, 228, 228),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                                children: icons,
                              ),
                      ],
                    ),
                  ),
          ],
        ),
      ),
    );
  }

  void koldonuuchunJoobu(bool userdinJoobu) {
    if (userdinJoobu == questionslocal.jooptuAlipKel()) {
      icons.add(
        const Icon(
          Icons.check_circle,
          color: Colors.green,
          size: 50,
        ),
      );
    } else {
      icons.add(
        const Icon(
          Icons.cancel,
          color: Colors.red,
          size: 50,
        ),
      );
    }
    questionslocal.suroonuOtkoz();
    if (questionslocal.suroonualipKel() == '') {
      isFinished = true;
    }

    setState(() {});
  }
}