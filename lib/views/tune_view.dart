import 'package:flutter/material.dart';
import 'package:tune_player_app/models/tune_model.dart';
import 'package:tune_player_app/widgets/tune_item.dart';

class TuneView extends StatelessWidget {
  TuneView({super.key});
  List<TuneModel>tunes =[
    TuneModel(color:Color(0xffF44336), sound: "note1.wav"),
    TuneModel(color:Color(0xffF89800), sound: "note2.wav"),
    TuneModel(color:Color(0xffFEEB3B), sound: "note3.wav"),
    TuneModel(color:Color(0xff4CAF50), sound: "note4.wav"),
    TuneModel(color:Color(0xff2F9688), sound: "note5.wav"),
    TuneModel(color:Color(0xff2896F3), sound: "note6.wav"),
    TuneModel(color:Color(0xff9C27B0), sound: "note7.wav"),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter Tune",style: TextStyle(color: Colors.white),),
        backgroundColor: Color(0xff253238),
        elevation: 0,
        centerTitle: true,
      ),
      body: Column(
        children: tunes.map((e) => TuneItem(tune: e)).toList(),

      ),
    );
  }
  // List<TuneItem>getTuneItems(){
  //   List<TuneItem> items =[];
  //   for(var color in tuneColors){
  //     items.add(TuneItem(color: color));
  //   }
  //   return items;
  // }

}
