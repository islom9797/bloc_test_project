import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:test_project/bloc/auth_bloc.dart';
import 'package:test_project/bloc/auth_event.dart';
import 'package:test_project/config/extensions.dart';
import 'package:test_project/presentation/widgets/custom_button.dart';
import 'package:test_project/presentation/widgets/custom_text_field.dart';
import '../../bloc/auth_state.dart';
import '../../data/model/user_model.dart';
import 'home_screen.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return Scaffold(
      // appBar: AppBar(title: Text('Login')),
      body: BlocBuilder<AuthBloc, AuthState>(

        builder: (context,state) {
          return SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Container(
                      height: 100.h,
                      width: 200.w,
                      child: SvgPicture.asset(
                        "assets/eriell_splash.svg",
                        height: 100.h,
                        width: 300.w,
                        fit: BoxFit.fill,
                      )),
                  Spacer(
                    flex: 1,
                  ),
                  CustomTextField(
                      title: "Username",
                      hintText: "Username",
                      controller: _usernameController,
                      onChanged: (e) {}),
                  10.ph,
                  CustomTextField(
                    title: "Password",
                    hintText: "Password",
                    controller: _passwordController,
                    onChanged: (e) {},
                    obscureText: true,
                  ),
                  SizedBox(height: 20),
                  BlocListener<AuthBloc, AuthState>(
                    listener: (context, state) {
                      print('loginState is ${state}');
                      if (state is AuthenticatedState) {
                        print('state is ');
                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (context) => HomeScreen( user: User(userName: state.username, password: state.password),)));
                      }
                    },
                    child: CustomButton(
                      onPressed: () {
                        BlocProvider.of<AuthBloc>(context).add(
                          LoginEvent(
                            username: _usernameController.text,
                            password: _passwordController.text,
                          ),
                        );
                        print('clicked');
                      },
                      text: 'Login',
                    ),
                  ),
                  Spacer(
                    flex: 2,
                  ),

                ],
              ),
            ),
          );
        }
      ),
    );
  }
}
