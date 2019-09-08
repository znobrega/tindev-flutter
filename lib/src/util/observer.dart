import 'package:flutter/material.dart';
import 'dart:async';

class Observer<T> extends StatelessWidget {
  
  @required
  Function onSucess;
  
  Function onError;
  Function onWaiting;
  
  @required
  Stream<T> data;

  Observer({this.onSucess, this.onError, this.onWaiting, this.data});
  
  Function get defaultOnWaiting => (context) => Center(child: CircularProgressIndicator());
  Function get defaultOnError => (context) => Center(child: Text("Error"),);
  
  Widget build(context) {
    return StreamBuilder(
      stream: data,
      builder: (BuildContext context, AsyncSnapshot<T> snapshot) {
        if(snapshot.hasError) {
          return onError != null 
          ? onError(context, snapshot.error)
          : defaultOnError;
        }

        if (snapshot.hasData) {
          return onSucess(context, snapshot.data);
        } else {
          return onWaiting != null 
          ? onWaiting(context, snapshot.data)
          : defaultOnWaiting;
        }
      },
    );
  }
}