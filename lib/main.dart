import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/app.dart';
import 'core/network/local/hive_service.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  HiveService().init();
  //HiveService().deleteHive();
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}
  // AuthEntity authEntity = const AuthEntity(
  //   id: null,
  //   fname: 'Kiran',
  //   lname: 'Rana',
  //   image: '',
  //   phone: '1234567890',
  //   batch: BatchEntity(
  //     batchId: '20df4a89-6c95-44d0-bebf-0980c33bd49f',
  //     batchName: '30-B',
  //   ),
  //   courses: [
  //     CourseEntity(
  //         courseId: '20df4a89-6c95-44d0-bebf-0980c33bd49f',
  //         courseName: 'Flutter'),
  //     CourseEntity(
  //       courseId: '278ce8eb-223c-4c4b-85ba-17dbc83f27ba',
  //       courseName: 'API',
  //     )
  //   ],
  //   username: 'kiran',
  //   password: 'kiran123',
  // );

  // AuthEntity authEntity2 = const AuthEntity(
  //   id: null,
  //   fname: 'Kiran',
  //   lname: 'Rana',
  //   image: '',
  //   phone: '1234567890',
  //   batch: BatchEntity(
  //       batchId: '20df4a89-6c95-44d0-bebf-0980c33bd49f', batchName: '30-B'),
  //   courses: [
  //     CourseEntity(
  //         courseId: '20df4a89-6c95-44d0-bebf-0980c33bd49f',
  //         courseName: 'Flutter'),
  //     CourseEntity(
  //         courseId: '278ce8eb-223c-4c4b-85ba-17dbc83f27ba', courseName: 'API')
  //   ],
  //   username: 'kiran',
  //   password: 'kiran123',
  // );

  // print(authEntity == authEntity2);
//}
