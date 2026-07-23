import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class ErrorDisplayWidget extends StatelessWidget {
  const ErrorDisplayWidget({
    required this.heading,
    required this.message,
    this.backgroundColour = Colors.red,
    this.icon = const Icon(
      Icons.error,
      size: 128,
      color: Colors.white,
    ),
    super.key,
  });

  final String heading;
  final String message;
  final Color backgroundColour;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: ConstrainedBox(
                constraints: const BoxConstraints.tightFor(width: 250),
                child: SizedBox(
                  height: 50,
                  child: Container(
                    decoration: BoxDecoration(
                      color: backgroundColour,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withAlpha(30),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: const Offset(2, 6),
                        ),
                      ],
                    ),
                    child: Center(
                      child: Text(
                        heading,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium!
                            .copyWith(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Flexible(
              child: ConstrainedBox(
                constraints: const BoxConstraints.tightFor(width: 250),
                child: SizedBox(
                  height: 250,
                  child: Container(
                    decoration: BoxDecoration(
                      color: backgroundColour,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withAlpha(30),
                          spreadRadius: 2,
                          blurRadius: 2,
                          offset: const Offset(2, 6),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        icon,
                        const SizedBox(height: 16),
                        Text(
                          message,
                          textAlign: TextAlign.center,
                          style:
                              Theme.of(context).textTheme.bodyMedium!.copyWith(
                                    color: Colors.white,
                                  ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ]
          .animate(interval: 80.ms)
          .slide(duration: 300.ms, curve: Curves.easeInOut),
    );
  }
}
