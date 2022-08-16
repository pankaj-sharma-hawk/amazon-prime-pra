import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

String langconv(String? language) {
  if (language == "Hindi") {
    return "hi";
  } else if (language == "English") {
    return "en";
  } else if (language == "French") {
    return "fr";
  } else if (language == "Spanish") {
    return "es";
  } else if (language == "Tamil") {
    return "ta";
  } else if (language == "Punjabi") {
    return "pa";
  } else {
    return "en";
  }
}
