import '../../../../core/core.dart';
import '../../classroom.dart';

class ClassroomRepositoryImpl implements ClassroomRepository {
  final ClassroomRemoteDataSourceImpl classroomRemoteDataSourceImpl;

  ClassroomRepositoryImpl({required this.classroomRemoteDataSourceImpl});

  @override
  Future<DataState> fetchClassRoomList() async {
    return await classroomRemoteDataSourceImpl.fetchClassRoomList();
  }
}