import '../../../../core/core.dart';
import '../../subjects.dart';

class SubjectsRepositoryImpl implements SubjectsRepository {
  final SubjectsRemoteDataSourceImpl subjectsRemoteDataSourceImpl;

  SubjectsRepositoryImpl({required this.subjectsRemoteDataSourceImpl});

  @override
  Future<DataState> fetchSubjectList() async {
    return await subjectsRemoteDataSourceImpl.fetchSubjectList();
  }

  @override
  Future<DataState> fetchSubjectDetails(param) async {
    return await subjectsRemoteDataSourceImpl.fetchSubjectDetails(param);
  }
}