import 'package:emr_one_core/extensions/extensions.dart';
import 'package:emr_one_core/routing/routing.dart';
import 'package:emr_one_core/widgets/widgets.dart';
import 'package:emr_one_theme/emr_one_theme.dart';
import 'package:flutter/material.dart';
import 'package:linkfy_text/linkfy_text.dart';
import 'package:url_launcher/url_launcher.dart';

class ScreenUtils {
  static List<Widget> psnopMenuActions({
    required BuildContext context,
    Iterable<Widget>? depotPositionMenuEntries,
    Iterable<Widget>? plannedMovementMenuEntries,
    Iterable<Widget>? ticketSummaryMenuEntries,
    Iterable<Widget>? instructionsToMoveMenuEntries,
    Iterable<Widget>? trade2MenuEntries,
    Iterable<Widget>? yardManagementMenuEntries,
  }) {
    final brandColours = Theme.of(context).extension<EOBrandTheme>()!;
    final menuEntries = <Widget>[];
    if (depotPositionMenuEntries?.isEmpty ?? true) {
      menuEntries.add(
        psnopMenuEntry(
          context: context,
          function: () {
            context.goNamed(
              NamedRoutes.psnopDepotPosition,
            );
          },
          text: Text(
            context.l10n.psnopMainMenuDepotPosition,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      );
    } else {
      menuEntries.addAll(depotPositionMenuEntries!);
    }

    menuEntries.add(
      _menuSeparator(
        brandColours: brandColours,
      ),
    );

    if (instructionsToMoveMenuEntries?.isEmpty ?? true) {
      menuEntries.add(
        psnopMenuEntry(
          context: context,
          function: () {
            context.goNamed(
              NamedRoutes.psnopInstructionsToMove,
            );
          },
          text: Text(
            context.l10n.psnopInstructionsToMove,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      );
    } else {
      menuEntries.addAll(instructionsToMoveMenuEntries!);
    }

    menuEntries.add(
      _menuSeparator(
        brandColours: brandColours,
      ),
    );

    if (plannedMovementMenuEntries?.isEmpty ?? true) {
      menuEntries.add(
        psnopMenuEntry(
          context: context,
          function: () {
            context.goNamed(
              NamedRoutes.psnopPlannedMovements,
            );
          },
          text: Text(
            context.l10n.psnopPlannedMovements,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      );
    } else {
      menuEntries.addAll(plannedMovementMenuEntries!);
    }

    menuEntries.add(
      _menuSeparator(
        brandColours: brandColours,
      ),
    );

    if (ticketSummaryMenuEntries?.isEmpty ?? true) {
      menuEntries.add(
        psnopMenuEntry(
          context: context,
          function: () {
            context.goNamed(
              NamedRoutes.psnopTicketSummary,
            );
          },
          text: Text(
            context.l10n.psnopTicketSummary,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
      );
    } else {
      menuEntries.addAll(ticketSummaryMenuEntries!);
    }

    menuEntries.add(
      _menuSeparator(
        brandColours: brandColours,
      ),
    );

    if (trade2MenuEntries?.isEmpty ?? true) {
      menuEntries.addAll([
        psnopMenuEntry(
          context: context,
          text: Text(
            context.l10n.psnopMainMenuTrade2,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        psnopMenuEntry(
          autoPop: false,
          context: context,
          function: () {
            showDialog<void>(
              context: context,
              builder: (BuildContext context) {
                return _trade2Link(
                  context: context,
                  url:
                      'http://uktradenlb2.emr.com/Trade2_LIVE_Core/ImsRedirector.ashx?Path=Ticket',
                );
              },
            );
          },
          text: Text(
            context.l10n.psnopMainMenuTrade2TicketSearch,
          ),
        ),
        psnopMenuEntry(
          autoPop: false,
          context: context,
          function: () {
            showDialog<void>(
              context: context,
              builder: (BuildContext context) {
                return _trade2Link(
                  context: context,
                  url:
                      'http://uktradenlb2.emr.com/Trade2_LIVE_Core/ImsRedirector.ashx?Path=ProductionEventMaintenance.aspx',
                );
              },
            );
          },
          text: Text(
            context.l10n.psnopMainMenuTrade2ProductionEvent,
          ),
        ),
        psnopMenuEntry(
          autoPop: false,
          context: context,
          function: () {
            showDialog<void>(
              context: context,
              builder: (BuildContext context) {
                return _trade2Link(
                  context: context,
                  url:
                      'http://uktradenlb2.emr.com/Trade2_LIVE_Core/ImsRedirector.ashx?Path=heapmaintenanceadvanced.aspx',
                );
              },
            );
          },
          text: Text(
            context.l10n.psnopMainMenuTrade2HeapManagement,
          ),
        ),
      ]);
    } else {
      menuEntries.addAll(trade2MenuEntries!);
    }

    menuEntries.add(
      _menuSeparator(
        brandColours: brandColours,
      ),
    );

    if (yardManagementMenuEntries?.isEmpty ?? true) {
      menuEntries.addAll([
        psnopMenuEntry(
          context: context,
          text: Text(
            context.l10n.psnopMainMenuYardManagement,
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        psnopMenuEntry(
          context: context,
          function: () {
            launchUrl(
              Uri.parse(
                'https://allocations.emrgroup.com/requests',
              ),
              webOnlyWindowName: '_blank',
            );
          },
          text: Text(
            context.l10n.psnopMainMenuYardManagementRequests,
          ),
        ),
        psnopMenuEntry(
          context: context,
          function: () {
            launchUrl(
              Uri.parse(
                'https://allocations.emrgroup.com/allocations',
              ),
              webOnlyWindowName: '_blank',
            );
          },
          text: Text(
            context.l10n.psnopMainMenuYardManagementAllocations,
          ),
        ),
        psnopMenuEntry(
          context: context,
          function: () {
            launchUrl(
              Uri.parse(
                'https://allocations.emrgroup.com/transportplan',
              ),
              webOnlyWindowName: '_blank',
            );
          },
          text: Text(
            context.l10n.psnopMainMenuYardManagementTransportPlan,
          ),
        ),
        psnopMenuEntry(
          context: context,
          function: () {
            launchUrl(
              Uri.parse(
                'https://allocations.emrgroup.com/liveloads',
              ),
              webOnlyWindowName: '_blank',
            );
          },
          text: Text(
            context.l10n.psnopMainMenuYardManagementLiveLoads,
          ),
        ),
      ]);
    } else {
      menuEntries.addAll(yardManagementMenuEntries!);
    }

    return [
      IconButton(
        icon: const Icon(
          size: 24,
          Icons.menu,
        ),
        onPressed: () {
          Flyout.show<void>(
            context: context,
            builder: (context) {
              //ListTile complains that it cant find a material in parent so
              //wrapped ListView with material as suggested by https://stackoverflow.com/a/70999284
              return Material(
                child: ListView(
                  children: menuEntries,
                ),
              );
            },
          );
        },
      ),
    ];
  }

  static Widget psnopMenuEntry({
    required Text text,
    required BuildContext context,
    void Function()? function,
    bool autoPop = true,
    bool enabled = true,
  }) {
    return ListTile(
      enabled: enabled,
      title: text,
      onTap: function != null
          ? () {
              function();
              if (autoPop) {
                Navigator.pop(context);
              }
            }
          : null,
    );
  }

  static Widget _menuSeparator({required EOBrandTheme brandColours}) {
    return Container(
      height: 1,
      color: brandColours.separatorColour,
    );
  }

  static AlertDialog _trade2Link({
    required BuildContext context,
    required String url,
  }) {
    return AlertDialog(
      actions: [
        ElevatedButton(
          autofocus: true,
          onPressed: () {
            launchUrl(
              Uri.parse(url),
              webOnlyWindowName: '_blank',
            );
            var count = 0;
            Navigator.popUntil(context, (route) {
              return count++ == 2;
            });
          },
          child: Text(context.l10n.psnopProceed),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text(context.l10n.cancel),
        ),
      ],
      content: LinkifyText(
        context.l10n.psnopTrade2AccessDetails,
        linkStyle: TextStyle(
          color:
              Theme.of(context).extension<EOBrandTheme>()!.psnopHyperlinkColour,
        ),
        linkTypes: const [LinkType.email],
        onTap: (link) {
          launchUrl(
            Uri.parse('mailto:${link.value}'),
          );
        },
      ),
      scrollable: true,
      title: Center(
        child: Text(context.l10n.psnopTrade2Access),
      ),
    );
  }
}
