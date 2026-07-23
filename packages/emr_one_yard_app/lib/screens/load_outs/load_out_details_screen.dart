import 'dart:async';

import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_yard_app/components/loader_wrapper.dart';
import 'package:emr_one_yard_app/controllers/load_out_controller.dart';
import 'package:emr_one_yard_app/models/load_out/load_out_input.dart';
import 'package:emr_one_yard_app/models/ticket/load_out_ticket.dart';
import 'package:emr_one_yard_app/screens/load_outs/create_loadout.dart';
import 'package:emr_one_yard_app/screens/load_outs/load_out_media_capture.dart';
import 'package:emr_one_yard_app/screens/load_outs/load_out_post_checks.dart';
import 'package:emr_one_yard_app/screens/load_outs/load_out_pre_checks.dart';
import 'package:flutter/material.dart';

class LoadOutDetailsScreen extends StatefulWidget {
  const LoadOutDetailsScreen({
    required this.controller,
    super.key,
    this.loadOutId,
    this.ticket,
  });

  final LoadOutController controller;
  final String? loadOutId;
  final LoadOutTicket? ticket;

  @override
  State<LoadOutDetailsScreen> createState() => _LoadOutDetailsScreenState();
}

class _LoadOutDetailsScreenState extends State<LoadOutDetailsScreen> {
  final PageController _pageController = PageController();
  final steps = [
    LoadOutStep.details,
    LoadOutStep.preChecks,
    LoadOutStep.images,
    LoadOutStep.postChecks,
  ];

  int currentIndex = 0;
  late final Future<LoadOutInput?> _loadOutFuture;

  @override
  void initState() {
    super.initState();
    _loadOutFuture = _loadLoadOutData();
  }

  Future<LoadOutInput?> _loadLoadOutData() async {
    final result = await widget.controller.getLoadOutInput(
      widget.loadOutId,
      widget.ticket?.ticketId,
      widget.ticket?.containerNumber,
    );

    if (result != null) {
      widget.controller.initLoadOutFields(result);
    }

    if (widget.ticket != null) {
      widget.controller.selectedTicket.value = widget.ticket;
    }

    return result;
  }

  void nextStep() {
    if (currentIndex < steps.length - 1) {
      setState(() => currentIndex++);
      _pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    }
  }

  void previousStep() {
    if (currentIndex > 0) {
      setState(() => currentIndex--);
      _pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    } else {
      Navigator.of(context).pop();
    }
  }

  @override
  void dispose() {
    _pageController.dispose();
    widget.controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<LoadOutInput?>(
      future: _loadOutFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        if (snapshot.hasError || snapshot.data == null) {
          return Center(child: Text(context.l10n.anErrorOccurredTryAgain));
        }

        return LoaderWrapper(
          showLoader: widget.controller.isLoading,
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {
              FocusScope.of(context).unfocus();
            },
            child: Padding(
              padding: const EdgeInsets.all(Insets.gutter),
              child: Column(
                children: [
                  Expanded(child: _buildPageView()),
                  _buildNavigationButtons(context),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Widget _buildPageView() {
    return PageView(
      controller: _pageController,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        CreateLoadOut(controller: widget.controller),
        LoadOutPreChecks(controller: widget.controller),
        LoadOutMediaCapture(controller: widget.controller),
        LoadOutPostChecks(controller: widget.controller),
      ],
    );
  }

  Widget _buildNavigationButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        OutlinedButton(
          onPressed: () {
            if (currentIndex > 0) {
              unawaited(widget.controller.saveLoadOut());
            }
            previousStep();
          },
          child: Text(
            currentIndex == 0 ? context.l10n.back : context.l10n.previous,
          ),
        ),
        FilledButton(
          onPressed: () => _handleNextPressed(context),
          child: Text(_nextButtonText()),
        ),
      ],
    );
  }

  String _nextButtonText() {
    final isLast = currentIndex == steps.length - 1;
    final completed = widget.controller.loadOutInput?.completed ?? false;

    if (isLast) {
      return completed ? context.l10n.close : context.l10n.finish;
    }
    return context.l10n.next;
  }

  Future<void> _handleNextPressed(BuildContext context) async {
    FocusScope.of(context).unfocus();
    final controller = widget.controller;
    final currentStep = steps[currentIndex];

    if (controller.loadOutInput!.completed) {
      if (currentStep == LoadOutStep.postChecks) {
        Navigator.of(context).pop();
      } else {
        nextStep();
        return;
      }
    }

    if (currentStep == LoadOutStep.details) {
      if (controller.formKey.currentState?.validate() ?? false) {
        if (controller.loadOutInput?.id != null) {
          unawaited(controller.saveLoadOut());
          nextStep();
          return;
        }

        final result = await controller.createLoadOut();
        if (!result.successful || result.data == null) {
          if (context.mounted) {
            await EmrModal.showMessageBar(
              context,
              result.errorsAsString,
              messageType: MessageBarTypes.error,
            );
          }
          return;
        }

        controller.loadOutInput!.id = result.data;
        nextStep();
      }
    } else if (currentStep == LoadOutStep.images) {
      if (!_areAllImagesCaptured()) {
        await EmrModal.showMessageBar(
          context,
          context.l10n.loadoutMediaCaptureError,
          messageType: MessageBarTypes.error,
        );
        return;
      }
      unawaited(controller.saveLoadOut());
      nextStep();
    } else if (currentStep == LoadOutStep.postChecks) {
      if (controller.completeFormKey.currentState?.validate() ?? false) {
        final result = await controller.completeLoadOut();
        if (!context.mounted) return;

        unawaited(
          EmrModal.showMessageBar(
            context,
            result.successful
                ? context.l10n.loadOutCompleteMessage
                : result.errorsAsString,
            messageType: result.successful
                ? MessageBarTypes.success
                : MessageBarTypes.error,
          ),
        );

        if (result.successful && context.mounted) {
          Navigator.of(context).pop();
        }
      }
    } else {
      unawaited(controller.saveLoadOut());
      nextStep();
    }
  }

  bool _areAllImagesCaptured() {
    final c = widget.controller;
    return c.emptyImage.value != null &&
        c.halfClosedImage.value != null &&
        c.fullyClosedImage.value != null &&
        c.halfLoadedImage.value != null &&
        c.fullyLoadedImage.value != null &&
        c.rightSideImage.value != null &&
        c.leftSideImage.value != null &&
        c.radiationDoorImage.value != null &&
        c.locationImage.value != null;
  }
}
