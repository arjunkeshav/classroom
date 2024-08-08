import '../../../../core/core.dart';
import '../../data/data.dart';

class FetchSubjectDetailsUseCase extends UseCase<DataState,String>{
  final SubjectsRepositoryImpl subjectsRepositoryImpl;
  FetchSubjectDetailsUseCase({required this.subjectsRepositoryImpl});

  @override
  Future<DataState> call({required String params}) {
    return subjectsRepositoryImpl.fetchSubjectDetails(params);
  }

}