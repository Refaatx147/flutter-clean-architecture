import 'package:clean_arch_project/features/user/domain/entities/sub_entities/address_entity.dart';

class AddressModel extends Address {
  AddressModel(
      {required super.street,
      required super.suite,
      required super.city,
      required super.zipcode,
      required super.geoEntity});
  factory AddressModel.fromJson(Map<String, dynamic> json) {
    return AddressModel(
        street: json['street'],
        suite: json['suite'],
        city: json['city'],
        zipcode: json['zipcode'],
        geoEntity: json['geoEntity']);
  }

  Map<String, dynamic> toJson() {
    return {
      'street':street,
      'suite':suite,
      'city':city,
      'zipcode':zipcode,
      'geoEntity':geoEntity,
    };
  }
}
