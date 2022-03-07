import 'package:gif_search/data/model/gift_model.dart';
import 'package:gif_search/data/repository/gift_repository.dart';
import 'package:gif_search/data/services/gift_service.dart';

class GiftRepositoryImpl implements GiftRepository{
  GiftService? giftService ;
  GiftRepositoryImpl(this.giftService);
  
  @override
  Future<List<Datum>?> getGifts(String query) {
    return  giftService!.getGifts(query);
  }

}