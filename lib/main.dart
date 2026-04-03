import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:whisker_trail/features/pets/view/home_page.dart';
import 'package:whisker_trail/features/pets/viewmodel/pet_viewmodel.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => PetViewModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );
  }
}
