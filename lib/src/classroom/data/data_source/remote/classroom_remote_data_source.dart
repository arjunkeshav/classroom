import '../../../../../core/core.dart';

abstract class ClassroomRemoteDataSource{
  Future<DataState> fetchClassRoomList();
  Future<DataState> fetchClassRoomDetails(params);
  Future<DataState> addSubjectToClassroom(params);
}
