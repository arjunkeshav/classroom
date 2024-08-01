import 'dart:convert';

import 'package:classroom/src/students/students.dart';
import 'package:dio/dio.dart';

import '../../../../../core/core.dart';

class StudentRemoteDataSourceImpl extends StudentRemoteDataSource {
  @override
  Future<DataState> fetchStudentList() async {
    try {
      final response = await ApiClient()
          .dio
          .get(UrlConst.studentListUrl, queryParameters: {'api_key': 'CbedB'});
      if (response.statusCode == 200) {
        return DataState.success(
            studentsModelFromJson(jsonEncode(response.data)));
      } else {
        return DataState.error(DioException(
          requestOptions: response.requestOptions,
          error: 'Failed to load students',
        ));
      }
    } catch (e) {
      return DataState.error(DioException(
        requestOptions: RequestOptions(path: ''),
        error: 'Failed to load students',
      ));
    }
  }
}
