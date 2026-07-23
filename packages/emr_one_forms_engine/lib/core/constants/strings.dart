// ignore_for_file: constant_identifier_names,non_constant_identifier_names
import 'enums.dart';

abstract class StringLiteral {
  static const String Media = 'Media';
  static const String Note = 'Note';
  static const String Confirm = 'Yes';
  static const String Deny = 'No';
  static const String Accept = 'OK';
  static const String Close = 'Close';
  static const String Save = 'Save';
  static const String Delete = 'Delete';

  static const String SRNotesPlaceholder = 'Defect Notes / Repair Notes:';
  static const String NotesPlaceholder = "Note:";
  static const String GoBackWithoutSaving = 'Go back without saving?';
  static const String HaveUnsavedChanges = 'You have unsaved changes.';
  static const String WantToContinueBack =
      'Would you still like to continue back?';
  static const String NoteRequiredTitle = 'Note required';
  static const String EnterNote = 'Please enter and save a note to continue';
  static const String NoteRequiredForNo =
      'A note is required for a "No" answer. Leaving will cancel the answer.';

  static const String AddMedia = 'Add media';
  static const String Camera = 'Camera';
  static const String Gallery = 'Gallery';
  static const String UploadMedia = 'Upload Media';

  static final CapturedMediaTypes = {
    CapturedMediaType.image: 'image',
    CapturedMediaType.video: 'video'
  };

  static String getChooseSourceLabel(String type) => 'Select source for $type';

  static const String RequiredFieldErrorMessage = 'This value is required';

  static const String SubmissionText = 'Submission';
  static const String SubmitButtonText = 'Submit';
  static const String SubmitConfirmationText =
      'I confirm that I have completed this form and recorded all defects to the best of my knowledge.';
  static const String ComponentValidationText = 'Please choose an answer';
  static const String ComponentValidationNote =
      'Please add a note describing the issue';
  static const String ComponentValidationMedia = 'Please add an image / video';
  static const String ComponentValidationMediaSR =
      'A minimum of two images, before and after repair, are required with SR';
  static const String FormSubmitted = 'Form Submitted!';
  static const String FormNotSubmitted = 'Form Not Submitted!';

  static const String FormValidated = 'Form Validated!';
  static const String SelectOption = 'Choose an answer';

  static const String AlertTitle = 'Work risk assessment';
  static const String MroValidationKey = 'MroValidation';

  static const String SRAlertTitle = 'Self Repair Alert!';
  static const String RatingValidationText = 'Please select a rating';

  /// Key to store the mroValidations.
}

abstract class FormsEngineTelemetry {
  static const String kFormsEngine = 'kFormsEngine';
  static const String kFormStore = 'kFormStore';
  static const String kMediaAppService = 'kMediaAppService';
  static const String kSaveFormAppService = 'kSaveFormAppService';
}
