import 'package:emr_flutter_theme/emr_flutter_theme.dart';
import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_fire_register/data/shared_preferences_service.dart';
import 'package:emr_one_fire_register/screens/fire_register_screen/fire_register_screen.dart';
import 'package:emr_one_fire_register/screens/select_yard_controller.dart';
import 'package:emr_one_fire_register/services/fire_register_service.dart';
import 'package:flutter/material.dart';

class FireRegisterHome extends StatefulWidget {
  const FireRegisterHome(
    this.exportDataService,
    this.fireRegisterService,
    this.sharedPreferencesService,
    this.locale, {
    super.key,
  });

  final Locale locale;
  final SharedPreferencesService sharedPreferencesService;
  final ExportDataService exportDataService;
  final FireRegisterService fireRegisterService;

  @override
  State<FireRegisterHome> createState() => _FireRegisterHomeState();
}

class _FireRegisterHomeState extends State<FireRegisterHome> {
  late final SelectYardController controller;
  Future<String>? _loadCachedYardFuture;
  bool changeYard = false;
  @override
  void initState() {
    super.initState();

    controller = SelectYardController(
      fireRegisterService: widget.fireRegisterService,
      sharedPreferences: widget.sharedPreferencesService,
    );

    _loadCachedYardFuture = controller.getYard();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _loadCachedYardFuture,
      builder: (BuildContext content, AsyncSnapshot<String> snapshot) {
        if (!snapshot.hasData ||
            snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        if (snapshot.data == '' || changeYard) {
          return SafeArea(
            child: Scaffold(
              appBar: AppBar(
                backgroundColor: EmrColours.primaryBlue,
                title: Text(
                  context.l10n.selectAYard,
                  style: const TextStyle(
                    color: EmrColours.primaryWhite,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              bottomNavigationBar: const BottomAppBar(
                height: 50,
                color: EmrColours.primaryBlue,
              ),
              body: Padding(
                padding: const EdgeInsetsGeometry.all(
                  Insets.gutter,
                ),
                child: TypeAheadFormField(
                  suggestionsCallback: (search) {
                    if (controller.possibleYards.isEmpty) {
                      setState(() {
                        controller.loadYards();
                      });
                    }
                    return controller.possibleYards.where(
                      (yard) => yard.toLowerCase().contains(
                            search.toLowerCase(),
                          ),
                    );
                  },
                  onSuggestionSelected: (value) async {
                    setState(() {
                      changeYard = false;
                      _loadCachedYardFuture = controller.setYard(
                        value,
                      );
                    });
                  },
                  itemBuilder: (context, String suggestedYard) {
                    return ListTile(
                      title: Text(
                        suggestedYard,
                      ),
                    );
                  },
                  textFieldConfiguration: TextFieldConfiguration(
                    controller: TextEditingController(
                      text: snapshot.data ?? '',
                    ),
                    decoration: InputDecoration(
                      labelText: context.l10n.selectAYard,
                    ),
                  ),
                  noItemsFoundBuilder: (context) => SizedBox(
                    height: 50,
                    child: Center(
                      child: Text(
                        context.l10n.typeAheadMessageYards,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        } else {
          return FireRegisterScreen(
            fireRegisterService: widget.fireRegisterService,
            locale: widget.locale,
            exportDataService: widget.exportDataService,
            selectedYard: snapshot.data!,
            changeYard: changeDefaultYard,
          );
        }
      },
    );
  }

  void changeDefaultYard() {
    setState(() {
      changeYard = true;
    });
  }
}
