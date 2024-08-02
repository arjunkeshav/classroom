import '../../../../../core/core.dart';

abstract class SubjectsRemoteDataSource{
  Future<DataState> fetchSubjectList();
}
