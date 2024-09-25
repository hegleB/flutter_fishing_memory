import 'package:equatable/equatable.dart';
import 'package:fishingmemory/core/models/map/geocoding.dart';

abstract class GeoCodingState extends Equatable {}

class GeoCodingIdle extends GeoCodingState {
  @override
  List<Object?> get props => [];
}

class GeoCodingLoading extends GeoCodingState {
  @override
  List<Object?> get props => [];
}

class GeoCodingError extends GeoCodingState {
  final String message;

  GeoCodingError(this.message);

  @override
  List<Object> get props => [message];
}

class GeoCodingSuccess extends GeoCodingState {
  final Geocoding geocoding;

  GeoCodingSuccess({required this.geocoding});
  @override
  List<Object?> get props => [geocoding];
}
