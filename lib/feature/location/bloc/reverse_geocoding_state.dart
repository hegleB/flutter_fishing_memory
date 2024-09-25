import 'package:equatable/equatable.dart';
import 'package:fishingmemory/core/models/map/reverse_geocoding.dart';

abstract class ReverseGeoCodingState extends Equatable {}

class ReverseGeoCodingIdle extends ReverseGeoCodingState {
  @override
  List<Object?> get props => [];
}

class ReverseGeoCodingLoading extends ReverseGeoCodingState {
  @override
  List<Object?> get props => [];
}

class ReverseGeoCodingError extends ReverseGeoCodingState {
  final String message;

  ReverseGeoCodingError(this.message);

  @override
  List<Object> get props => [message];
}

class ReverseGeoCodingSuccess extends ReverseGeoCodingState {
  final ReverseGeocoding reverseGeocoding;

  ReverseGeoCodingSuccess({required this.reverseGeocoding});
  @override
  List<Object?> get props => [reverseGeocoding];
}
