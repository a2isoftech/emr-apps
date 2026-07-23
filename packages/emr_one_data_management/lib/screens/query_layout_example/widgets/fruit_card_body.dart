import 'package:emr_one_data_management/screens/query_layout_example/models/fruit_model.dart';
import 'package:flutter/material.dart';

class FruitCardBody extends StatelessWidget {
  const FruitCardBody(this.fruit, this.index, {super.key});

  final Fruit fruit;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Name: ${fruit.name}'),
            Text('Color: ${fruit.color}'),
            Text('Calories: ${fruit.calories}'),
            RichText(
              text: TextSpan(
                text: 'Sugar Content: ',
                style: Theme.of(context).textTheme.bodyMedium,
                children: [
                  TextSpan(
                    text: '${fruit.sugarContent}',
                  ),
                  TextSpan(
                    text: 'g',
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Theme.of(context).hintColor,
                        ),
                  ),
                ],
              ),
            ),
            Text(
              'Index: $index',
              style: Theme.of(context).textTheme.bodySmall,
            ),
          ],
        ),
      ],
    );
  }
}
