import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:note/application/auth/auth_bloc.dart';
import 'package:note/presentation/routes/router.gr.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state){
        //print("Check state $state");
        state.map(
          initial: (_){},
          authenticated: (_) => ExtendedNavigator.ofRouter<Router>().pushReplacementNamed(Routes.noteScreen),
          unauthenticated: (_) => ExtendedNavigator.ofRouter<Router>().pushReplacementNamed(Routes.signInScreen) 
          );
      },
      child: _PageWidget(),
    );
  }
}

class _PageWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
    return const Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}