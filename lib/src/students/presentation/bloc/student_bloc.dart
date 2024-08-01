import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/core.dart';
import '../../students.dart';

part 'student_event.dart';
part 'student_state.dart';

class StudentBloc extends Bloc<StudentEvent, StudentState> {
  final FetchStudentListUseCase fetchStudentListUseCase;
  StudentBloc({required this.fetchStudentListUseCase}) : super(StudentInitialState()) {
    on<FetchStudentListEvent>((event, emit) async {
      emit(StudentLoadingState());
      final DataState dataState = await fetchStudentListUseCase.call();
      if(dataState is SuccessResponse){
        emit(StudentLoadedState(studentList: dataState.value.students));
      }else{
        emit(StudentErrorState());
      }
    });
  }
}
