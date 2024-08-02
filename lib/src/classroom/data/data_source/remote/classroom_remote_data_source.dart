import '../../../../../core/core.dart';

abstract class ClassroomRemoteDataSource{
  Future<DataState> fetchClassRoomList();
}
