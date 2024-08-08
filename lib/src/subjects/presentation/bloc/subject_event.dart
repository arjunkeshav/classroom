part of 'subject_bloc.dart';

sealed class SubjectEvent extends Equatable {
  const SubjectEvent();
}

class FetchSubjectListEvent extends SubjectEvent{
  @override
  List<Object?> get props => [];

}
class FetchSubjectDetailsEvent extends SubjectEvent{
  final String subjectId;

  const FetchSubjectDetailsEvent({required this.subjectId});
  @override
  List<Object?> get props => [subjectId];

}
