import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
class Search extends StatelessWidget {
  const Search({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width:267,
      height:50,
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.person_outline,
            color: Colors.grey,
            size: 25,
          ),
          isDense: true,
          hintText: 'What do you want to order?',
          hintStyle: const TextStyle(
            fontFamily: 'Poppins',
          ),
          contentPadding: const EdgeInsets.all(18.0),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
        ),
        textAlign: TextAlign.start,
        maxLines: 1,
      ),
    );
  }
}