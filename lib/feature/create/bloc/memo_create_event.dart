import 'dart:typed_data';

import 'package:equatable/equatable.dart';
import 'package:fishingmemory/core/models/memo/memo_info.dart';

abstract class MemoCreateEvent extends Equatable {
  const MemoCreateEvent();

  @override
  List<Object?> get props => [];
}

class CreateMemo extends MemoCreateEvent {}

class ResetMemoCreate extends MemoCreateEvent {}

class SetMemoInfo extends MemoCreateEvent {
  final MemoInfo memoInfo;
  const SetMemoInfo(this.memoInfo);

  @override
  List<Object?> get props => [memoInfo];
}

class UpdateMemo extends MemoCreateEvent {}

class UploadImage extends MemoCreateEvent {}

class SetEditMode extends MemoCreateEvent {
  final bool isEdit;
  const SetEditMode(this.isEdit);
  @override
  List<Object> get props => [isEdit];
}

class SetImage extends MemoCreateEvent {
  final Uint8List image;
  const SetImage(this.image);
  @override
  List<Object> get props => [image];
}

class SetCoords extends MemoCreateEvent {
  final String coords;
  const SetCoords(this.coords);
  @override
  List<Object> get props => [coords];
}

class SetLocation extends MemoCreateEvent {
  final String location;
  const SetLocation(this.location);
  @override
  List<Object> get props => [location];
}

class SetDate extends MemoCreateEvent {
  final String date;
  const SetDate(this.date);
  @override
  List<Object> get props => [date];
}

class SetTitle extends MemoCreateEvent {
  final String title;
  const SetTitle(this.title);
  @override
  List<Object> get props => [title];
}

class SetFishType extends MemoCreateEvent {
  final String fishType;
  const SetFishType(this.fishType);
  @override
  List<Object> get props => [fishType];
}

class SetContent extends MemoCreateEvent {
  final String content;
  const SetContent(this.content);
  @override
  List<Object> get props => [content];
}

class SetSize extends MemoCreateEvent {
  final String size;
  const SetSize(this.size);
  @override
  List<Object> get props => [size];
}

class SetWaterType extends MemoCreateEvent {
  final String waterType;
  const SetWaterType(this.waterType);
  @override
  List<Object> get props => [waterType];
}
