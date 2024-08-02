part of 'subject_bloc.dart';

sealed class SubjectState extends Equatable {
  const SubjectState();
}

final class SubjectInitialState extends SubjectState {
  @override
  List<Object> get props => [];
}

final class SubjectLoadingState extends SubjectState {
  @override
  List<Object> get props => [];
}

final class SubjectLoadedState extends SubjectState {
  final List<SubjectEntity> subjectList;
  const SubjectLoadedState({required this.subjectList});
  @override
  List<Object> get props => [subjectList];
}

final class SubjectErrorState extends SubjectState {
  @override
  List<Object> get props => [];
}
