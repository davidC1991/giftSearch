import 'package:flutter/material.dart';
import 'package:gif_search/data/model/gift_model.dart';


class GiftCardWidget extends StatelessWidget {
  final Datum giftsList; 
  const GiftCardWidget({
    Key? key,
    required this.giftsList
  }) : super(key: key);
 
  
  @override
  Widget build(BuildContext context) {
    return Container(
      child: FadeInImage(
        placeholder: AssetImage('assets/no-image.jpg'),
        image: NetworkImage(giftsList.images!.previewGif!.url!+'.gif'),
        fit: BoxFit.cover,
       ),
    );
 }
}

