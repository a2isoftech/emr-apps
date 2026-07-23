import 'package:flutter/widgets.dart';

class ModelBinding<T> extends StatefulWidget {
  final T initialModel;
  final Widget child;

  const ModelBinding(
      {super.key, required this.initialModel, required this.child})
      : assert(initialModel != null);

  @override
  ModelBindingState<T> createState() => ModelBindingState<T>();

  static ModelBindingScope<T> getScope<T>(BuildContext context) {
    final scope =
        context.dependOnInheritedWidgetOfExactType<ModelBindingScope<T>>();
    assert(scope != null);
    return scope!;
  }

  static T of<T>(BuildContext context) {
    return getScope(context).modelBindingState.currentModel;
  }

  static void update<T>(BuildContext context, T newModel) {
    getScope(context).modelBindingState.updateModel(newModel);
  }
}

class ModelBindingState<T> extends State<ModelBinding<T>> {
  T? currentModel;

  @override
  void initState() {
    super.initState();
    currentModel = widget.initialModel;
  }

  void updateModel(T newModel) {
    if (newModel != currentModel) {
      setState(() => currentModel = newModel);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ModelBindingScope<T>(modelBindingState: this, child: widget.child);
  }
}

class ModelBindingScope<T> extends InheritedWidget {
  final ModelBindingState<T> modelBindingState;

  const ModelBindingScope(
      {super.key, required this.modelBindingState, required super.child});

  @override
  bool updateShouldNotify(ModelBindingScope oldWidget) => true;
}
