
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BaseView<T extends Cubit> extends StatefulWidget {

  final T viewModel;
  final Function() onModelReady;
  final void Function() onModelDispose;
  final Widget Function(BuildContext context) onPageBuilder;

  BaseView({
    Key? key,
    required this.viewModel,
    required this.onModelReady,
    required this.onModelDispose,
    required this.onPageBuilder,
  }) : super(key: key);


  @override
  State<BaseView> createState() => _BaseViewState();



}

class _BaseViewState<T extends Cubit> extends State<BaseView<T>> {

  @override
  void initState() {
    widget.onModelReady();
    super.initState();
  }

  @override
  void dispose() {
    widget.onModelDispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
   return widget.onPageBuilder(context); 
  }

}



