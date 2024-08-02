import '../../../../core/core.dart';

abstract class SubjectsRepository {
  Future<DataState> fetchSubjectList();
}
