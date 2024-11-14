import 'package:flutter/material.dart';
import '../models/products.dart';
import '../serviecs/data_serviecs.dart';
class home_provider extends ChangeNotifier {
  data_model? jj;

  Future<void> fech() async
  {
    jj = await data_serviecs.get();
    notifyListeners();
  }
}