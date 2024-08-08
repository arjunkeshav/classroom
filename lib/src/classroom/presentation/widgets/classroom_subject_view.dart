import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/core.dart';
import '../../../../utils/common/common.dart';
import '../../../subjects/subjects.dart';
import '../../classroom.dart';

class ClassroomSubjectView extends StatelessWidget {
  final ClassroomEntity classroomEntity;

  const ClassroomSubjectView({required this.classroomEntity, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) {
        final subjectBloc = sl<SubjectBloc>();
        if (classroomEntity.subject.isNotEmpty) {
          subjectBloc.add(
              FetchSubjectDetailsEvent(subjectId: classroomEntity.subject));
        }
        return subjectBloc;
      },
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xFFD1D1D1),
        ),
        child: BlocBuilder<SubjectBloc, SubjectState>(
          builder: (context, state) {

            if(state is SubjectLoadingState){
              return const CircularProgressIndicator();
            }
            else if(state is SubjectDetailsLoadedState){
              return ListTile(
                title: classroomEntity.subject.isEmpty
                    ? Text(state.subjectEntity.name)
                    : const Text('Subject Name'),
                subtitle: Text(state.subjectEntity.teacher),
                trailing: ElevatedButton(
                  onPressed: () =>
                      handleNavigation(context, classroomId: classroomEntity.id),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(
                      0xFFAAC9BF,
                    ),
                    foregroundColor: const Color(
                      0xFF0FAB76,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0), // Border radius
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text('Change'),
                  ),
                ),
              );
            }
           else if(state is SubjectErrorState){
              return RefreshWidget(
                  onPressed: () => context
                      .read<SubjectBloc>()
                      .add(FetchSubjectDetailsEvent(subjectId: classroomEntity.subject)));
            }
            else {
              return ListTile(
                title: const Text('Add Subject'),
                trailing: ElevatedButton(
                  onPressed: () =>
                      handleNavigation(
                          context, classroomId: classroomEntity.id),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(
                      0xFFAAC9BF,
                    ),
                    foregroundColor: const Color(
                      0xFF0FAB76,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0), // Border radius
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text('Add'),
                  ),
                ),
              );
            }
          },
        ),
      ),
    );
  }

  handleNavigation(BuildContext context, {required int classroomId}) async {
    Navigator.pushReplacementNamed(context, RouteGenerator.subjectListPage,
        arguments: SubjectListParam(
            fromHome: false, classroomId: classroomId.toString()));
  }
}
