import 'package:alpha_brand/Presentation/Address/widgets/address_view_body.dart';
import 'package:flutter/material.dart';
class AddressView extends StatelessWidget {
  const AddressView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      resizeToAvoidBottomInset: false,
      body: AddressBodyViwe(),
    );
  }
}
