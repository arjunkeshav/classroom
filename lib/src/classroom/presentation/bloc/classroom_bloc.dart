import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/core.dart';
import '../../classroom.dart';

part 'classroom_event.dart';
part 'classroom_state.dart';

class ClassroomBloc extends Bloc<ClassroomEvent, ClassroomState> {
  final FetchClassroomListUseCase fetchClassroomListUseCase;
  ClassroomBloc({required this.fetchClassroomListUseCase}) : super(ClassroomInitialState()) {
    on<FetchClassroomListEvent>((event, emit) async {
      emit(ClassroomLoadingState());
      final DataState dataState = await fetchClassroomListUseCase.call();
      if(dataState is SuccessResponse){
        emit(ClassroomLoadedState(classroomList: dataState.value.classrooms));
      }else{
        emit(ClassroomErrorState());
      }
    });
  }
}
