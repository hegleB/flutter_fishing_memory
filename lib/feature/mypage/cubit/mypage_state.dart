
import 'package:equatable/equatable.dart';

class MyPageState extends Equatable {
  @override
  List<Object> get props => [];
}

class MyPageInitial extends MyPageState {}

class MyPageLoading extends MyPageState {}

class MyPageSuccess extends MyPageState {}

class MyPageError extends MyPageState {
  final dynamic error;

  MyPageError({
    required this.error
  });

  @override
  List<Object> get props => [error];
}