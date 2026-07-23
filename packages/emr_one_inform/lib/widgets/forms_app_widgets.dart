import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/constants/constants_export.dart';
import 'package:emr_one_inform/models/message_type.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

Widget showSpinner() {
  return const Center(
    child: CircularProgressIndicator(
      color: EmrColours.primaryBlue,
    ),
  );
}

Widget showNoResults(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 20),
        child: FormAppIcons.noResults,
      ),
      Text(
        context.l10n.noResults,
      ),
    ],
  );
}

Widget showNoData(String message) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 20),
        child: FormAppIcons.noResults,
      ),
      Text(
        message,
      ),
    ],
  );
}

Widget showNavMenuSpinner() {
  return const Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Center(
        child: CircularProgressIndicator(
          color: EmrColours.primaryBlue,
        ),
      ),
    ],
  );
}

Widget appBarTitle(String pageTitle) {
  return Padding(
    padding: const EdgeInsets.only(top: 5),
    child: Text(
      pageTitle,
    ),
  );
}

Widget showLoadingShimmer() => Shimmer.fromColors(
      baseColor: FormAppColors.lightGrey,
      highlightColor: FormAppColors.lighterGrey,
      child: Wrap(
        runSpacing: 10,
        children: [
          _loadingControl(),
          _loadingControl(),
          _loadingControl(),
        ],
      ),
    );

Widget showLoadingShimmerWorkRequest() => Shimmer.fromColors(
      baseColor: FormAppColors.lightGrey,
      highlightColor: FormAppColors.lighterGrey,
      child: Wrap(
        runSpacing: 10,
        children: [
          _loadingTitle(height: 22),
          _loadingControl(),
          _loadingTitle(height: 22),
          _loadingControl(),
          _loadingTitle(height: 22),
          _loadingControl(),
          _loadingTitle(height: 22),
          _loadingControl(),
          _loadingTitle(height: 22),
          _loadingControl2(),
          _loadingControl2(),
          _loadingTitle(height: 22),
          _loadingControl(),
          _loadingTitle(height: 22),
          _loadingControl(),
          _loadingTitle(height: 22),
        ],
      ),
    );

Container _loadingTitle({required double height}) => Container(
      decoration: FormAppDecorations.dropdownShimmerButton,
      height: height,
      width: 125,
    );

Container _loadingControl() => Container(
      decoration: FormAppDecorations.dropdownShimmerButton,
      height: 45,
    );

Container _loadingControl2() => Container(
      decoration: FormAppDecorations.dropdownShimmerButton,
      height: 90,
    );

Container _loadingJobInfoCard({required double height}) => Container(
      decoration: FormAppDecorations.dropdownShimmerButton,
      height: height,
    );

Widget _loadingTitleJobs({required double height}) => Padding(
      padding: const EdgeInsets.fromLTRB(0, 5, 0, 4),
      child: Container(
        decoration: FormAppDecorations.dropdownShimmerButton,
        height: height,
        width: 100,
      ),
    );

Widget _loadingSubTitleJobs({required double height}) => Padding(
      padding: const EdgeInsets.fromLTRB(0, 4, 0, 10),
      child: Container(
        decoration: FormAppDecorations.dropdownShimmerButton,
        height: height,
        width: 125,
      ),
    );

Widget _loadingDivider() => Padding(
      padding: const EdgeInsets.only(top: 8, bottom: 8),
      child: Container(
        decoration: FormAppDecorations.dropdownShimmerButton,
        height: 2,
      ),
    );

SnackBar appSnackBarMessage(String message, MessageTypes messageTypes) {
  return SnackBar(
    content: Row(
      children: [
        if (messageTypes == MessageTypes.error)
          FormAppIcons.snackBarErrorIcon
        else if (messageTypes == MessageTypes.information)
          FormAppIcons.snackBarInformationIcon
        else
          FormAppIcons.snackBarIcon,
        const SizedBox(width: 16),
        Expanded(
          child: Text(
            message,
            style: TextStyle(fontSize: 16, color: FormAppColors.white),
          ),
        ),
      ],
    ),
    backgroundColor: messageTypes == MessageTypes.error
        ? FormAppColors.error
        : messageTypes == MessageTypes.information
            ? EmrColours.secondaryCyan
            : EmrColours.primaryGreen,
    duration: const Duration(seconds: Configs.SnackBarDisplayDuration),
    behavior: SnackBarBehavior.floating,
  );
}

Divider listViewDivider() => const Divider(color: EmrColours.primaryBlue);

Widget showLoadingShimmerJobSearch() => Shimmer.fromColors(
      baseColor: FormAppColors.lightGrey,
      highlightColor: FormAppColors.lighterGrey,
      child: Wrap(
        children: [
          _loadingTitleJobs(height: 28),
          const SizedBox(height: 5),
          _loadingDivider(),
          _loadingSubTitleJobs(height: 26),
          const SizedBox(height: 10),
          _loadingJobInfoCard(height: 100),
          _loadingDivider(),
          _loadingJobInfoCard(height: 100),
          _loadingDivider(),
          _loadingJobInfoCard(height: 100),
          _loadingDivider(),
          _loadingSubTitleJobs(height: 26),
          const SizedBox(height: 10),
          _loadingJobInfoCard(height: 100),
          _loadingDivider(),
          _loadingJobInfoCard(height: 100),
          _loadingDivider(),
          _loadingJobInfoCard(height: 100),
          _loadingDivider(),
        ],
      ),
    );

Widget showNoInternetConnection(BuildContext context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 20),
        child: FormAppIcons.noInternetConnection,
      ),
      Text(
        context.l10n.noInternet,
      ),
      Padding(
        padding: const EdgeInsets.all(20),
        child: Text(
          context.l10n.noInternetDetails,
          textAlign: TextAlign.center,
        ),
      ),
      const SizedBox(height: 20),
    ],
  );
}

