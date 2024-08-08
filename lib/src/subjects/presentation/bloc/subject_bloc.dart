import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/core.dart';
import '../../subjects.dart';

part 'subject_event.dart';
part 'subject_state.dart';

class SubjectBloc extends Bloc<SubjectEvent, SubjectState> {
  final FetchSubjectListUseCase fetchSubjectListUseCase;
  final FetchSubjectDetailsUseCase fetchSubjectDetailsUseCase;
  SubjectBloc({required this.fetchSubjectListUseCase,required this.fetchSubjectDetailsUseCase}) : super(SubjectInitialState()) {
    on<FetchSubjectListEvent>((event, emit) async {
      emit(SubjectLoadingState());
      final DataState dataState = await fetchSubjectListUseCase.call();
      if(dataState is SuccessResponse){
        emit(SubjectLoadedState(subjectList: dataState.value.subjects));
      }else{
        emit(SubjectErrorState());
      }
    });
    on<FetchSubjectDetailsEvent>((event, emit) async {
      emit(SubjectLoadingState());
      final DataState dataState = await fetchSubjectDetailsUseCase.call(params: event.subjectId);
      if(dataState is SuccessResponse){
        emit(SubjectDetailsLoadedState(subjectEntity: dataState.value));
      }else{
        emit(SubjectErrorState());
      }
    });
  }
}
