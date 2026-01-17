import 'package:workout_planner/models/equipments.dart';
import 'package:workout_planner/models/exersice.dart';

class User {
  final String userId;
  final String fullName;
  final String gender;
  final String address;
  final int age;
  final String descprition;
  int totalExercisCompleted=0;
  int totalEquipmentsHandOverd=0;

  final List<Exersice> exersiceList;
  final List<Equipments> equipmentsList;
  final List<Exersice> favExersiceList;
  final List<Equipments> favEquipmentsList;

  User({
    required this.userId,
    required this.fullName,
    required this.gender,
    required this.address,
    required this.age,
    required this.descprition,
    required this.exersiceList,
    required this.equipmentsList,
    required this.favExersiceList,
    required this.favEquipmentsList,
  });
}
