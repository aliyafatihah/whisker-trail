import 'package:flutter/material.dart';
import 'package:whisker_trail/features/pets/model/pet.dart';

class AddMissingPet extends StatelessWidget {
  const AddMissingPet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Add Missing Pet"),
      ),
      body: Center(
          child: Column(
        children: [
          Text("Add missing pet details form goes here"),
          ElevatedButton(
              onPressed: () {
                Navigator.pop(context, Pet(name: "Tom"));
              },
              child: Text("Save"))
        ],
      )),
    );
  }
}
