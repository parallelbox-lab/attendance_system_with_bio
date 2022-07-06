import 'package:attendance_with_bio/providers/user_data.dart';
import 'package:attendance_with_bio/route.dart';
import 'package:attendance_with_bio/ui/splash/splash.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await UserData.init();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Sizer(builder: (context, orientation, deviceType) {
       return MultiProvider(
          providers: [
          ChangeNotifierProvider(create: (_) => UserData()),
          ],
        child: MaterialApp(
          title: 'Attendance System',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          // home: const MyHomePage(title: 'Flutter Demo Home Page'),
          initialRoute: Splash.routeName,
          routes: routes,
        ),
      );
    });
  }
}
