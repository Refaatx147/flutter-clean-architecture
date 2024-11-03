// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:clean_arch_project/core/errors/failure.dart';
import 'package:clean_arch_project/features/user/domain/entities/user_entity.dart';
import 'package:clean_arch_project/features/user/domain/repositories/user_repository.dart';
import 'package:dartz/dartz.dart';

class GetUser {
  final UserRepository userRepository;
  GetUser({
    required this.userRepository,
  });

  Future<Either<Failure, UserEntity>> call() {
    return userRepository.getUser();
  }
}
