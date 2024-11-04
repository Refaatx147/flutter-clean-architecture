import 'package:clean_arch_project/core/errors/failure.dart';
import 'package:clean_arch_project/core/params/params.dart';
import 'package:clean_arch_project/features/user/domain/entities/user_entity.dart';
import 'package:dartz/dartz.dart';

abstract class UserRepository {
  Future<Either<Failure, UserEntity>> getUser({required UserParams params});
}
