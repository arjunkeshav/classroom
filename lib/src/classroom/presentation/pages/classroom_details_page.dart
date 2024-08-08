import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/core.dart';
import '../../../../utils/common/widgets/refresh_widget.dart';
import '../../classroom.dart';

class ClassroomDetailsPage extends StatelessWidget {
  final ClassroomDetailsParam classroomDetailsParam;

  const ClassroomDetailsPage({required this.classroomDetailsParam, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ClassroomBloc>()
        ..add(classroomDetailsParam.subjectId.isEmpty?FetchClassroomDetailsEvent(
            classroomId: classroomDetailsParam.classroomId):AddSubjectToClassroomEvent(
            addSubjectToClassroomParams: AddSubjectToClassroomParams(
                classroomId: classroomDetailsParam.classroomId,
                subjectId: classroomDetailsParam.subjectId))),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        body: BlocBuilder<ClassroomBloc, ClassroomState>(
          builder: (context, state) {
            if (state is ClassroomLoadingState) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is ClassroomDetailsLoadedState) {
              return Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Text(
                      state.classroomEntity.name,
                      style: const TextStyle(
                          fontSize: 22, fontWeight: FontWeight.w700),
                    ),
                  ),
                  ClassroomSubjectView(classroomEntity:state.classroomEntity),
                  Expanded(child: SeatGridView(seatCount: state.classroomEntity.size,))
                ],
              );
            } else if (state is ClassroomErrorState) {
              return RefreshWidget(
                  onPressed: () => context.read<ClassroomBloc>().add(
                      classroomDetailsParam.subjectId.isEmpty?FetchClassroomDetailsEvent(
                          classroomId: classroomDetailsParam.classroomId):AddSubjectToClassroomEvent(
                          addSubjectToClassroomParams: AddSubjectToClassroomParams(
                              classroomId: classroomDetailsParam.classroomId,
                              subjectId: classroomDetailsParam.subjectId))));
            } else {
              return const SizedBox();
            }
          },
        ),
      ),
    );
  }

}

class ClassroomDetailsParam {
  final String classroomId;
  final String subjectId;

  ClassroomDetailsParam({required this.classroomId, this.subjectId = ''});
}
