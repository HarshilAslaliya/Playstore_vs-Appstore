import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UpdateComponent extends StatefulWidget {
  const UpdateComponent({Key? key}) : super(key: key);

  @override
  State<UpdateComponent> createState() => _UpdateComponentState();
}

class _UpdateComponentState extends State<UpdateComponent> {
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