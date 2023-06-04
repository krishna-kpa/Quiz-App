import 'package:flutter/material.dart';

class QuestionSummary extends StatelessWidget {
  const QuestionSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map((item) {
            return Row(
              children: [
                Text(((item['question_index'] as int)+1).toString(),style:const TextStyle(color: Color.fromARGB(255, 0, 0, 0),fontSize: 14,backgroundColor: Color.fromARGB(255, 246, 171, 171))),
                Expanded(
                  child: Column(children: [
                    Text(item["question"] as String,style:const TextStyle(color: Colors.white,fontSize: 14),textAlign:TextAlign.center),
                    const SizedBox(height: 5,),
                    Text(item["user_answer"] as String,style:const TextStyle(color: Color.fromARGB(255, 118, 81, 252),fontSize: 12,),textAlign:TextAlign.center),
                    const SizedBox(height: 5,),
                    Text(item["correct_answer"] as String,style:const TextStyle(color: Color.fromARGB(255, 4, 184, 52),fontSize: 12),textAlign:TextAlign.center),
                  ],),
                ),
              ],
            );
          }).toList(),
        ),
      ),
    );
  }
}
