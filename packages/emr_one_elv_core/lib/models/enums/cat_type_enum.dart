import 'dart:core';

enum CatTypeEnum {
  unknown(''),
  pipeCat('Pipe Cat'),
  preCat('Pre Cat');

  const CatTypeEnum(this.label);

  final String label;
}
