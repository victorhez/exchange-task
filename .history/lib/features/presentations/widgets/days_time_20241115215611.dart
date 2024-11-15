import 'package:flutter/material.dart';

class SelectableRow extends StatefulWidget {
  @override
  _SelectableRowState createState() => _SelectableRowState();
}

class _SelectableRowState extends State<SelectableRow> {
  String selectedOption = "1D";

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [

        selectedOption == "TIME"
            ? Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.withOpacity(0.5),
          ),
          child: Text(
            "TIME",
            style: TextStyle(
              color: Theme.of(context).colorScheme.background,
            ),
          ),
        )
            : GestureDetector(
          onTap: () {
            setState(() {
              selectedOption = "TIME";
            });
          },
          child: Text(
            "Time",
            style: TextStyle(
              color: Theme.of(context).colorScheme.background,
            ),
          ),
        ),
        const SizedBox(width: 12),

        // 1H
        selectedOption == "1H"
            ? Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.withOpacity(0.5),
          ),
          child: Text(
            "1H",
            style: TextStyle(
              color: Theme.of(context).colorScheme.background,
            ),
          ),
        )
            : GestureDetector(
          onTap: () {
            setState(() {
              selectedOption = "1H";
            });
          },
          child: Text(
            "1H",
            style: TextStyle(
              color: Theme.of(context).colorScheme.background,
            ),
          ),
        ),
        const SizedBox(width: 12),

        // 2H
        selectedOption == "2H"
            ? Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.withOpacity(0.5),
          ),
          child: Text(
            "2H",
            style: TextStyle(
              color: Theme.of(context).colorScheme.background,
            ),
          ),
        )
            : GestureDetector(
          onTap: () {
            setState(() {
              selectedOption = "2H";
            });
          },
          child: Text(
            "2H",
            style: TextStyle(
              color: Theme.of(context).colorScheme.background,
            ),
          ),
        ),
        const SizedBox(width: 12),

        // 4H
        selectedOption == "4H"
            ? Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.withOpacity(0.5),
          ),
          child: Text(
            "4H",
            style: TextStyle(
              color: Theme.of(context).colorScheme.background,
            ),
          ),
        )
            : GestureDetector(
          onTap: () {
            setState(() {
              selectedOption = "4H";
            });
          },
          child: Text(
            "4H",
            style: TextStyle(
              color: Theme.of(context).colorScheme.background,
            ),
          ),
        ),
        const SizedBox(width: 12),

        // 1D
        selectedOption == "1D"
            ? Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.withOpacity(0.5),
          ),
          child: Text(
            "1D",
            style: TextStyle(
              color: Theme.of(context).colorScheme.background,
            ),
          ),
        )
            : GestureDetector(
          onTap: () {
            setState(() {
              selectedOption = "1D";
            });
          },
          child: Text(
            "1D",
            style: TextStyle(
              color: Theme.of(context).colorScheme.background,
            ),
          ),
        ),
        const SizedBox(width: 12),


        selectedOption == "1W"
            ? Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.withOpacity(0.5),
          ),
          child: Text(
            "1W",
            style: TextStyle(
              color: Theme.of(context).colorScheme.background,
            ),
          ),
        )
            : GestureDetector(
          onTap: () {
            setState(() {
              selectedOption = "1W";
            });
          },
          child: Text(
            "1W",
            style: TextStyle(
              color: Theme.of(context).colorScheme.background,
            ),
          ),
        ),
        const SizedBox(width: 12),

        selectedOption == "1M"
            ? Container(
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.grey.withOpacity(0.5),
          ),
          child: Text(
            "1M",
            style: TextStyle(
              color: Theme.of(context).colorScheme.background,
            ),
          ),
        )
            : GestureDetector(
          onTap: () {
            setState(() {
              selectedOption = "1M";
            });
          },
          child: Text(
            "1M",
            style: TextStyle(
              color: Theme.of(context).colorScheme.background,
            ),
          ),
        ),
        const SizedBox(width: 12),


        Icon(
          Icons.keyboard_arrow_down,
          color: Theme.of(context).colorScheme.background,
          size: 17,
        ),
        const SizedBox(width: 12),
        SizedBox(
          height: 25,
          child: VerticalDivider(
            color: Theme.of(context).colorScheme.background,
          ),
        ),
        const SizedBox(width: 12),
        Icon(
          Icons.candlestick_chart_outlined,
          color: Theme.of(context).colorScheme.background,
        ),
        const SizedBox(width: 12),
        Text(
          "Fx",
          style: TextStyle(
            color: Theme.of(context).colorScheme.background,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}