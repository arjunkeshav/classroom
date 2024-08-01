import '../../../../core/core.dart';

abstract class StudentsRepository {
  Future<DataState> fetchStudentList();
}
