import 'package:emr_one_core/eo_constants.dart';
import 'package:emr_one_yard_app/constants/yard_app_constants.dart';
import 'package:flutter/material.dart';

class AddMediaFabButton extends StatefulWidget {
  const AddMediaFabButton({
    super.key,
    this.onCameraTap,
    this.onGalleryPhoto,
    this.onGalleryVideo,
  });
  final void Function()? onCameraTap;
  final void Function()? onGalleryPhoto;
  final void Function()? onGalleryVideo;

  @override
  State<AddMediaFabButton> createState() => _AddMediaFabButtonState();
}

class _AddMediaFabButtonState extends State<AddMediaFabButton>
    with TickerProviderStateMixin {
  bool _isExpanded = false;
  late final AnimationController _controller;
  late final Animation<double> _expandAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );
    _expandAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _toggle() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _controller.forward();
      } else {
        _controller.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        Padding(
          padding: const EdgeInsets.all(Insets.gutter),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizeTransition(
                sizeFactor: _expandAnimation,
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      if (widget.onGalleryPhoto != null)
                        _buildActionButton(
                          icon: Icons.photo_library_outlined,
                          onPressed: widget.onGalleryPhoto!,
                        ),
                      if (widget.onGalleryVideo != null)
                        _buildActionButton(
                          icon: Icons.video_library_outlined,
                          onPressed: widget.onGalleryVideo!,
                        ),
                      _buildActionButton(
                        icon: Icons.camera_alt,
                        onPressed: widget.onCameraTap!,
                      ),
                      const SizedBox(height: Insets.gutter / 2),
                    ],
                  ),
                ),
              ),
              FloatingActionButton(
                backgroundColor: Theme.of(context).colorScheme.primary,
                onPressed: _toggle,
                child: Icon(
                  _isExpanded ? Icons.close : Icons.add_a_photo_outlined,
                  size: 40,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildActionButton({
    required IconData icon,
    required VoidCallback onPressed,
  }) {
    return Padding(
      padding: const EdgeInsets.all(Insets.gutter / 2),
      child: Material(
        shape: const CircleBorder(),
        color: OppraBrandColors.triCornBlack,
        child: IconButton(
          icon: Icon(icon, color: Colors.white),
          onPressed: onPressed,
          iconSize: 40,
        ),
      ),
    );
  }
}
