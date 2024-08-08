import '../../../../core/core.dart';

abstract class ClassroomRepository {
  Future<DataState> fetchClassRoomList();
  Future<DataState> fetchClassRoomDetails(params);
  Future<DataState> addSubjectToClassroom(params);
}
