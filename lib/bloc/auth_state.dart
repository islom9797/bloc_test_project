import 'package:equatable/equatable.dart';

abstract class AuthState extends Equatable {
  const AuthState();

  @override
  List<Object> get props => [];
}

class UnauthenticatedState extends AuthState {}

class AuthenticatedState extends AuthState {
  final String username;
  final String password;

  const AuthenticatedState({required this.username, required this.password});
}
