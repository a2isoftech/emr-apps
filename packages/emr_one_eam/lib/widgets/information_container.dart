import 'package:emr_one_eam/common/colors.dart';
import 'package:flutter/material.dart';

class InformationContainer extends StatelessWidget {
  const InformationContainer({
    required this.messages,
    this.backgroundColor,
    this.leadingIcon,
    super.key,
  });
  final List<String> messages;
  final Color? backgroundColor;
  final Widget? leadingIcon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (messages.isNotEmpty)
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: backgroundColor ?? EamAppColors.success,
              ),
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    if (leadingIcon != null) leadingIcon!,
                    if (leadingIcon != null)
                      const SizedBox(
                        width: 20,
                      ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: messages
                          .map(
                            (e) => Column(
                              children: [
                                Text(
                                  e,
                                  style: const TextStyle(color: Colors.white),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                              ],
                            ),
                          )
                          .toList(),
                    ),
                  ],
                ),
              ),
            ),
          ),
      ],
    );
  }
}
