import '../../../../core/core.dart';
import '../../data/data.dart';

class FetchStudentListUseCase extends UseCase<DataState,void>{
  final StudentRepositoryImpl studentRepositoryImpl;
  FetchStudentListUseCase({required this.studentRepositoryImpl});

  @override
  Future<DataState> call({void params}) {
    return studentRepositoryImpl.fetchStudentList();
  }

}