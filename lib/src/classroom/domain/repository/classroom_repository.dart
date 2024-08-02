import '../../../../core/core.dart';

abstract class ClassroomRepository {
  Future<DataState> fetchClassRoomList();
}
