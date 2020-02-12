import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:estudo_blocpattern/Increment/increment-controller.dart';

import 'package:estudo_blocpattern/Increment/increment-widget.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocProvider<IncrementController>(
      child:MaterialApp(
        home: HomeWidget(),
      ),
        bloc: IncrementController(),
    );    
  }
}

class HomeWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return IncrementWidget();
  }
}


