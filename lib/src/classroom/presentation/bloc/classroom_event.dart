part of 'classroom_bloc.dart';

sealed class ClassroomEvent extends Equatable {
  const ClassroomEvent();
}

class FetchClassroomListEvent extends ClassroomEvent{
  @override
  List<Object?> get props => [];

}

class FetchClassroomDetailsEvent extends ClassroomEvent{
  final String classroomId;
  const FetchClassroomDetailsEvent({required this.classroomId});
  @override
  List<Object?> get props => [classroomId];

}
class AddSubjectToClassroomEvent extends ClassroomEvent{
  final AddSubjectToClassroomParams addSubjectToClassroomParams;
  const AddSubjectToClassroomEvent({required this.addSubjectToClassroomParams});
  @override
  List<Object?> get props => [addSubjectToClassroomParams];

}
