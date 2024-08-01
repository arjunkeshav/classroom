import 'package:get_it/get_it.dart';

import '../../src/students/students.dart';

final sl = GetIt.instance;

Future<void> initializeDependencies() async {
  //datasource
  sl.registerSingleton<StudentRemoteDataSourceImpl>(
      StudentRemoteDataSourceImpl());

  //repository
  sl.registerSingleton<StudentRepositoryImpl>(
      StudentRepositoryImpl(studentRemoteDataSourceImpl: sl()));

  //use case
  sl.registerSingleton<FetchStudentListUseCase>(
      FetchStudentListUseCase(studentRepositoryImpl: sl()));

  //bloc
  sl.registerFactory<StudentBloc>(
      () => StudentBloc(fetchStudentListUseCase: sl()));
}
