import 'package:brew_crew_firebase/models/user.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'authenticate/authenticate.dart';
import 'home/home.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final User user = Provider.of<User>(context);
    print('wrapper => $user');

    // return either Home or Authenticate widget
    return user == null ? Authenticate() : Home();
  }
}
