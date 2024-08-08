import '../../../../core/core.dart';
import '../../classroom.dart';

class ClassroomRepositoryImpl implements ClassroomRepository {
  final ClassroomRemoteDataSourceImpl classroomRemoteDataSourceImpl;

  ClassroomRepositoryImpl({required this.classroomRemoteDataSourceImpl});

  @override
  Future<DataState> fetchClassRoomList() async {
    return await classroomRemoteDataSourceImpl.fetchClassRoomList();
  }
  @override
  Future<DataState> fetchClassRoomDetails(params) async {
    return await classroomRemoteDataSourceImpl.fetchClassRoomDetails(params);
  }
 @override
  Future<DataState> addSubjectToClassroom(params) async {
    return await classroomRemoteDataSourceImpl.addSubjectToClassroom(params);
  }
}