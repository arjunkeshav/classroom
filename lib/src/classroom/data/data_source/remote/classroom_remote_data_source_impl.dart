import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../../../core/core.dart';
import '../../../classroom.dart';

class ClassroomRemoteDataSourceImpl extends ClassroomRemoteDataSource {
  @override
  Future<DataState> fetchClassRoomList() async {
    try {
      final response = await ApiClient()
          .dio
          .get(UrlConst.classroomListUrl);
      if (response.statusCode == 200) {
        return DataState.success(
            classroomsModelFromJson(jsonEncode(response.data)));
      } else {
        return DataState.error(DioException(
          requestOptions: response.requestOptions,
          error: 'Failed to load classrooms',
        ));
      }
    } catch (e) {
      return DataState.error(DioException(
        requestOptions: RequestOptions(path: ''),
        error: 'Failed to load classrooms',
      ));
    }
  }
}