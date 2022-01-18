import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wger/widgets/add_exercise/mixins/image_picker_mixin.dart';
import '../../providers/add_excercise_provider.dart';

class PreviewExcercizeImages extends StatelessWidget with ExcerciseImagePickerMixin {
  PreviewExcercizeImages({
    Key? key,
    required this.selectedimages,
  }) : super(key: key);

  final List<File> selectedimages;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView(scrollDirection: Axis.horizontal, children: [
        ...selectedimages
            .map(
              (file) => SizedBox(
                height: 200,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      Image.file(file),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Padding(
                          padding: const EdgeInsets.all(3.0),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.5),
                                borderRadius: const BorderRadius.all(Radius.circular(20))),
                            child: IconButton(
                              iconSize: 20,
                              onPressed: () =>
                                  context.read<AddExcerciseProvider>().removeExcercise(file.path),
                              color: Colors.white,
                              icon: const Icon(Icons.delete),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
            .toList(),
        const SizedBox(
          width: 10,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: Colors.grey,
            height: 200,
            width: 100,
            child: Center(
              child: IconButton(
                icon: const Icon(Icons.add),
                onPressed: () => pickImages(context),
              ),
            ),
          ),
        )
      ]),
    );
  }
}