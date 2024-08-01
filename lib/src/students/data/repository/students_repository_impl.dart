import '../../../../core/core.dart';
import '../../students.dart';

class StudentRepositoryImpl implements StudentsRepository {
  final StudentRemoteDataSourceImpl studentRemoteDataSourceImpl;

  StudentRepositoryImpl({required this.studentRemoteDataSourceImpl});

  @override
  Future<DataState> fetchStudentList() async {
    return await studentRemoteDataSourceImpl.fetchStudentList();
  }
}