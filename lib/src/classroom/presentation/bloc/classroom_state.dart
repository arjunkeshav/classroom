part of 'classroom_bloc.dart';

sealed class ClassroomState extends Equatable {
  const ClassroomState();
}

final class ClassroomInitialState extends ClassroomState {
  @override
  List<Object> get props => [];
}

final class ClassroomLoadingState extends ClassroomState {
  @override
  List<Object> get props => [];
}

final class ClassroomLoadedState extends ClassroomState {
  final List<ClassroomEntity> classroomList;
  const ClassroomLoadedState({required this.classroomList});
  @override
  List<Object> get props => [classroomList];
}
final class ClassroomDetailsLoadedState extends ClassroomState {
  final ClassroomEntity classroomEntity;
  const ClassroomDetailsLoadedState({required this.classroomEntity});
  @override
  List<Object> get props => [classroomEntity];
}

final class ClassroomErrorState extends ClassroomState {
  @override
  List<Object> get props => [];
}
