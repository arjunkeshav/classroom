import 'package:get_it/get_it.dart';

import '../../src/students/students.dart';
import '../../src/subjects/subjects.dart';
import '../../src/classroom/classroom.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  //datasource
  sl.registerSingleton<StudentRemoteDataSourceImpl>(
      StudentRemoteDataSourceImpl());
  sl.registerSingleton<SubjectsRemoteDataSourceImpl>(
      SubjectsRemoteDataSourceImpl());
  sl.registerSingleton<ClassroomRemoteDataSourceImpl>(
      ClassroomRemoteDataSourceImpl());

  //repository
  sl.registerSingleton<StudentRepositoryImpl>(
      StudentRepositoryImpl(studentRemoteDataSourceImpl: sl()));
  sl.registerSingleton<SubjectsRepositoryImpl>(
      SubjectsRepositoryImpl(subjectsRemoteDataSourceImpl: sl()));
  sl.registerSingleton<ClassroomRepositoryImpl>(
      ClassroomRepositoryImpl(classroomRemoteDataSourceImpl: sl()));

  //use case
  sl.registerSingleton<FetchStudentListUseCase>(
      FetchStudentListUseCase(studentRepositoryImpl: sl()));
  sl.registerSingleton<FetchSubjectListUseCase>(
      FetchSubjectListUseCase(subjectsRepositoryImpl: sl()));
  sl.registerSingleton<FetchClassroomListUseCase>(
      FetchClassroomListUseCase(classroomRepositoryImpl: sl()));

  //bloc
  sl.registerFactory<StudentBloc>(
      () => StudentBloc(fetchStudentListUseCase: sl()));
  sl.registerFactory<SubjectBloc>(
      () => SubjectBloc(fetchSubjectListUseCase: sl()));
  sl.registerFactory<ClassroomBloc>(
      () => ClassroomBloc(fetchClassroomListUseCase: sl()));
}
