// Mocks generated by Mockito 5.4.2 from annotations
// in hive_and_api_for_class/test/features/auth/presentation/view/register_view_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i6;
import 'dart:io' as _i8;

import 'package:dartz/dartz.dart' as _i2;
import 'package:hive_and_api_for_class/core/failure/failure.dart' as _i7;
import 'package:hive_and_api_for_class/features/auth/domain/entity/student_entity.dart'
    as _i9;
import 'package:hive_and_api_for_class/features/auth/domain/use_case/auth_usecase.dart'
    as _i5;
import 'package:hive_and_api_for_class/features/batch/domain/entity/batch_entity.dart'
    as _i11;
import 'package:hive_and_api_for_class/features/batch/domain/repository/batch_repository.dart'
    as _i3;
import 'package:hive_and_api_for_class/features/batch/domain/use_case/batch_use_case.dart'
    as _i10;
import 'package:hive_and_api_for_class/features/course/domain/entity/course_entity.dart'
    as _i13;
import 'package:hive_and_api_for_class/features/course/domain/repository/course_repository.dart'
    as _i4;
import 'package:hive_and_api_for_class/features/course/domain/use_case/course_usecase.dart'
    as _i12;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeEither_0<L, R> extends _i1.SmartFake implements _i2.Either<L, R> {
  _FakeEither_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeIBatchRepository_1 extends _i1.SmartFake
    implements _i3.IBatchRepository {
  _FakeIBatchRepository_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeICourseRepository_2 extends _i1.SmartFake
    implements _i4.ICourseRepository {
  _FakeICourseRepository_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [AuthUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockAuthUseCase extends _i1.Mock implements _i5.AuthUseCase {
  @override
  _i6.Future<_i2.Either<_i7.Failure, String>> uploadProfilePicture(
          _i8.File? file) =>
      (super.noSuchMethod(
        Invocation.method(
          #uploadProfilePicture,
          [file],
        ),
        returnValue: _i6.Future<_i2.Either<_i7.Failure, String>>.value(
            _FakeEither_0<_i7.Failure, String>(
          this,
          Invocation.method(
            #uploadProfilePicture,
            [file],
          ),
        )),
        returnValueForMissingStub:
            _i6.Future<_i2.Either<_i7.Failure, String>>.value(
                _FakeEither_0<_i7.Failure, String>(
          this,
          Invocation.method(
            #uploadProfilePicture,
            [file],
          ),
        )),
      ) as _i6.Future<_i2.Either<_i7.Failure, String>>);
  @override
  _i6.Future<_i2.Either<_i7.Failure, bool>> registerStudent(
          _i9.StudentEntity? student) =>
      (super.noSuchMethod(
        Invocation.method(
          #registerStudent,
          [student],
        ),
        returnValue: _i6.Future<_i2.Either<_i7.Failure, bool>>.value(
            _FakeEither_0<_i7.Failure, bool>(
          this,
          Invocation.method(
            #registerStudent,
            [student],
          ),
        )),
        returnValueForMissingStub:
            _i6.Future<_i2.Either<_i7.Failure, bool>>.value(
                _FakeEither_0<_i7.Failure, bool>(
          this,
          Invocation.method(
            #registerStudent,
            [student],
          ),
        )),
      ) as _i6.Future<_i2.Either<_i7.Failure, bool>>);
  @override
  _i6.Future<_i2.Either<_i7.Failure, bool>> loginStudent(
    String? username,
    String? password,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #loginStudent,
          [
            username,
            password,
          ],
        ),
        returnValue: _i6.Future<_i2.Either<_i7.Failure, bool>>.value(
            _FakeEither_0<_i7.Failure, bool>(
          this,
          Invocation.method(
            #loginStudent,
            [
              username,
              password,
            ],
          ),
        )),
        returnValueForMissingStub:
            _i6.Future<_i2.Either<_i7.Failure, bool>>.value(
                _FakeEither_0<_i7.Failure, bool>(
          this,
          Invocation.method(
            #loginStudent,
            [
              username,
              password,
            ],
          ),
        )),
      ) as _i6.Future<_i2.Either<_i7.Failure, bool>>);
}

/// A class which mocks [BatchUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockBatchUseCase extends _i1.Mock implements _i10.BatchUseCase {
  @override
  _i3.IBatchRepository get batchRepository => (super.noSuchMethod(
        Invocation.getter(#batchRepository),
        returnValue: _FakeIBatchRepository_1(
          this,
          Invocation.getter(#batchRepository),
        ),
        returnValueForMissingStub: _FakeIBatchRepository_1(
          this,
          Invocation.getter(#batchRepository),
        ),
      ) as _i3.IBatchRepository);
  @override
  _i6.Future<_i2.Either<_i7.Failure, List<_i11.BatchEntity>>> getAllBatches() =>
      (super.noSuchMethod(
        Invocation.method(
          #getAllBatches,
          [],
        ),
        returnValue:
            _i6.Future<_i2.Either<_i7.Failure, List<_i11.BatchEntity>>>.value(
                _FakeEither_0<_i7.Failure, List<_i11.BatchEntity>>(
          this,
          Invocation.method(
            #getAllBatches,
            [],
          ),
        )),
        returnValueForMissingStub:
            _i6.Future<_i2.Either<_i7.Failure, List<_i11.BatchEntity>>>.value(
                _FakeEither_0<_i7.Failure, List<_i11.BatchEntity>>(
          this,
          Invocation.method(
            #getAllBatches,
            [],
          ),
        )),
      ) as _i6.Future<_i2.Either<_i7.Failure, List<_i11.BatchEntity>>>);
  @override
  _i6.Future<_i2.Either<_i7.Failure, bool>> addBatch(_i11.BatchEntity? batch) =>
      (super.noSuchMethod(
        Invocation.method(
          #addBatch,
          [batch],
        ),
        returnValue: _i6.Future<_i2.Either<_i7.Failure, bool>>.value(
            _FakeEither_0<_i7.Failure, bool>(
          this,
          Invocation.method(
            #addBatch,
            [batch],
          ),
        )),
        returnValueForMissingStub:
            _i6.Future<_i2.Either<_i7.Failure, bool>>.value(
                _FakeEither_0<_i7.Failure, bool>(
          this,
          Invocation.method(
            #addBatch,
            [batch],
          ),
        )),
      ) as _i6.Future<_i2.Either<_i7.Failure, bool>>);
}

/// A class which mocks [CourseUseCase].
///
/// See the documentation for Mockito's code generation for more information.
class MockCourseUseCase extends _i1.Mock implements _i12.CourseUseCase {
  @override
  _i4.ICourseRepository get courseRepository => (super.noSuchMethod(
        Invocation.getter(#courseRepository),
        returnValue: _FakeICourseRepository_2(
          this,
          Invocation.getter(#courseRepository),
        ),
        returnValueForMissingStub: _FakeICourseRepository_2(
          this,
          Invocation.getter(#courseRepository),
        ),
      ) as _i4.ICourseRepository);
  @override
  _i6.Future<_i2.Either<_i7.Failure, bool>> addCourse(
          _i13.CourseEntity? course) =>
      (super.noSuchMethod(
        Invocation.method(
          #addCourse,
          [course],
        ),
        returnValue: _i6.Future<_i2.Either<_i7.Failure, bool>>.value(
            _FakeEither_0<_i7.Failure, bool>(
          this,
          Invocation.method(
            #addCourse,
            [course],
          ),
        )),
        returnValueForMissingStub:
            _i6.Future<_i2.Either<_i7.Failure, bool>>.value(
                _FakeEither_0<_i7.Failure, bool>(
          this,
          Invocation.method(
            #addCourse,
            [course],
          ),
        )),
      ) as _i6.Future<_i2.Either<_i7.Failure, bool>>);
  @override
  _i6.Future<
      _i2
          .Either<_i7.Failure, List<_i13.CourseEntity>>> getAllCourses() =>
      (super.noSuchMethod(
        Invocation.method(
          #getAllCourses,
          [],
        ),
        returnValue:
            _i6.Future<_i2.Either<_i7.Failure, List<_i13.CourseEntity>>>.value(
                _FakeEither_0<_i7.Failure, List<_i13.CourseEntity>>(
          this,
          Invocation.method(
            #getAllCourses,
            [],
          ),
        )),
        returnValueForMissingStub:
            _i6.Future<_i2.Either<_i7.Failure, List<_i13.CourseEntity>>>.value(
                _FakeEither_0<_i7.Failure, List<_i13.CourseEntity>>(
          this,
          Invocation.method(
            #getAllCourses,
            [],
          ),
        )),
      ) as _i6.Future<_i2.Either<_i7.Failure, List<_i13.CourseEntity>>>);
}
