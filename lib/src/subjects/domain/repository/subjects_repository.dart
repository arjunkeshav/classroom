import '../../../../core/core.dart';

abstract class SubjectsRepository {
  Future<DataState> fetchSubjectList();
  Future<DataState> fetchSubjectDetails(param);
}
