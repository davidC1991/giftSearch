

import 'package:gif_search/data/repository/gift_repository.dart';
import 'package:gif_search/data/repository_implementation/gift_repository_impl.dart';
import 'package:gif_search/data/services/gift_service.dart';
import 'package:gif_search/helpers/get.dart';

abstract class DependencyInjection {
  static void initialize() {
    final GiftRepository giftRepository = GiftRepositoryImpl(
      GiftService(),
    );

    Get.i.put<GiftRepository>(giftRepository);
   
    
  }
}
