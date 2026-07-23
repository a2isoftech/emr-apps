import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_transport/data/models/common/enum.dart';
import 'package:emr_one_transport/presentation/screens/assets/assetLocator/widgets/container/container_locator_widget.dart';
import 'package:emr_one_transport/presentation/screens/assets/assetLocator/widgets/trailer/trailer_locator_widget.dart';
import 'package:emr_one_transport/presentation/screens/assets/assetLocator/widgets/truck/truck_locator_widget.dart';
import 'package:flutter/material.dart';

/// Widget that displays the asset type toggle buttons
/// (Containers, Trucks, Trailers)
class _AssetTypeToggle extends StatefulWidget {
  const _AssetTypeToggle({
    required this.assetTypeNotifier,
  });

  final ValueNotifier<AssetType> assetTypeNotifier;

  @override
  State<_AssetTypeToggle> createState() => _AssetTypeToggleState();
}

class _AssetTypeToggleState extends State<_AssetTypeToggle> {
  late final ValueNotifier<List<AssetType>> _binding;
  bool _updating = false;

  @override
  void initState() {
    super.initState();
    _binding = ValueNotifier<List<AssetType>>(
      <AssetType>[widget.assetTypeNotifier.value],
    );
    _binding.addListener(_onBindingChanged);
    widget.assetTypeNotifier.addListener(_onAssetTypeChanged);
  }

  @override
  void didUpdateWidget(covariant _AssetTypeToggle oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.assetTypeNotifier != widget.assetTypeNotifier) {
      oldWidget.assetTypeNotifier.removeListener(_onAssetTypeChanged);
      widget.assetTypeNotifier.addListener(_onAssetTypeChanged);
      _binding.value = <AssetType>[widget.assetTypeNotifier.value];
    }
  }

  void _onBindingChanged() {
    if (_updating) return;
    _updating = true;
    if (_binding.value.isNotEmpty) {
      widget.assetTypeNotifier.value = _binding.value.first;
    }
    _updating = false;
  }

  void _onAssetTypeChanged() {
    if (_updating) return;
    _updating = true;
    _binding.value = <AssetType>[widget.assetTypeNotifier.value];
    _updating = false;
  }

  @override
  void dispose() {
    _binding.removeListener(_onBindingChanged);
    widget.assetTypeNotifier.removeListener(_onAssetTypeChanged);
    _binding.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(Insets.gutter/2,
        Insets.gutter/2,
        Insets.gutter/2,
        Insets.gutter/4),
      child: Row(
        children: [
          EmrButtonGroupFormField<AssetType>(
            binding: _binding,
            options: ValueNotifier({
              AssetType.container:
                  context.l10n.containers,
              AssetType.truck:
                  context.l10n.trucks,
              AssetType.trailer:
                  context.l10n.trailers,
            }),
          ),
        ],
      ),
    );
  }
}

class AssetLocatorScreen extends StatefulWidget {
  const AssetLocatorScreen({super.key});

  @override
  State<AssetLocatorScreen> createState() => _AssetLocatorScreenState();
}

class _AssetLocatorScreenState extends State<AssetLocatorScreen> {
  late ValueNotifier<AssetType> assetTypeNotifier;
  final Set<AssetType> _mountedTypes = <AssetType>{AssetType.container};

  @override
  void initState() {
    super.initState();
    assetTypeNotifier = ValueNotifier<AssetType>(
      AssetType.container,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _AssetTypeToggle(assetTypeNotifier: assetTypeNotifier),
        Expanded(
          child: ValueListenableBuilder<AssetType>(
            valueListenable: assetTypeNotifier,
            builder: (context, assetType, _) {
              _mountedTypes.add(assetType);

              final isContainers =
                  assetType == AssetType.container;
              final isTrucks =
                  assetType == AssetType.truck;
              final isTrailers =
                  assetType == AssetType.trailer;

              return Stack(
                children: [
                  if (_mountedTypes.contains(AssetType.container))
                    FocusScope(
                      canRequestFocus: isContainers,
                      child: Offstage(
                        offstage: !isContainers,
                        child: const ContainerLocatorWidget(),
                      ),
                    ),

                  if (_mountedTypes.contains(AssetType.truck))
                    FocusScope(
                      canRequestFocus: isTrucks,
                      child: Offstage(
                        offstage: !isTrucks,
                        child: const TruckLocatorWidget(),
                      ),
                    ),

                  if (_mountedTypes.contains(AssetType.trailer))
                    FocusScope(
                      canRequestFocus: isTrailers,
                      child: Offstage(
                        offstage: !isTrailers,
                        child: const TrailerLocatorWidget(),
                      ),
                    ),
                ],
              );
            },
          ),
        ),
      ],
    );
  }

  @override
  void dispose() {
    assetTypeNotifier.dispose();
    super.dispose();
  }
}
