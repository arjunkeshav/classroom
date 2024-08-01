part of 'student_bloc.dart';

sealed class StudentState extends Equatable {
  const StudentState();
}

final class StudentInitialState extends StudentState {
  @override
  List<Object> get props => [];
}

final class StudentLoadingState extends StudentState {
  @override
  List<Object> get props => [];
}

final class StudentLoadedState extends StudentState {
  final List<StudentEntity> studentList;
  const StudentLoadedState({required this.studentList});
  @override
  List<Object> get props => [studentList];
}

final class StudentErrorState extends StudentState {
  @override
  List<Object> get props => [];
}
