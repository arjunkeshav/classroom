import '../../../../core/core.dart';
import '../../data/data.dart';

class FetchSubjectListUseCase extends UseCase<DataState,void>{
  final SubjectsRepositoryImpl subjectsRepositoryImpl;
  FetchSubjectListUseCase({required this.subjectsRepositoryImpl});

  @override
  Future<DataState> call({void params}) {
    return subjectsRepositoryImpl.fetchSubjectList();
  }

}