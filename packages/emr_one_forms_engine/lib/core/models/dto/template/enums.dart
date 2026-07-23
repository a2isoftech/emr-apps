class TemplateComponentTypes {
  static const textInput = 'TextInput';
  static const label = 'Label';
  static const datePicker = 'Date';
  static const yesNoQuestion = 'YesNoQuestion';
  static const singleChoiceQuestion = 'SingleChoice';
  static const multipleChoiceQuestion = 'MultiChoice';
  static const checkbox = 'Checkbox';
  static const submit = 'Submit';
  static const declaration = 'Declaration';
  static const url = 'Url';
  static const email = 'Email';
  static const phone = 'Phone';
  static const rating = 'Rating';
  static const location = 'Location';
}

class TemplateValidatorTypes {
  static const email = 'Email';
  static const regex = 'RegEx';
  static const phone = 'Phone';
  static const number = 'Number';
  static const numberRange = 'NumberRange';
  static const text = 'Text';
  static const date = 'Date';
  static const singleChoice = 'String';
  static const exitOnNo = 'ExitOnNo';
  static const warningOnNo = 'WarningOnNo';
  static const checkbox = 'Checkbox';
  static const rating = 'Rating';
  static const location = 'Location';
}

class TemplateDataProviderTypes {
  static const apiRequest = 'APIRequest';
  static const values = 'Values';
  static const boolean = 'Boolean';
  static const graphQLQuery = 'GraphQLQuery';
  static const array = "Array";
}

class LabelMessageTypes {
  static const error = "Error";
  static const info = "Information";
  static const warning = "Warning";
}

enum LabelTypes {
  error,
  information,
  warning,
}
