import 'package:flutter/material.dart';

class TabSearchBarWidget extends StatelessWidget {
  String hintText;
  Function function;
  Icon iconSearch;
  Widget iconSuffix;
  InputBorder enableBorder;
  bool readOnly;
  InputBorder border;
  bool filled;
  bool isDense;
  TabSearchBarWidget({
    @required this.hintText,
    @required this.function,
    this.iconSearch,
    this.iconSuffix,
    this.isDense = false,
    this.enableBorder,
    this.filled = true,
    this.border,
    this.readOnly = false,
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 15, 20, 0),
      child: Container(
        height: 49,
        child: Card(
          // color: Colors.transparent.withOpacity(0.1),
          elevation: 6,
          child: TextField(
            readOnly: readOnly,
            onTap: function,
            showCursor: false,
            enabled: true,

            // enableIntera ctiveSelection: false,
            style: TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
            decoration: InputDecoration(
              contentPadding:
                  EdgeInsets.symmetric(vertical: 11, horizontal: 10),
              filled: filled,
              isDense: true,
              fillColor: Colors.grey[200],
              border: InputBorder.none,
              enabledBorder: enableBorder,
              prefixIcon: Icon(
                Icons.search,
              ),
              suffixIcon: iconSuffix,
              hintText: hintText,
              hintStyle: TextStyle(
                fontSize: 14,
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
