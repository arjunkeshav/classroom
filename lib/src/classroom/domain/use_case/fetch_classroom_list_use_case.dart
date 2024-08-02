import '../../../../core/core.dart';
import '../../data/data.dart';

class FetchClassroomListUseCase extends UseCase<DataState,void>{
  final ClassroomRepositoryImpl classroomRepositoryImpl;
  FetchClassroomListUseCase({required this.classroomRepositoryImpl});

  @override
  Future<DataState> call({void params}) {
    return classroomRepositoryImpl.fetchClassRoomList();
  }

}