
import 'package:flutter/material.dart';
import 'package:gif_search/ui/pages/home/home_controller.dart';

class TextInputWidget extends StatelessWidget {
   TextInputWidget({
    Key? key,
    required this.homeController,
   }) : super(key: key);

  final HomeController homeController;

  
   final OutlineInputBorder settingBorder = OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.withOpacity(0.01)),
                borderRadius: BorderRadius.circular(10)
              );

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller:homeController.textController,
      textAlign: TextAlign.left,
      decoration: InputDecoration(
        hintText: 'Search by name',
        hintStyle: TextStyle(color: Colors.grey.withOpacity(0.7)),
        contentPadding: EdgeInsets.all(1),
        fillColor: Colors.grey.withOpacity(0.3),
        filled: true,
        prefixIcon: Icon(Icons.search, color:Colors.black),
        border: settingBorder,
        disabledBorder: settingBorder,
        enabledBorder:  settingBorder,
        focusedBorder:  settingBorder  
      ),
    );
  }
}

