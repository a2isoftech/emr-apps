import 'package:emr_one_core/eo_constants.dart';
import 'package:flutter/material.dart';

class DataCardWithNameValue extends StatelessWidget {
  const DataCardWithNameValue({
    required this.columns,
    required this.onEdit,
    super.key,
  });

  final Map<String, dynamic> columns;
  final void Function() onEdit;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(Insets.gutter),
          child: LayoutBuilder(
            builder: (context, constraints) {
              final columnsCount = (constraints.maxWidth / 200).floor().clamp(
                1,
                4,
              );

              return Padding(
                padding: const EdgeInsets.all(Insets.gutter),
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: columnsCount,
                    childAspectRatio: 6,
                    crossAxisSpacing: 64,
                    mainAxisSpacing: 8,
                  ),
                  children: columns.entries.map((entry) {
                    return Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(entry.key),
                        Text(
                          entry.value.toString(),
                          style: const TextStyle(fontWeight: FontWeight.bold),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    );
                  }).toList(),
                ),
              );
            },
          ),
        ),
        Positioned(
          top: 10,
          right: 10,
          child: IconButton(
            icon: const Icon(Icons.edit, size: 24),
            onPressed: onEdit,
          ),
        ),
      ],
    );
  }
}
