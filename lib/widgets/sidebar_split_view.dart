import 'package:api_room/constants.dart';
import 'package:flutter/material.dart';
import 'package:multi_split_view/multi_split_view.dart';

class SidebarSplitView extends StatefulWidget {
  final Widget sidebar;
  final Widget content;
  const SidebarSplitView(
      {super.key, required this.sidebar, required this.content});

  @override
  State<SidebarSplitView> createState() => _SidebarSplitViewState();
}

class _SidebarSplitViewState extends State<SidebarSplitView> {
  final _controller = MultiSplitViewController(areas: [
    Area(size: kSidebarSplitViewSize, minimalSize: kMinSidebarSplitViewSize),
    Area(minimalWeight: kMinContentWeight)
  ]);

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiSplitViewTheme(
      data: MultiSplitViewThemeData(
          dividerThickness: kDividerThickness,
          dividerPainter: DividerPainters.background(
            highlightedColor: splitViewDividerColor,
            animationEnabled: false,
          )),
      child: MultiSplitView(
        controller: _controller,
        children: [widget.sidebar, widget.content],
      ),
    );
  }
}

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
                highlightedColor: splitViewDividerColor,
                animationEnabled: false)),
        child: MultiSplitView(
          controller: _controller,
          children: [widget.left, widget.right],
        ));
  }
}
