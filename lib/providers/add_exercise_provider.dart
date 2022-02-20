import 'dart:developer';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:wger/models/exercises/base.dart';
import 'package:wger/models/exercises/category.dart';
import 'package:wger/models/exercises/equipment.dart';
import 'package:wger/models/exercises/exercise.dart';
import 'package:wger/models/exercises/language.dart';
import 'package:wger/models/exercises/muscle.dart';

import 'base_provider.dart';

class AddExerciseProvider with ChangeNotifier {
  final WgerBaseProvider baseProvider;

  List<File> get exerciseImages => [..._exerciseImages];
  List<File> _exerciseImages = [];
  String? _nameEn;
  String? _nameTranslation;
  String? _descriptionEn;
  String? _descriptionTranslation;
  Language? _language;
  List<String> _alternativeNamesEn = [];
  List<String> _alternativeNamesTranslation = [];
  ExerciseCategory? _category;
  List<ExerciseBase> _variations = [];
  List<Equipment> _equipment = [];
  List<Muscle> _primaryMuscles = [];
  List<Muscle> _secondaryMuscles = [];

  AddExerciseProvider(this.baseProvider);

  static const _exerciseBaseUrlPath = 'exercise-base';
  static const _imagesUrlPath = 'exerciseimage';
  static const _exerciseTranslationUrlPath = 'exercise-translation';

  void clear() {
    _exerciseImages = [];
    _alternativeNamesEn = [];
    _alternativeNamesTranslation = [];
    _category = null;
    _equipment = [];
    _primaryMuscles = [];
    _secondaryMuscles = [];
  }

  set exerciseNameEn(String name) => _nameEn = name;
  set exerciseNameTrans(String name) => _nameTranslation = name;
  set descriptionEn(String description) => _descriptionEn = description;
  set descriptionTrans(String description) => _descriptionTranslation = description;
  set alternateNamesEn(List<String> names) => _alternativeNamesEn = names;
  set alternateNamesTrans(List<String> names) => _alternativeNamesTranslation = names;

  set equipment(List<Equipment> equipment) => _equipment = equipment;
  List<Equipment> get equipment => [..._equipment];
  set category(ExerciseCategory category) => _category = category;
  ExerciseCategory get category => _category!;
  set language(Language language) => _language = language;
  Language get language => _language!;

  ExerciseBase get base {
    return ExerciseBase(
      category: _category,
      equipment: _equipment,
      muscles: _primaryMuscles,
      musclesSecondary: _secondaryMuscles,
    );
  }

  Exercise get exerciseEn {
    return Exercise(
      name: _nameEn!,
      description: _descriptionEn!,
      language: const Language(id: 2, fullName: 'English', shortName: 'en'),
    );
  }

  Exercise get exerciseTranslation {
    return Exercise(
      name: _nameTranslation!,
      description: _descriptionTranslation!,
      language: _language,
    );
  }

  List<Muscle> get primaryMuscles => [..._primaryMuscles];
  set primaryMuscles(List<Muscle> muscles) {
    _primaryMuscles = muscles;
  }

  List<Muscle> get secondaryMuscles => [..._secondaryMuscles];
  set secondaryMuscles(List<Muscle> muscles) {
    _secondaryMuscles = muscles;
  }

  void addExerciseImages(List<File> exercises) {
    _exerciseImages.addAll(exercises);
    notifyListeners();
  }

  void removeExercise(String path) {
    final file = _exerciseImages.where((element) => element.path == path).first;
    _exerciseImages.remove(file);
    notifyListeners();
  }

  //Just to Debug Provider
  void printValues() {
    log('Collected exercise data');
    log('------------------------');

    log('Base data...');
    log('Target area : $_category');
    log('Primary muscles: $_primaryMuscles');
    log('Secondary muscles: $_secondaryMuscles');
    log('Equipment: $_equipment');
    log('Variations: $_variations');

    log('');
    log('Language specific...');
    log('Language: ${_language?.shortName}');
    log('Name: en/$_nameEn translation/$_nameTranslation');
    log('Description: en/$_descriptionEn translation/$_descriptionTranslation');
    log('Alternate names: en/$_alternativeNamesEn translation/$_alternativeNamesTranslation');
  }

  Future<void> addExercise() async {
    printValues();

    // Create the base
    final base = await addExerciseBase();

    // Set the variations
    // ...

    // Create the translations
    final exerciseTranslationEn = exerciseEn;
    exerciseTranslationEn.base = base;
    await addExerciseTranslation(exerciseTranslationEn);

    final exerciseTranslationTranslation = exerciseTranslation;
    exerciseTranslationTranslation.base = base;
    await addExerciseTranslation(exerciseTranslationTranslation);

    // Create the images
    await addImages(base);
  }

  Future<ExerciseBase> addExerciseBase() async {
    final Uri postUri = baseProvider.makeUrl(_exerciseBaseUrlPath);

    final Map<String, dynamic> newBaseMap = await baseProvider.post(base.toJson(), postUri);
    final ExerciseBase newExerciseBase = ExerciseBase.fromJson(newBaseMap);
    notifyListeners();

    return newExerciseBase;
  }

  Future<void> addImages(ExerciseBase base) async {
    for (final image in _exerciseImages) {
      final request = http.MultipartRequest('POST', baseProvider.makeUrl(_imagesUrlPath));
      request.headers.addAll(baseProvider.getDefaultHeaders(includeAuth: true));

      request.files.add(await http.MultipartFile.fromPath('image', image.path));
      request.fields['exercise_base'] = base.id!.toString();
      request.fields['style'] = '4';

      final res = await request.send();
      //final respStr = await res.stream.bytesToString();
    }

    notifyListeners();
  }

  Future<Exercise> addExerciseTranslation(Exercise exercise) async {
    final Uri postUri = baseProvider.makeUrl(_exerciseTranslationUrlPath);

    final Map<String, dynamic> newTranslation = await baseProvider.post(exercise.toJson(), postUri);
    final Exercise newExercise = Exercise.fromJson(newTranslation);
    notifyListeners();

    return newExercise;
  }
}