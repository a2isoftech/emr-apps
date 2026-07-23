import 'package:emr_one_core/auth/firebase_login.dart';
import 'package:emr_one_core/config/app_config.dart';
import 'package:emr_one_elv_inspection/pages/inspection/widgets/custom_widgets/inspection_custom_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class InspectionNetworkImage extends StatefulWidget {
  const InspectionNetworkImage({
    this.title,
    this.image,
    this.onTap,
    this.addCardRequired = false,
    super.key,
  });
  final String? title;
  final String? image;
  final void Function(ValueNotifier<bool> loader)? onTap;
  final bool addCardRequired;

  @override
  State<InspectionNetworkImage> createState() => _InspectionNetworkImageState();
}

class _InspectionNetworkImageState extends State<InspectionNetworkImage> {
  final isLoading = ValueNotifier<bool>(false);
  late int version;

  @override
  void initState() {
    super.initState();
    version = 0;
  }

  @override
  Widget build(BuildContext context) {
    ++version;
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: ValueListenableBuilder(
        valueListenable: isLoading,
        builder: (context, value, child) {
          if (value) {
            return const Center(child: CircularProgressIndicator());
          }
          return FutureBuilder(
            future: FirebaseLogin.getToken(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                final config = Provider.of<AppConfig>(context, listen: false);
                return GestureDetector(
                  onTap: widget.onTap == null
                      ? null
                      : () {
                          widget.onTap!(isLoading);
                        },
                  child: Image.network(
                    '${config.mediaApi}/${widget.image!}?v=$version',
                    headers: {
                      'Authorization': 'Bearer ${snapshot.data}',
                    },
                    fit: BoxFit.cover,
                    loadingBuilder: (context, child, loadingProgress) {
                      if (loadingProgress == null) return child;
                      return Center(
                        child: SizedBox(
                          width: 30,
                          height: 30,
                          child: CircularProgressIndicator(
                            value: loadingProgress.expectedTotalBytes != null
                                ? loadingProgress.cumulativeBytesLoaded /
                                    loadingProgress.expectedTotalBytes!
                                : null,
                          ),
                        ),
                      );
                    },
                    errorBuilder: widget.addCardRequired
                        ? (context, error, stackTrace) {
                            return InspectionImageGestureDetector(
                              key: widget.key,
                              onTap: widget.onTap == null
                                  ? null
                                  : () {
                                      widget.onTap!(isLoading);
                                    },
                            );
                          }
                        : null,
                  ),
                );
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          );
        },
      ),
    );
  }
}
