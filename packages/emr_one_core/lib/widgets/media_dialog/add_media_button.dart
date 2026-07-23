import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_core/models/media_file.dart';
import 'package:flutter/material.dart';

///A rounded, square button that will execute a callback on press.
///Not designed to be instantiated directly, use [MediaButtonBuilder] instead.
class AddMediaButton extends StatelessWidget {
  const AddMediaButton({
    required this.onPressed,
    super.key,
    this.width = EmrOneConstants.mediaButtonWidth,
    this.colour = EmrOneConstants.mediaButtonColour,
    this.iconColour = EmrOneConstants.mediaButtonIconColour,
    this.icon = Icons.add_a_photo,
  });

  final VoidCallback? onPressed;
  final double width;
  final Color colour;
  final Color iconColour;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: AspectRatio(
        aspectRatio: 1,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(4),
          child: GestureDetector(
            child: ColoredBox(
              color: colour,
              child: IconButton(
                icon: Icon(
                  icon,
                  color: iconColour,
                ),
                onPressed: onPressed,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

///A builder for [AddMediaButton]. This class enables us to split the creation
///of an AddMediaButton into two parts, the initial creation of the builder
///with the source callback, and then a build method at which point another
///callback can be provided to process the result of the initial callback.
///This means we can have the functionality of Class2Method(await Class1Method)
///
/// Example Usage:
/// MediaButtonBuilder(
///   mediaCallback: () async {
///     final media = <MediaFile>[];
///     await showDialog<void>(
///       context: context,
///       builder: (context) {
///         return EOBasicCamera(
///           onMediaCapture: (path) async {
///             media.add(
///               MediaFile(
///                 media: path,
///                 mediaType: MediaType.image,
///                 retainSourceOnDelete: false,
///               ),
///             );
///           },
///         );
///       },
///     );
///     return media;
///   },
/// )
class MediaButtonBuilder {
  MediaButtonBuilder({
    required this.mediaCallback,
    this.width = EmrOneConstants.mediaButtonWidth,
    this.colour = EmrOneConstants.mediaButtonColour,
    this.iconColour = EmrOneConstants.mediaButtonIconColour,
    this.icon = Icons.add_a_photo,
  });

  Future<List<MediaFile>> Function() mediaCallback;
  final double width;
  final Color colour;
  final Color iconColour;
  final IconData icon;

  AddMediaButton build(Future<void> Function(List<MediaFile>) fileHandler) {
    return AddMediaButton(
      onPressed: () async => fileHandler(await mediaCallback()),
      icon: icon,
      width: width,
      colour: colour,
      iconColour: iconColour,
    );
  }
}
