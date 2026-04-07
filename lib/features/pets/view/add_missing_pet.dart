import 'package:flutter/material.dart';
import 'package:whisker_trail/features/pets/model/pet.dart';

class AddMissingPet extends StatefulWidget {
  const AddMissingPet({super.key});

  @override
  State<AddMissingPet> createState() => _AddMissingPetState();
}

class _AddMissingPetState extends State<AddMissingPet> {
  final TextEditingController _nameController = TextEditingController();

  saveResults() {
    if (_nameController.text.isNotEmpty) {
      return Navigator.pop(context, Pet(name: _nameController.text));
    } else {
      return null;
    }
  }

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
          TextField(
            controller: _nameController,
            decoration: InputDecoration(labelText: "Name"),
          ),
          ElevatedButton(onPressed: saveResults, child: Text("Save"))
        ],
      )),
    );
  }
}
