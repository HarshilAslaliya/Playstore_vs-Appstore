import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchComponent extends StatefulWidget {
  const SearchComponent({Key? key}) : super(key: key);

  @override
  State<SearchComponent> createState() => _SearchComponentState();
}

class _SearchComponentState extends State<SearchComponent> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [
        CupertinoActivityIndicator(radius: 20),
        SizedBox(width: 20,),
        Text('Work is still in progress'),
      ],),
    );
  }
}