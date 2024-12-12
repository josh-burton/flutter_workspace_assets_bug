import 'package:flutter/services.dart';

void load() async {
  final content = await rootBundle.loadString("included_asset_1.txt");
  print(content);
}
