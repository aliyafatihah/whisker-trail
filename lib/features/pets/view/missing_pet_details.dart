import 'package:flutter/material.dart';
import 'package:whisker_trail/features/pets/model/pet.dart';

class MissingPetDetails extends StatelessWidget {
  final Pet pet;
  const MissingPetDetails({required this.pet, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Missing Pet"),
      ),
      body: Center(
          child: Container(padding: EdgeInsets.all(10), child: Text(pet.name))),
    );
  }
}
