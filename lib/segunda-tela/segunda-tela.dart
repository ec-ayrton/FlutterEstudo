import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:estudo_blocpattern/Increment/increment-controller.dart';
import 'package:flutter/material.dart';
import 'package:estudo_blocpattern/segunda-tela/terceira-tela.dart';
// import 'package:estudo_blocpattern/tericeira-tela/'

class SegundaTelaWidget extends StatelessWidget{
  @override 
  Widget build(BuildContext context){
    
    final IncrementController bloc =
      BlocProvider.of<IncrementController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Segunda Tela'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.navigate_next),
            onPressed: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => TerceiraTelaWidget()),
              );
            }
          )
        ],
      ), 
      body: StreamBuilder(
        stream: bloc.outCounter,
        builder: (BuildContext context,AsyncSnapshot snapshot){
          return Center(
              child: Text("O valor do counter:  ${snapshot.data}"),
          );                     
        },
      ),
    );
  }
}










