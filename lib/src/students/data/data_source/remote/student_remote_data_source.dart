import '../../../../../core/core.dart';

abstract class StudentRemoteDataSource{
  Future<DataState> fetchStudentList();
}
