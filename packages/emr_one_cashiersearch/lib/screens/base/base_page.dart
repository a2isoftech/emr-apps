import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

abstract class BasePage extends StatefulWidget {
  const BasePage({super.key});

  // @override
  // State<BasePage<T>> createState() => _BasePageState<T>();
}

abstract class BasePageState<TWidget extends BasePage, TController>
    extends State<TWidget> {
  late final TController controller;

  @override
  void initState() {
    super.initState();
    try {
      controller = Provider.of<TController>(context, listen: false);
    } catch (e) {
      //ignored
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Flexible(
              child: body(),
            ),
          ],
        ),
      ),
    );
  }

  Widget body();
}
