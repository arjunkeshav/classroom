import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/core.dart';
import '../../../../utils/common/common.dart';
import '../../subjects.dart';

class SubjectListPage extends StatelessWidget {
  const SubjectListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<SubjectBloc>()..add(FetchSubjectListEvent()),
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
                SubjectConst.subjectTitle,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700),
              ),
            ),
            Expanded(
              child: BlocBuilder<SubjectBloc, SubjectState>(
                builder: (context, state) {
                  if (state is SubjectLoadingState) {
                    return const Center(child: CircularProgressIndicator());
                  } else if (state is SubjectLoadedState) {
                    return SubjectListView(subjectList: state.subjectList);
                  } else if (state is SubjectErrorState) {
                    return RefreshWidget(
                        onPressed: () => context
                            .read<SubjectBloc>()
                            .add(FetchSubjectListEvent()));
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
