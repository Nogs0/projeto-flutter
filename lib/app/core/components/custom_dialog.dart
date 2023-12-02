import 'package:flutter/material.dart';

showLoader(context) {
  showDialog(
      context: context,
      builder: (context) {
        return Container(
          height: 150,
          width: 250,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10),
          ),
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(
                color: Colors.amber,
              )
            ],
          ),
        );
      });
}
