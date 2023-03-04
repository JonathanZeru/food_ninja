import 'package:flutter/material.dart';

class Search extends StatelessWidget {
  const Search({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      height: 50,
      margin: const EdgeInsets.only(right: 10),
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
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
            gapPadding: 40,
          ),
        ),
        textAlign: TextAlign.start,
        maxLines: 1,
      ),
    );
  }
}
