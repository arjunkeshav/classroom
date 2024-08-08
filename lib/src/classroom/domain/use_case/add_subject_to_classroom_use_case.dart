import '../../../../core/core.dart';
import '../../data/data.dart';

class AddSubjectToClassroomUseCase extends UseCase<DataState,AddSubjectToClassroomParams>{
  final ClassroomRepositoryImpl classroomRepositoryImpl;
  AddSubjectToClassroomUseCase({required this.classroomRepositoryImpl});

  @override
  Future<DataState> call({required AddSubjectToClassroomParams params}) {
    return classroomRepositoryImpl.addSubjectToClassroom(params);
  }

}