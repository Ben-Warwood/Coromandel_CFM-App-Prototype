import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'dart:ffi';


class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>{

  AudioPlayer audioPlayer = new AudioPlayer();
  Duration duration = new Duration();
  Duration position = new Duration();
  bool playing = false;

  Widget build(BuildContext context) => Scaffold(
    appBar: AppBar(
      title: Container(child:
        Image.network('https://cfm.co.nz/wp-content/uploads/2019/09/CFM-logo-400.png?x25252',),
      height: 50,),
      centerTitle: true,
      backgroundColor: Color(0xFF821111),
    ),
    body:Stack(

      //),

      children:<Widget>[
        Container(decoration: BoxDecoration(
      image: DecorationImage(image: NetworkImage('https://assets.website-files.com/5d36cc33dbdba433e24e83ae/5dc1ea706656f73dbb5c7ed5_Sunset-over-New-Chums-Beach-Coromandel.jpg',),
      fit: BoxFit.cover),),),

        Container(decoration: BoxDecoration(gradient: LinearGradient(
    begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xFFFFFFFF).withOpacity(0.5),
        Color(0xFF000000).withOpacity(0.5),
      ],
    )),),
    Column(
        mainAxisAlignment: MainAxisAlignment.center,
      children:[
        Container(
          child: const Text('Song Thumbnail / Picture'),
          height: 300,
          width: 300,
          decoration: BoxDecoration(borderRadius:BorderRadius.circular(10),color: Color(0xFF323639).withOpacity(0.5),
            boxShadow: [
              BoxShadow(
                color: Color(0xFF18171a).withOpacity(0.7),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 5), // changes position of shadow
              ),
            ],),
    ),

        Column(
          children: <Widget>[
            //slider(),
        ]
        ),
        Container(
          child: const Center(child: Text('Song Name, Artist Name, Etc')),
          width: 350,
          height: 60,
          margin: EdgeInsets.only(top: 15,bottom:25),
          decoration: BoxDecoration(borderRadius:BorderRadius.circular(10),color: Color(
              0xFF323639).withOpacity(0.5),
            boxShadow: [
            BoxShadow(
              color: Color(0xFF18171a).withOpacity(0.7),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 5), // changes position of shadow
            ),
          ],
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(onPressed:(){}, child: Icon(Icons.skip_previous, size: 40,),
            style: ElevatedButton.styleFrom(
            minimumSize:Size(70, 70),
            shape: CircleBorder(),
              elevation: 0,
              primary: Colors.transparent,
              onPrimary: Color(0xFF821111),
            ),),

            InkWell(
              onTap:(){
              getAudio();},
              child: Icon(

                playing == false
                  ? Icons.play_circle
                  : Icons.pause_circle,
                size: 70,
                color: Color(0xFF821111),
              ),

            ),

            ElevatedButton(onPressed:(){}, child: Icon(Icons.skip_next,size:40,),
            style: ElevatedButton.styleFrom(
            minimumSize:Size(70, 70),
            shape: CircleBorder(),
              elevation: 0,
              primary: Colors.transparent,
              onPrimary: Color(0xFF821111),
            ),),
          ],

        )
      ]
    ),

 ]),);
  //Widget slider(){
    //return Slider.adaptive(
      //min: 0.0,
      //value: position.inSeconds.toDouble(),
      //max: duration.inSeconds.toDouble(),
      //onChanged: (double value){setState(() {
      //  audioPlayer.seek(new Duration(seconds: value.toInt()));
      //});},
    //);
  //}
  void getAudio() async{
    var url = "https://s47.myradiostream.com/8864/listen.mp3/";

    if(playing){
      var res = await audioPlayer.pause();
      if(res == 1){
        setState(() {
          playing = false;
        });
      }
  }else{
      var res = await audioPlayer.play(url,isLocal: true);
      if(res == 1){
        setState(() {
          playing = true;
        });
  }
  }
}
}