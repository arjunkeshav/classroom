import 'package:bloc/bloc.dart';
import 'package:classroom/src/classroom/domain/use_case/add_subject_to_classroom_use_case.dart';
import 'package:equatable/equatable.dart';

import '../../../../core/core.dart';
import '../../classroom.dart';

part 'classroom_event.dart';
part 'classroom_state.dart';

class ClassroomBloc extends Bloc<ClassroomEvent, ClassroomState> {
  final FetchClassroomListUseCase fetchClassroomListUseCase;
  final FetchClassroomDetailsUseCase fetchClassroomDetailsUseCase;
  final AddSubjectToClassroomUseCase addSubjectToClassroomUseCase;
  ClassroomBloc({required this.fetchClassroomListUseCase,required this.fetchClassroomDetailsUseCase,required this.addSubjectToClassroomUseCase}) : super(ClassroomInitialState()) {
    on<FetchClassroomListEvent>((event, emit) async {
      emit(ClassroomLoadingState());
      final DataState dataState = await fetchClassroomListUseCase.call();
      if(dataState is SuccessResponse){
        emit(ClassroomLoadedState(classroomList: dataState.value.classrooms));
      }else{
        emit(ClassroomErrorState());
      }
    });
    on<FetchClassroomDetailsEvent>((event, emit) async {
      emit(ClassroomLoadingState());
      final DataState dataState = await fetchClassroomDetailsUseCase.call(params: event.classroomId);
      if(dataState is SuccessResponse){
        emit(ClassroomDetailsLoadedState(classroomEntity: dataState.value));
      }else{
        emit(ClassroomErrorState());
      }
    });
    on<AddSubjectToClassroomEvent>((event, emit) async {
      emit(ClassroomLoadingState());
      final DataState dataState = await addSubjectToClassroomUseCase.call(params:event.addSubjectToClassroomParams);
      if(dataState is SuccessResponse){
        emit(ClassroomDetailsLoadedState(classroomEntity: dataState.value));
      }else{
        emit(ClassroomErrorState());
      }
    });
  }
}
