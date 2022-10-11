import 'package:flutter/material.dart';
import 'package:tekoop/features/home/presentations/controllers/post_controller.dart';

class PhoneNumberTextField extends StatefulWidget {
  final int index;
  final Widget icon;
  PhoneNumberTextField(this.index, this.icon);
  @override
  _PhoneNumberTextFieldState createState() => _PhoneNumberTextFieldState();
}

class _PhoneNumberTextFieldState extends State<PhoneNumberTextField> {
  TextEditingController _nameController;
  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController();
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      _nameController.text = PostController.to.phonesList[widget.index] ?? '';
    });
    return TextField(
      keyboardType: TextInputType.phone,
      controller: _nameController,
      // save text field data in friends list at index
      // whenever text field value changes
      onChanged: (v) => PostController.to.phonesList[widget.index] = v,
      decoration: InputDecoration(
          hintText: 'Phone number', suffixIcon: widget.icon),

      // validator: (v){
      //   if(v.trim().isEmpty) return 'Please enter Phone number';
      //   return null;
      // },
    );
  }
}
