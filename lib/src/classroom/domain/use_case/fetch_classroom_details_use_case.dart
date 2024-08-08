import '../../../../core/core.dart';
import '../../data/data.dart';

class FetchClassroomDetailsUseCase extends UseCase<DataState,String>{
  final ClassroomRepositoryImpl classroomRepositoryImpl;
  FetchClassroomDetailsUseCase({required this.classroomRepositoryImpl});

  @override
  Future<DataState> call({required String params}) {
    return classroomRepositoryImpl.fetchClassRoomDetails(params);
  }

}