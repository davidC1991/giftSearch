part of 'giftbloc_bloc.dart';

@immutable
class GiftblocState {
  final List<Datum>? giftsList;
  GiftblocState({this.giftsList});

  GiftblocState copyWith({
    final List<Datum>? giftsList
  })=>GiftblocState(
    giftsList: giftsList ?? this.giftsList  
  );
  
}

class GiftblocInitial extends GiftblocState {
     GiftblocInitial(){
       print('initial');
       
       
     }
 }


class UpdateGiftBySearched extends GiftblocState{
  UpdateGiftBySearched(List<Datum>? giftsList) : super(giftsList:giftsList);
  
}

class CleanGiftBySearched extends GiftblocState{
  CleanGiftBySearched(List<Datum>? giftsList) : super(giftsList:giftsList);
  
}