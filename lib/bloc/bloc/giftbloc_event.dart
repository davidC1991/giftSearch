part of 'giftbloc_bloc.dart';

@immutable
abstract class GiftblocEvent {}


// ignore: must_be_immutable
class GetGiftBySearched extends GiftblocEvent{
  String? query;
  GetGiftBySearched({required this.query});
}

// ignore: must_be_immutable
class CleaningGiftBySearched extends GiftblocEvent{
  List<Datum>? cleanList;
  CleaningGiftBySearched(this.cleanList);
 }