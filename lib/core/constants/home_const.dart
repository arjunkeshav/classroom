import 'package:classroom/core/core.dart';
import 'package:flutter/material.dart';
import '../../src/home/domain/domain.dart';

abstract class HomeConst{
  static const hello = 'Hello,\n';
  static const goodMorning = 'Good Morning';
  static const students = 'Students';
  static const subjects = 'Subjects';
  static const classRoom = 'Class Room';
  static const registration = 'Registration';
  static List<CategoryEntity> categoryList = [
    CategoryEntity(categoryName:students,iconColor: const Color(0xFF0FAB76),iconData:Icons.school_outlined,cardBg: const Color(0xffAAC9BF,),navigateTo: RouteGenerator.studentListPage),
    CategoryEntity(categoryName:subjects,iconColor: const Color(0xFF3595FF),iconData:Icons.menu_book_outlined,cardBg: const Color(0xffD8EBFD),navigateTo: RouteGenerator.subjectListPage),
    CategoryEntity(categoryName:classRoom,iconColor: const Color(0xFFF9614F),iconData:Icons.meeting_room_outlined,cardBg: const Color(0xffFFE0DD),navigateTo: RouteGenerator.classRoomPage),
    CategoryEntity(categoryName:registration,iconColor: const Color(0xFFFDC441),iconData:Icons.edit,cardBg: const Color(0xffFFF3D9),navigateTo: ''),
  ];
}