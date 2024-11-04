import 'package:clean_arch_project/features/user/data/models/sub_models/address_model.dart';
import 'package:clean_arch_project/features/user/data/models/sub_models/company_model.dart';
import 'package:clean_arch_project/features/user/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  final int id;
  final String username;
  final String website;
  final CompanyModel company;
  UserModel({
    required this.id,
    required super.name,
    required super.phone,
    required super.email,
    required super.address,
    required this.username,
    required this.website,
    required this.company,
  });

  factory UserModel.fromJson(Map<String, dynamic> data) {
    return UserModel(
        id: data['id'],
        name: data['name'],
        phone: data['phone'],
        email: data['email'],
        address: AddressModel.fromJson (data['address']),
        username: data['username'],
        website: data['website'],
        company: CompanyModel.fromJson(data['company']));
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'phone': phone,
      'email': email,
      'address': address,
      'username': username,
      'website': website,
      'company': company,
    };
  }
}
