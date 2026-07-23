import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_inform/audit/controller/audit_controller.dart';
import 'package:emr_one_inform/constants/colors.dart';
import 'package:emr_one_inform/constants/styles.dart';
import 'package:emr_one_inform/models/form_instance_status_log.dart';
import 'package:emr_one_inform/screens/base/base_page.dart';
import 'package:emr_one_inform/widgets/forms_app_widgets.dart';
import 'package:flutter/material.dart';

class AuditView extends BasePage<IAuditController> {
  AuditView({
    required this.instanceId,
    required this.workOrderId,
    super.key,});

    final String? instanceId;
    final String? workOrderId;

  @override
  Widget? getActionButton(BuildContext context) => null;

  @override
  String getTitle(BuildContext context) {
    return 'Audit log ${workOrderId ?? ''}';
  }
  
   @override
  List<Widget> getActions(BuildContext context) {
    return [
      IconButton(
        onPressed: onRefresh,
        icon: Icon(Icons.refresh, color: FormAppColors.white),
      ),
    ];
  }

  Future<void> onRefresh() async {
    await controller.loadLogs();
  }

  @override
  void initState(BuildContext context) {
    controller.setCurrentInstance(instanceId);
    controller.loadLogs();   
  }

 @override
  PreferredSizeWidget? getAppBar(BuildContext context) => null;
  
  @override
  Widget widgetBuilder(BuildContext context) {
    return SingleChildScrollView(
      child: Wrap(alignment: WrapAlignment.center,
      children: [
        if(controller.isBusy || controller.isLoading)
        ...[
           Center(child: showSpinner()),
        ]
        else if(controller.instanceLog == null 
        || controller.instanceLog!.isEmpty)
        ...[
            Center(child: showNoData('No logs found')),
            ]
            else ...[
              const SizedBox(height: 5,),
              Row(
                children:[  
                  Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                'Status Log',
              style: FormAppTextStyles.pageTitleStyle,),),],),
              const SizedBox(height: 5,),
              
              Center(
                // height: 1200,
                // width: 1800,
                child: Stepper(
                  //  type: StepperType.horizontal,
                  onStepTapped:(value) {}, //tapped(value,context),
                  controlsBuilder: (BuildContext context, 
                  ControlsDetails controls,) {
                      return const SizedBox.shrink();
                  },
                steps: buildSteps(context),
              ),
              ),
               if(controller.instance != null &&
               controller.instance?.d365Error != null && 
               controller.instance!.d365Error!.isNotEmpty) ...[
              const SizedBox(height: 5,),
                Row(
                children:[
                  Padding(
              padding: const EdgeInsets.all(10),
              child:
                Text(
                'D365 Error',
                style: FormAppTextStyles.pageTitleStyle,),),],),
              const SizedBox(height: 5,),
               Row(
                children:[
                   Padding(
              padding: const EdgeInsets.all(10),
              child:
                  Text(controller.instance!.d365Error!,),),],),
               ],
              
              
            ],
      ],),
    );
  }
  
  List<Step> buildSteps(BuildContext context) {
    var steps = <Step>[];
    if(controller.instanceLog != null 
        && controller.instanceLog!.isNotEmpty)
        {
          steps = controller.instanceLog!.map((e) => 
          Step(
            title: Text(e.status ?? 'No Status Found'), 
            content: Container(),
            isActive: true,
            subtitle: Text(e.loggedDate.toString()),
            label: Text(e.loggedBy.toString()),
            ),).toList();

        }
        return steps;
  }
  
  Future<void> tapped(int step, BuildContext context) async {
    final currentStep = controller.instanceLog![step];
     return showDialog<void>(
    barrierDismissible: false,
    context: context,
    builder: (context) {
      return AlertDialog(
        elevation: 20,
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    currentStep.status?? '',
                    style: FormAppTextStyles.pageTitleStyle,
                  ),
                ],
              ),
               Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                     Text(
                        'Status: ${currentStep.status?? ''}',
                        softWrap: false,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis, 
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Logged By: ${currentStep.loggedBy?? ''}',
                        softWrap: false,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis, 
                        textAlign: TextAlign.center,
                      ),
                      Text(
                        'Logged Date: ${currentStep.loggedDate?? ''}',
                        softWrap: false,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis, 
                        textAlign: TextAlign.center,
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
  
  FormInstanceStatusLog getstepData(int step) {
    return controller.instanceLog![step];
  }
}
