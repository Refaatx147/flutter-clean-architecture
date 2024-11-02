// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:clean_arch_project/features/user/domain/entities/sub_entities/address_entity.dart';

class UserEntity {
  final String name;
  final String phone;
  final String email;
  final Address address;
  UserEntity({
    required this.name,
    required this.phone,
    required this.email,
    required this.address,
  });
}
