import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  function(int note_no){
    final player=AudioPlayer();
    player.play(AssetSource('note$note_no.wav'));
  }

  Expanded Build({required Color col,required int num}){
   return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor:col
        ),
        child: const Text(''),
        onPressed: (){
          function(num);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Build(col:Colors.yellowAccent,num:1),
                Build(col:Colors.blueAccent,num:2),
                Build(col:Colors.purpleAccent,num:3),
                Build(col:Colors.redAccent,num:7),
                Build(col:Colors.greenAccent,num:8),
                Build(col:Colors.brown,num:6),
                Build(col:Colors.deepOrangeAccent,num:9)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

