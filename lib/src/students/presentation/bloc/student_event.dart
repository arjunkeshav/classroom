part of 'student_bloc.dart';

sealed class StudentEvent extends Equatable {
  const StudentEvent();
}

class FetchStudentListEvent extends StudentEvent{
  @override
  List<Object?> get props => [];

}
