import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:quizapps/model/question_model.dart';


class QuestionsLocal {
  int index = 0;
  List<QuestionModel> questionAnswers = [
    QuestionModel(questions: "Кыргыстанда 7 область барбы?", answers: true),
    QuestionModel(questions: "Ош Бишкекке карайбы?,", answers: true),
    QuestionModel(questions: "Oшто арка барбы? ", answers: false),
    QuestionModel(questions: "Баткен озгонго карайбы?,", answers: false),
  ];
  String? suroonualipKel() {
    if (index <=questionAnswers.length-1) {
      return questionAnswers[index].questions;
    }
    return '';
  }

  // callpopUp(BuildContext context) {
  //   return AlertDialog();
  // }

  bool? jooptuAlipKel() {
    if (index <=questionAnswers.length-1) {
      return questionAnswers[index].answers;
    }
  }

  void suroonuOtkoz() {
    index++;
  }

  void kairadanbashta() {
    index = 0;
  }
}

final QuestionsLocal questionslocal = QuestionsLocal();