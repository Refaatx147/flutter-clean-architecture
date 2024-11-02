import 'package:clean_arch_project/features/user/domain/entities/sub_entities/geo_entity.dart';

class Address {
  final String street;
  final String suite;
  final String city;
  final String zipcode;
  final GeoEntity geoEntity;
  Address({
    required this.street,
    required this.suite,
    required this.city,
    required this.zipcode,
    required this.geoEntity,
  });
}