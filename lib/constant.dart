import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

const kColorInfected = Color(0xFFD6CF35);
const kColorRecover = Color(0xFF7FFFD6);
const kTitleTextColor = Color(0xFFFFFFFF);
const kDeathColor = Color(0xFFFF4357);
const kRecoverColor = Color(0xFF7FFFD6);
const kSuspectsColor = Color(0xFFE856FF);
final kShadowColor = Color(0xFF4B03A1).withOpacity(.16);
final kActiveShadowColor = Color(0xFF4B03A1).withOpacity(.15);
final kFlagsURL = "https://devarthurribeiro.github.io/covid19-brazil-api/static/flags/";
final currencyFormat = NumberFormat.decimalPattern('pt_BR');

const kTitleTextstyle = TextStyle(
  fontSize: 20,
  color: kTitleTextColor,
  fontWeight: FontWeight.bold,
);
const kHeadingTextStyle = TextStyle(
  fontSize: 20,
  fontWeight: FontWeight.w600,
);
