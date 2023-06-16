import 'dart:io';
import 'package:another_flushbar/flushbar.dart';
import 'package:clipboard/clipboard.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:routemaster/routemaster.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:intl/intl.dart';

class Application {
  //Hive shared preferences
  static Box<Object?>? prefs;
}
