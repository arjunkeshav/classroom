import 'package:classroom/core/core.dart';
import 'package:classroom/src/students/students.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../utils/common/common.dart';

class StudentListPage extends StatelessWidget {
  const StudentListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<StudentBloc>()..add(FetchStudentListEvent()),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        body: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                StudentConst.studentTitle,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
              ),
            ),
            Expanded(
              child: BlocBuilder<StudentBloc, StudentState>(
                builder: (context, state) {
                  if (state is StudentLoadingState) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state is StudentLoadedState) {
                    return StudentListView(studentList: state.studentList);
                  } else if (state is StudentErrorState) {
                    return RefreshWidget(
                        onPressed: () => context
                            .read<StudentBloc>()
                            .add(FetchStudentListEvent()));
                  } else {
                    return const SizedBox();
                  }
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
