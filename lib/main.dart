import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
// import 'package:login_app/pages/creategroup.dart';
import 'package:login_app/pages/login.page.dart';
import 'package:login_app/provider/grouplist.dart';
// import 'package:login_app/pages/chatscreen.dart';
// import 'package:login_app/pages/login.page.dart';
import 'package:login_app/provider/imageprovider.dart';
import 'package:provider/provider.dart';

// import 'model/user.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // Make user stream available
        ChangeNotifierProvider<IMageUploadProvider>.value(
            value: IMageUploadProvider()),
        ChangeNotifierProvider<GroupList>.value(value: GroupList()),
        StreamProvider<FirebaseUser>.value(
            value: FirebaseAuth.instance.onAuthStateChanged),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(primarySwatch: Colors.blue, fontFamily: 'AnticSlab'),
        home: LoginPage(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
