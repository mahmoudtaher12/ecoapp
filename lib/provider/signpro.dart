import 'package:flutter/material.dart';
import '../models/modeluser.dart';
import '../serviecs/user_serviecs.dart';
class provider1 extends ChangeNotifier
{

    user_model? jj;
    Future<void> signup(name,phone,email,password)async
    {
      await user_services.signup(name, phone, email, password);
      notifyListeners();
    }
    Future<void> login(email,password)async
    {
      jj= await user_services.login(email, password);
      notifyListeners();
    }

}