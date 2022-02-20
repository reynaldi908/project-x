import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

String languageId() {
  // Add your function code here!
  return 'en';
}

String orderTotal(
  int serviceFee,
  int foodPrice,
  int portion,
) {
  // Add your function code here!
  int foodPriceTotal = foodPrice * portion;
  int total = foodPriceTotal + serviceFee;
  return total.toString();
}
