import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_door_access/emr_one_door_access.dart';
import 'package:flutter/material.dart';

class AccessPointCameraForm extends StatefulWidget {
  const AccessPointCameraForm({
    required this.accessPointId,
    required this.controller,
    required this.doorAccessService,
    this.camera,
    super.key,
  });

  final AccessPointCameraFormController controller;
  final DoorAccessService doorAccessService;
  final String accessPointId;
  final Camera? camera;

  @override
  State<AccessPointCameraForm> createState() => _AccessPointCameraFormState();
}

class _AccessPointCameraFormState extends State<AccessPointCameraForm> {
  @override
  void initState() {
    super.initState();
    widget.controller.init(widget.accessPointId, widget.camera);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: widget.controller,
      builder: (context, _) {
        return Form(
          key: widget.controller.formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              EmrTextFormField(
                labelText: 'Camera Name',
                binding: widget.controller.cameraName,
                validator: Validators.required,
              ),

              const SizedBox(height: 16),

              EmrTextFormField(
                labelText: 'IP Address',
                binding: widget.controller.ipAddress,
                validator: Validators.required,
              ),

              const SizedBox(height: 16),

              EmrTextFormField(
                labelText: 'Snapshot URL',
                binding: widget.controller.snapshotUrl,
                keyboardType: TextInputType.url,

                validator: Validators.required,
              ),

              const SizedBox(height: 16),

              EmrTextFormField(
                labelText: 'Username',
                binding: widget.controller.username,
                validator: Validators.required,
              ),

              const SizedBox(height: 16),

              EmrTextFormField(
                labelText: 'Password',
                binding: widget.controller.password,
                obscureText: true,
                validator: Validators.required,
              ),
            ],
          ),
        );
      },
    );
  }
}
