part of 'subject_bloc.dart';

sealed class SubjectEvent extends Equatable {
  const SubjectEvent();
}

class FetchSubjectListEvent extends SubjectEvent{
  @override
  List<Object?> get props => [];

}
