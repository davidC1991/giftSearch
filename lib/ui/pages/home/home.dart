import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:gif_search/bloc/bloc/giftbloc_bloc.dart';
import 'package:gif_search/data/model/gift_model.dart';
import 'package:gif_search/ui/pages/home/home_controller.dart';
import 'package:gif_search/ui/pages/home/widgets/gift_card_widget.dart';
import 'package:gif_search/ui/pages/home/widgets/text_input_widget.dart';
import 'package:gif_search/utils/responsive.dart';

class HomePage extends StatefulWidget {
  
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 

  HomeController homeController = HomeController();
 


  @override
  Widget build(BuildContext context) {

    final GiftblocBloc giftBloc = BlocProvider.of<GiftblocBloc>(context, listen: false);
    Responsive responsive = Responsive(context);
    homeController.listenSearched(giftBloc);
    print('start');
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          title: Container(
            alignment: Alignment.topLeft,
            width: responsive.widthPercent(92),
            height: responsive.heightPercent(5),
            child: TextInputWidget(homeController: homeController),
          ),
        ),
        body: BlocBuilder<GiftblocBloc,GiftblocState>(
          builder: ( _ , state){
           if (state.giftsList!= null && state.giftsList!.isNotEmpty && state.giftsList!.length!=1){
              return gitsListBuilder(state.giftsList);
            }else if(state.giftsList!= null && state.giftsList!.isEmpty){
              return Center(child: Text('No matches'));
            }else if(state.giftsList!= null && state.giftsList!.length==1){
              return Center(child: Text('Write something...'));
            }
            return Center(child: CupertinoActivityIndicator());
          },
        )  
      ),
    );
  }

  Widget gitsListBuilder(List<Datum>? giftsList) {
    Responsive responsive = Responsive(context);
   return StaggeredGridView.countBuilder(
     padding: EdgeInsets.only(top: responsive.widthPercent(8),left: responsive.widthPercent(4.5),right: responsive.widthPercent(4.5)),
     crossAxisCount: 2,
     mainAxisSpacing: 8,
     crossAxisSpacing: 8,
     itemCount: giftsList!.length,
     staggeredTileBuilder: (int index) => StaggeredTile.extent(1,double.parse(giftsList[index].images!.previewGif!.height!)+responsive.heightPercent(20)),
     itemBuilder: (context, i)=> GiftCardWidget(giftsList: giftsList[i]), 
     
   );
  }

 


}
