import 'package:debounce_throttle/debounce_throttle.dart';
import 'package:flutter/material.dart';
import 'package:gif_search/bloc/bloc/giftbloc_bloc.dart';
import 'package:gif_search/data/model/gift_model.dart';

class HomeController{
 
  
  final _debouncer = Debouncer<String>(Duration(seconds: 1),initialValue: '');
  
  TextEditingController _textEditingController = TextEditingController();

  TextEditingController get textController => this._textEditingController;

  void listenSearched( GiftblocBloc giftBloc){
    
    
    _textEditingController.addListener(() { 
      _debouncer.value = _textEditingController.text;
      giftBloc.add(CleaningGiftBySearched(null));
    });

    _debouncer.values.listen((search) {
      print('value: $search');
      if (search.isNotEmpty) {
        giftBloc.add(GetGiftBySearched(query: search));
      }else{
        giftBloc.add(CleaningGiftBySearched([Datum()]));
      }  
    });
  
  }
}