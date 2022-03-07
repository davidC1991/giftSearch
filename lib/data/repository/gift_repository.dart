import 'package:gif_search/data/model/gift_model.dart';

abstract class GiftRepository{
  Future<List<Datum>? > getGifts(String query);
} 