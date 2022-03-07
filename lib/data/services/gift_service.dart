import 'package:gif_search/data/model/gift_model.dart';
import 'package:http/http.dart' as http;
  
class GiftService {
  String _baseUrl = 'api.giphy.com';
  String detailUrlPath = '';
  String _key = 'qzgMPjR3uCjz8bo7eYitGF31jP3H9ftb';
  
  
  Future<List<Datum>? > getGifts(String query)async{
    
    detailUrlPath = 'v1/gifs/search';
    var url = Uri.https(_baseUrl, detailUrlPath, {
      'api_key' : _key,
      'q'       : query,
      'limit'   : '25',
      'offset'  : '0',
      'rating'  : 'g',
      'lang'    : 'en'
    });

    final response   = await http.get(url);
  
    final ResponseGiftMovies responseGiftMovies = ResponseGiftMovies.fromJson(response.body);
    
    return responseGiftMovies.data;
  }
}