import 'dart:async';

import 'package:bloc_pattern/bloc_pattern.dart';
import 'package:rxdart/rxdart.dart';

class IncrementController implements BlocBase{
  var _counter = 0;
  //fluxo do counter
  var _counterController = BehaviorSubject<int>(seedValue: 0);

 /*  Stream<int> get _outCounter {
    return _counterController.stream;
  } */ // MESMA COISA QUE O CODIGO ABAIXO

   Stream<int> get outCounter => _counterController.stream;
   Sink<int> get inCounter => _counterController.sink;

  void increment(){
    _counter++;
    inCounter.add(_counterController.value+1);
  }

  @override
  void dispose(){
    _counterController.close();
  }
}