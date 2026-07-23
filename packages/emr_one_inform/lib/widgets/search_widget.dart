import 'package:emr_one_core/emr_one_core.dart';
import 'package:emr_one_core/widgets/form_styles.dart';
import 'package:emr_one_inform/constants/asset_path.dart';
import 'package:emr_one_inform/constants/colors.dart';
import 'package:emr_one_inform/constants/strings.dart';
import 'package:emr_one_inform/models/selected_dates.dart';
import 'package:emr_one_inform/widgets/widgets_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

class SearchState {
  SearchState({
    this.selectedDate,
    this.jobId,
    this.assetCode,
    this.createdBy,
  });

  final SelectedDates? selectedDate;
  final String? jobId; // this could be WR/WO/SI
  final String? assetCode;
  final String? createdBy;
}

typedef SearchWidgetFilterApplied = void Function(SearchState)?;

class SearchWidget extends StatefulWidget {
  const SearchWidget({
    required this.context,
    required this.yardCode,
    required this.filterForUser,
    required this.initialState,
    required this.searchUser,
    super.key,
    this.onFilterApplied,
  });

  final BuildContext context;
  final String yardCode;
  final bool filterForUser;
  final SearchState initialState;
  final SearchWidgetFilterApplied onFilterApplied;
  final bool searchUser;

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  List<String> searchTags = [];
  DateTime date = DateTime.now();
  SelectedDates _selectedDate =
      SelectedDates.date(date: DateTime.now().dateOnly);
  final _searchController = TextEditingController();
  final _searchUserController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _selectedDate = widget.initialState.selectedDate ?? _selectedDate;
  }

  @override
  void dispose() {
    super.dispose();
    _searchController.dispose();
    _searchUserController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          elevation: 20,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InputChip(
                      label: _selectedDateRangeText(),
                      onPressed: () async {
                        final result = await showDialog<SelectedDates>(
                          context: context,
                          builder: (context) => DatePickerWidget(
                            selectedDate: _selectedDate,
                            datePickerType: DatePickerType.range,
                          ),
                          barrierDismissible: false,
                        );

                        if (result is SelectedDates) {
                          setState(() {
                            _selectedDate = result;
                          });
                          if (widget.onFilterApplied != null) {
                            widget.onFilterApplied!.call(
                              SearchState(
                                selectedDate: _selectedDate,
                              ),
                            );
                          }
                          _dismissKeyboard();
                        }
                      },
                    ),
                    _scan(context),
                  ],
                ),
                Focus(
                  child: TextFormField(
                    decoration:
                        FormStyles.textFieldDecoration(context).copyWith(
                      hintText: 'Search by WR/WO/SI number',
                    ),
                    controller: _searchController,
                    onEditingComplete: () {
                      widget.onFilterApplied!
                          .call(SearchState(jobId: _searchController.text));
                    },
                  ),
                  onFocusChange: (value) {
                    if (!value) {
                      widget.onFilterApplied!
                          .call(SearchState(jobId: _searchController.text));
                    }
                  },
                ),
                const SizedBox(height: 5),
                if (widget.searchUser) ...[
                  Focus(
                    child: TextFormField(
                      decoration:
                          FormStyles.textFieldDecoration(context).copyWith(
                        hintText: 'Search by user name',
                      ),
                      controller: _searchUserController,
                      onEditingComplete: () {
                        widget.onFilterApplied!.call(
                          SearchState(createdBy: _searchUserController.text),
                        );
                      },
                    ),
                    onFocusChange: (value) {
                      if (!value) {
                        widget.onFilterApplied!.call(
                          SearchState(createdBy: _searchUserController.text),
                        );
                      }
                    },
                  ),
                ],
              ],
            ),
          ),
        ),
        const SizedBox(height: 5),
      ],
    );
  }

  void _dismissKeyboard() {
    final currentFocus = FocusScope.of(context);
    if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
      FocusManager.instance.primaryFocus?.unfocus();
    }
  }

  Widget _selectedDateRangeText() {
    var text = '';
    final formatter = DateFormat('dd.MM.yy');
    if (_selectedDate.type == SelectedDateType.dateRange) {
      final start = formatter.format(_selectedDate.dateRange!.start);
      final end = formatter.format(_selectedDate.dateRange!.end);

      text = '$start - $end';
    } else {
      text = formatter.format(_selectedDate.date!);
    }

    return RichText(
      text: TextSpan(
        children: [
          const WidgetSpan(child: Icon(Icons.date_range, size: 16)),
          const TextSpan(text: '  '),
          TextSpan(
            text: text,
            style: TextStyle(fontSize: 13, color: FormAppColors.foreground),
          ),
        ],
      ),
    );
  }

  Widget _scan(BuildContext context) {
    return IconButton(
      onPressed: () async {
        await ScanHelper.startInlineCodeScan(context, title: 'Scan')
            .then((scannedAssetCode) {
          if (scannedAssetCode != null && scannedAssetCode != '') {
            if (widget.onFilterApplied != null) {
              widget.onFilterApplied!.call(
                SearchState(assetCode: scannedAssetCode),
              );
            }
          }
        });
      },
      icon: SvgPicture.asset(
        FormAppAssetsPath.barcode,
        package: FormAppStringLiteral.PackageName,
        width: 24,
        colorFilter: ColorFilter.mode(
          FormAppColors.foreground,
          BlendMode.srcIn,
        ),
      ),
    );
  }
}