Widget get showLoadingExistingTemplate => Shimmer.fromColors(
      baseColor: FormAppColors.lightGrey,
      highlightColor: FormAppColors.lighterGrey,
      child: Wrap(
        runSpacing: 10,
        children: [
          _loadingTitle(height: 22),
          _loadingControl(),
          _loadingTitle(height: 22),
          _loadingControl(),
          _loadingTitle(height: 22),
          _loadingControl(),
          _loadingTitle(height: 22),
          _loadingControl(),
          _loadingTitle(height: 22),
          _loadingControl(),
          _loadingTitle(height: 22),
          _loadingControl(),
          _loadingControl(),
        ],
      ),
    );

Widget controlLabel(String title) => Row(
      children: [
        Text(
          title,
        ),
      ],
    );

Widget typeAheadErrorMessageWidget(String message) => Center(
      child: Text(
        message,
      ),
    );

Widget typeAheadInfoMessageWidget(String message) => Center(
      child: Text(
        message,
      ),
    );

TextFieldConfiguration textFieldConfiguation(
  TextEditingController controller,
  String hintText,
) =>
    TextFieldConfiguration(
      controller: controller,
      decoration: InputDecoration(
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        border: FormAppDecorations.textfieldBorder,
        focusedBorder: FormAppDecorations.textfieldBorder,
        enabledBorder: FormAppDecorations.textfieldBorder,
        hintText: hintText,
      ),
    );

InputDecoration textboxDecoration(String hintText) => InputDecoration(
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      hintText: hintText,
    );

Widget showLoadingShimmerJobSearchCmms() => Flexible(
      child: Shimmer.fromColors(
        baseColor: FormAppColors.lightGrey,
        highlightColor: FormAppColors.lighterGrey,
        child: Wrap(
          children: [
            _loadingTitleJobs(height: 28),
            const SizedBox(height: 5),
            _loadingDivider(),
            _loadingSubTitleJobs(height: 26),
            const SizedBox(height: 10),
            _loadingJobInfoCard(height: 100),
            _loadingDivider(),
            _loadingJobInfoCard(height: 100),
            _loadingDivider(),
            _loadingJobInfoCard(height: 100),
            _loadingDivider(),
            _loadingSubTitleJobs(height: 26),
            const SizedBox(height: 10),
            _loadingJobInfoCard(height: 100),
            _loadingDivider(),
            _loadingJobInfoCard(height: 100),
            _loadingDivider(),
            _loadingJobInfoCard(height: 100),
            _loadingDivider(),
          ],
        ),
      ),
    );

AppBar defaultAppBar({
  required BuildContext context,
  required String title,
  List<Widget>? actions,
}) =>
    AppBar(
      actions: actions ?? [],
      leading: BackButton(color: FormAppColors.white),
      title: Text(
        title,
        style: TextStyle(fontSize: 20, color: FormAppColors.white),
      ),
      titleSpacing: 0,
      backgroundColor: FormAppColors.black,
    );

Future<void> showMessageDialog({
  required BuildContext context,
  required MessageType messageType,
  required String message,
}) {
  return showDialog<void>(
    barrierDismissible: false,
    context: context,
    builder: (context) {
      return AlertDialog(
        elevation: 20,
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              _getMessageIcon(messageType),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    _getMessageText(context, messageType),
                    style: FormAppTextStyles.pageTitleStyle,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      message,
                      softWrap: false,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis, // new
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: <Widget>[
          Center(
            child: ElevatedButton(
              child: Text(context.l10n.ok),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ),
        ],
      );
    },
  );
}

Future<bool?> showConfirmationDialog({
  required BuildContext context,
  required String message,
}) {
  return showDialog<bool>(
    barrierDismissible: false,
    context: context,
    builder: (context) {
      return AlertDialog(
        elevation: 20,
        title: Text(context.l10n.confirmation),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      message,
                      softWrap: false,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis, // new
                      textAlign: TextAlign.center,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: Text(context.l10n.no),
            onPressed: () {
              context.pop(false);
            },
          ),
          ElevatedButton(
            child: Text(context.l10n.yes),
            onPressed: () {
              context.pop(true);
            },
          ),
        ],
      );
    },
  );
}

Icon _getMessageIcon(MessageType messageType) {
  return switch (messageType) {
    MessageType.success => Icon(
        Icons.check_circle_rounded,
        size: 200,
        color: FormAppColors.success,
      ),
    MessageType.error => Icon(
        Icons.error,
        size: 200,
        color: FormAppColors.error,
      ),
    MessageType.warning => Icon(
        Icons.warning,
        size: 200,
        color: FormAppColors.inProgress,
      ),
    MessageType.information => Icon(
        Icons.info,
        size: 200,
        color: FormAppColors.information,
      )
  };
}

String _getMessageText(BuildContext context, MessageType messageType) {
  return switch (messageType) {
    MessageType.success => context.l10n.success,
    MessageType.error => context.l10n.error,
    MessageType.warning => context.l10n.warning,
    MessageType.information => context.l10n.information
  };
}

Widget getPageHeader(
  String title, {
  bool hasBackButton = true,
  Widget? actionButton,
}) {
  return ColoredBox(
    color: FormAppColors.primaryBlue,
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.all(Insets.gutter),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Wrap(
                children: [
                  if (hasBackButton)
                    BackButton(
                      color: FormAppColors.white,
                    ),
                  Text(
                    title,
                    style: EmrOneConstants.kMediumHeadingTextStyle
                        .copyWith(color: FormAppColors.white),
                  ),
                ],
              ),
              const Spacer(),
              if (actionButton != null) actionButton,
            ],
          ),
        ),
      ],
    ),
  );
}
