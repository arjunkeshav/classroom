import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/core.dart';
import '../../../../utils/common/common.dart';
import '../../classroom.dart';

class ClassroomListPage extends StatelessWidget {
  const ClassroomListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<ClassroomBloc>()..add(FetchClassroomListEvent()),
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
                ClassroomConst.classroomTitle,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
              ),
            ),
            Expanded(
              child: BlocBuilder<ClassroomBloc, ClassroomState>(
                builder: (context, state) {
                  if (state is ClassroomLoadingState) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state is ClassroomLoadedState) {
                    return ClassroomListView(classroomList: state.classroomList);
                  } else if (state is ClassroomErrorState) {
                    return RefreshWidget(
                        onPressed: () => context
                            .read<ClassroomBloc>()
                            .add(FetchClassroomListEvent()));
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
