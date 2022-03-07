import 'package:bloc/bloc.dart';
import 'package:gif_search/data/model/gift_model.dart';
import 'package:gif_search/data/repository/gift_repository.dart';
import 'package:gif_search/helpers/get.dart';
import 'package:meta/meta.dart';

part 'giftbloc_event.dart';
part 'giftbloc_state.dart';

class GiftblocBloc extends Bloc<GiftblocEvent, GiftblocState> {
  GiftRepository giftRepository = Get.i.find<GiftRepository>();
  GiftblocBloc() : super(GiftblocInitial()) {

    giftInitial(); 
  

    on<GetGiftBySearched>((event, emit)async {
       if( event.query == null){
         emit(state.copyWith(giftsList: null));
       }else{
         final List<Datum>? _giftsList = await giftRepository.getGifts(event.query!);
         emit(state.copyWith(giftsList: _giftsList));
       } 
    });
  
    
    on<CleaningGiftBySearched>((event, emit)async {
      emit(CleanGiftBySearched(event.cleanList));
    });
  }

  void giftInitial()async {
    final List<Datum>? _gifInitial = await giftRepository.getGifts('cat');
    // ignore: invalid_use_of_visible_for_testing_member
    emit(state.copyWith(giftsList: _gifInitial));
  }
}
  

