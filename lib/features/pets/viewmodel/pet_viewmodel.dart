import 'package:flutter/material.dart';
import 'package:whisker_trail/features/pets/model/pet.dart';

class PetViewModel extends ChangeNotifier {
  List<Pet> pets = [];

  addMissingPet(Pet pet) {
    pets.add(pet);
    notifyListeners();
  }
}
