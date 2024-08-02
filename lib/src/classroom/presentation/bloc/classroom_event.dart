part of 'classroom_bloc.dart';

sealed class ClassroomEvent extends Equatable {
  const ClassroomEvent();
}

class FetchClassroomListEvent extends ClassroomEvent{
  @override
  List<Object?> get props => [];

}
