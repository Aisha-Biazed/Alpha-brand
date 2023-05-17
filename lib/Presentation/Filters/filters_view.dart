import 'package:alpha_brand/Presentation/Filters/widgets/filters_body-view.dart';
import 'package:flutter/material.dart';


class FiltersView extends StatelessWidget {
  const FiltersView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: FiltersBodyView(),
    );
  }
}
