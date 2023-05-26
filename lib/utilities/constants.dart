import 'package:flutter/material.dart';

const kTempTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 80.0,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 45.0,
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Spartan MB',
);

const kConditionTextStyle = TextStyle(
  fontSize: 50.0,
);

const kTextFieldInputDecoration = InputDecoration(
    icon: Icon(Icons.location_city_outlined),
    filled: true,
    fillColor: Colors.white,
    hintText: 'Type In City',
    hintStyle: TextStyle(color: Color(0xFFE3F2FD)),
    border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10))
    )
);
