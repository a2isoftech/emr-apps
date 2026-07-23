// import 'package:emr_one_crm/screens/party_new_spot/steps/form_styles.dart';
// import 'package:flutter/material.dart';

// class SearchUtilsBuilders {
//   // TODO: Move this to a shared package?
//   static Widget crmSearchSuggestFieldBuilder(
//       BuildContext context,
//       TextEditingController textEditingController,
//       FocusNode focusNode,
//       VoidCallback onFieldSubmitted,
//       ValueChanged<String>? onChanged,
//       FormFieldValidator<String>? validator) {
//     final textFieldDecoration = FormStyles.textFieldDecoration(context);

//     return Row(
//       children: [
//         Expanded(
//           child: TextFormField(
//             onChanged: onChanged,
//             decoration: textFieldDecoration,
//             // key: widget.textFieldKey,
//             controller: textEditingController,
//             focusNode: focusNode,
//             enableSuggestions: false,
//             onFieldSubmitted: (value) => onFieldSubmitted(),
//             validator: validator,
//           ),
//         ),
//         // TODO: searching isn't available in this scope.
//         // _SmallSpinnerPlaceholder(searching: searching),
//       ],
//     );
//   }
// }
