import 'package:book/features/search/presentation/manager/search_cubit/search_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomSearchTextField extends StatelessWidget {
  final TextEditingController? controller;
  final void Function(String)? onChanged;
  const CustomSearchTextField({super.key, required this.controller,required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      controller: controller,
      decoration: InputDecoration(
          enabledBorder: BuildOutlineInputBorder(),
          focusedBorder: BuildOutlineInputBorder(),
          hintText: "Search",
          suffixIcon: IconButton(
              onPressed: () {
                BlocProvider.of<SearchCubit>(context)
                    .FetchSearchBooks(title: controller!.text);
              },
              icon: Opacity(
                  opacity: 0.8,
                  child: Icon(
                    FontAwesomeIcons.magnifyingGlass,
                    size: 22,
                  )))),
    );
  }

  OutlineInputBorder BuildOutlineInputBorder() {
    return OutlineInputBorder(
        borderSide: BorderSide(color: Colors.white),
        borderRadius: BorderRadius.circular(12));
  }
}
