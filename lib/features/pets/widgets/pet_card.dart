import 'package:flutter/material.dart';
import 'package:whisker_trail/features/pets/model/pet.dart';
import 'package:whisker_trail/features/pets/view/missing_pet_details.dart';

class PetCard extends StatelessWidget {
  final Pet pet;
  const PetCard({super.key, required this.pet});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (_) => MissingPetDetails(pet: pet))),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Row(
            children: [
              Text(
                pet.name + ' 🐱',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
