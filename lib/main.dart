import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_project/cubit/data_cubit.dart';
import 'package:test_project/presentation/pages/splash_screen.dart';
import 'bloc/auth_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(375, 756),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) {
        return MultiBlocProvider(
          providers: [
            BlocProvider<AuthBloc>(
              create: (BuildContext context) => AuthBloc(),
            ),
            BlocProvider<DataCubit>(
              create: (BuildContext context) => DataCubit(),
            ),
          ],
          child: MaterialApp(
            debugShowCheckedModeBanner: false
            ,
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: SplashScreen(),
          ),
        );
      }
    );
  }
}
