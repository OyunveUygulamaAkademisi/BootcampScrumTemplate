import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:swapy/core/base/view_model/base_view_model.dart';

class BaseView<T extends BaseViewModel> extends StatelessWidget {
  final T Function()? vmBuilder;
  final Widget Function(BuildContext, T)? builder;

  const BaseView({Key? key, required this.vmBuilder, required this.builder})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<T>.value(
      value: vmBuilder!(),
      child: Consumer<T>(
        builder: _buildScreenContent,
      ),
    );
  }

  Widget _buildScreenContent(
          BuildContext context, T viewModel, Widget? child) =>
      !viewModel.isInitializeDone
          ? Container(
              color: Colors.white,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            )
          : Stack(
              children: [
                builder!(context, viewModel),
                Visibility(
                    visible: viewModel.isLoading,
                    child: Center(
                      child: CircularProgressIndicator(),
                    ))
              ],
            );
}
