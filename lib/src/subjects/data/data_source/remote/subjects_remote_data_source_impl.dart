import 'dart:convert';

import 'package:dio/dio.dart';

import '../../../../../core/core.dart';
import '../../../subjects.dart';

class SubjectsRemoteDataSourceImpl extends SubjectsRemoteDataSource {
  @override
  Future<DataState> fetchSubjectList() async {
    try {
      final response = await ApiClient()
          .dio
          .get(UrlConst.subjectListUrl);
      if (response.statusCode == 200) {
        return DataState.success(
            subjectsModelFromJson(jsonEncode(response.data)));
      } else {
        return DataState.error(DioException(
          requestOptions: response.requestOptions,
          error: 'Failed to load subjects',
        ));
      }
    } catch (e) {
      return DataState.error(DioException(
        requestOptions: RequestOptions(path: ''),
        error: 'Failed to load subjects',
      ));
    }
  }
}
