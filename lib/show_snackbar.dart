import 'package:flutter/material.dart';

SnackBar ShowSnackBar({required String content}
    ) => SnackBar(
    content: Text(content,style: const TextStyle(fontFamily: 'Roboto',fontSize: 15,fontWeight: FontWeight.normal,color: Colors.black),),
  backgroundColor: Colors.purple.shade200,
  padding: const EdgeInsets.all(20),
  duration: const Duration(seconds: 3),
  elevation: 7,

);