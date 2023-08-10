import 'package:flutter/material.dart';
import 'package:multi_split_view/multi_split_view.dart';

import '../constants.dart';

class EqualSplitView extends StatefulWidget {
  final Widget left;
  final Widget right;
  const EqualSplitView({super.key, required this.left, required this.right});

  @override
  State<EqualSplitView> createState() => _EqualSplitViewState();
}

class _EqualSplitViewState extends State<EqualSplitView> {
  final _controller = MultiSplitViewController(areas: [
    Area(minimalSize: kMinEqualSplitViewSize),
    Area(minimalSize: kMinEqualSplitViewSize)
  ]);

  @override
  Widget build(BuildContext context) {
    return MultiSplitViewTheme(
        data: MultiSplitViewThemeData(
            dividerThickness: kDividerThickness,
            dividerPainter: DividerPainters.background(
                color: splitViewDividerColor,
                highlightedColor: splitViewDividerHighlightedColor,
                animationEnabled: false)),
        child: MultiSplitView(
          controller: _controller,
          children: [widget.left, widget.right],
        ));
  }
}
