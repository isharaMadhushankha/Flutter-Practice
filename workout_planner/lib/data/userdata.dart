import 'package:workout_planner/models/equipments.dart';
import 'package:workout_planner/models/exersice.dart';
import 'package:workout_planner/models/user.dart';

// we create only single user thats why we create object insted to class
  final user = User(
    userId: "u1",
    fullName: "Ishara madushanaka",
    gender: "male",
    address: "milla,Hikkaduwa",
    age: 24,
    descprition: "nothing",
    exersiceList: [
      Exersice(
        id: 0,
        exersiceName: "Push Ups",
        exersiceImagUrl: "assets/images/exercises/downward-facing.png",
        noOfMinutes: 10,
        completed: false,
      ),
      Exersice(
        id: 1,
        exersiceName: "Squats",
        exersiceImagUrl: "assets/images/exercises/dragging.png",
        noOfMinutes: 5,
        completed: false,
      ),
    ],
    equipmentsList: [
      Equipments(
        id: 0,
        equipmentName: "Dumbbells",
        equipmentDescription: "Used for strength training and muscle building.",
        equipmentImageUrl: "assets/images/equipments/dumbbells.png",
        noOfMinutes: 30,
        noOfCalaries: 120,
        handOverd: false,
      ),
      Equipments(
        id: 1,
        equipmentName: "Resistance Band",
        equipmentDescription: "Elastic band for resistance-based workouts.",
        equipmentImageUrl: "assets/images/equipments/resistance_band.png",
        noOfMinutes: 20,
        noOfCalaries: 80,
        handOverd: false,
      ),
    ],
    favExersiceList: [
      Exersice(
        id: 1,
        exersiceName: "Squats",
        exersiceImagUrl: "assets/images/exercises/dragging.png",
        noOfMinutes: 5,
        completed: false,
      ),
    ],
    favEquipmentsList: [
      Equipments(
        id: 1,
        equipmentName: "Resistance Band",
        equipmentDescription: "Elastic band for resistance-based workouts.",
        equipmentImageUrl: "assets/images/equipments/resistance_band.png",
        noOfMinutes: 20,
        noOfCalaries: 80,
        handOverd: false,
      ),
    ],
  );

