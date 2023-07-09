import 'dart:math' as math;
import 'dart:ui';
import 'package:flutter/material.dart';
import '../painters/painters.dart';
import 'widgets.dart';

class NavigationWidget extends StatefulWidget {
  ///
  /// create a [NavigationWidget]
  ///
  const NavigationWidget({
    Key? key,
    required this.items,
    this.duration = const Duration(milliseconds: 300),
    this.scaleDuration = const Duration(milliseconds: 400),
    this.selectedColor,
    this.unSelectedColor,
    this.onTap,
    this.currentIndex = 0,
    this.iconSize = 24.0,
    this.scaleFactor = 0.2,
    this.elevation = 8.0,
    this.borderRadius = Radius.zero,
    this.backgroundColor = Colors.white,
    this.strokeColor = Colors.transparent,
    this.bubbleCurve = Curves.linear,
    this.scaleCurve = Curves.linear,
    this.isFloating = false,
    this.blurEffect = false,
    this.opacity = 0.8,
  })  : assert(scaleFactor <= 0.5, 'Scale factor must smaller than 0.5'),
        assert(scaleFactor > 0, 'Scale factor must bigger than 0'),
        assert(0 <= currentIndex && currentIndex < items.length),
        super(key: key);

  ///
  /// Animation duration
  ///
  final Duration duration;

  ///
  /// Scale duration
  ///
  final Duration scaleDuration;

  ///
  /// scale factor for the icon scale animation effect.
  /// default is `0.2`.
  final double scaleFactor;

  ///
  /// boolean that control if navigation bar perform floating.
  /// default is false
  ///
  final bool isFloating;

  ///
  /// Border radius for navigation bar
  ///
  final Radius borderRadius;

  /// The z-coordinate of this [NavigationWidget].
  ///
  /// If null, defaults to `8.0`.
  final double elevation;

  ///
  /// Item data in [NavigationWidgetItem]
  ///
  final List<ScaffoldNavBarWidgetTabItem> items;

  ///
  /// [Color] when [NavigationWidgetItem] is selected.
  ///
  /// default color is [blueAccent].
  final Color? selectedColor;

  ///
  /// [Color] when [NavigationWidgetItem] is not selected.
  ///
  /// default color is [grey[600]].
  final Color? unSelectedColor;

  ///
  /// callback function when item tapped
  ///
  final Function(int)? onTap;

  ///
  /// current index of navigation bar.
  ///
  final int currentIndex;

  ///
  /// size of icon.
  /// also represent the max radius of bubble effect animation.
  final double iconSize;

  ///
  /// Background color of [NavigationWidget]
  ///
  final Color backgroundColor;

  ///
  /// stroke color.
  /// default is [Colors.blueAccent].
  final Color strokeColor;

  ///
  /// animation curve of bubble effect
  ///
  final Curve bubbleCurve;

  ///
  /// animation curve of scale effect
  ///
  final Curve scaleCurve;

  ///
  /// bool to control if navigation bar use blur effect
  /// default is [false]
  ///
  final bool blurEffect;

  ///
  /// When [blurEffect] is [true], control the opacity of navigation bar
  /// default is [0.8]
  ///
  final double opacity;

  @override
  _NavigationWidgetState createState() => _NavigationWidgetState();
}

class _NavigationWidgetState extends State<NavigationWidget>
    with TickerProviderStateMixin {
  late List<double> _radiuses;
  late List<double> _sizes;
  AnimationController? _controller;
  AnimationController? _scaleController;

  double _bubbleRadius = 0.0;
  double? _maxRadius;

  double _itemPadding = 0.0;

  @override
  void initState() {
    super.initState();
    _bubbleRadius = 0.0;
    _radiuses = List<double>.generate(widget.items.length, (index) {
      return _bubbleRadius;
    });

    _sizes = List<double>.generate(widget.items.length, (index) {
      return 0.0;
    });
    _maxRadius = widget.iconSize;
  }

  @override
  void dispose() {
    _controller?.dispose();
    _scaleController?.dispose();

    super.dispose();
  }

  @override
  void didUpdateWidget(NavigationWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.currentIndex != oldWidget.currentIndex) {
      _scaleController?.reverse();
      _startAnimation(widget.currentIndex);
      _startScale(widget.currentIndex);
    }
  }

  void _startAnimation(int index) {
    _controller = AnimationController(
      vsync: this,
      duration: widget.duration,
    );
    final CurvedAnimation _curvedAnimation = CurvedAnimation(
      parent: _controller!,
      curve: widget.bubbleCurve,
    );
    Tween<double>(begin: 0.0, end: 1.0)
        .animate(_curvedAnimation)
        .addListener(() {
      setState(() {
        _radiuses[index] = _maxRadius! * _curvedAnimation.value;
      });
    });
    _controller!.forward();
  }

  void _startScale(int index) {
    _scaleController = AnimationController(
      vsync: this,
      duration: widget.scaleDuration,
    )..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          _scaleController?.reverse();
        }
      });
    final _scaleAnimation = CurvedAnimation(
      parent: _scaleController!,
      curve: widget.scaleCurve,
      reverseCurve: widget.scaleCurve.flipped,
    );

    Tween<double>(begin: 0.0, end: 1.0)
        .animate(_scaleAnimation)
        .addListener(() {
      setState(() {
        _sizes[index] = _scaleAnimation.value * widget.scaleFactor;
      });
    });
    _scaleController!.forward();
  }

  Widget _buildLabel(int index) {
    // unselected
    if (index != widget.currentIndex) {
      return Text(
        widget.items[index].label!,
      );
    } else {
      return Text(
        widget.items[index].label!,
        style: Theme.of(context).textTheme.titleLarge!.copyWith(
            fontSize: 12,
            fontWeight: FontWeight.w700,
            color: const Color(0xff7F49A9)),
      );
    }
  }

  Widget _buildIcon(int index) {
    return SizedBox(
      height: widget.iconSize,
      width: widget.iconSize,
      child: CustomPaint(
        painter: BeaconPainter(
          color: widget.strokeColor,
          beaconRadius: _radiuses[index],
          maxRadius: _maxRadius,
          offset: Offset(
            widget.iconSize / 2,
            widget.iconSize / 2,
          ),
        ),
        child: _NavigationWidgetTile(
          iconSize: widget.iconSize,
          scale: _sizes[index],
          selected: index == widget.currentIndex,
          item: widget.items[index],
          selectedColor:
              widget.selectedColor ?? DefaultNavigationWidgetStyle.defaultColor,
          unSelectedColor: widget.unSelectedColor ??
              DefaultNavigationWidgetStyle.defaultUnselectedColor,
          iconPadding: _itemPadding,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final double additionalBottomPadding =
        math.max(MediaQuery.of(context).padding.bottom, 0.0);

    final height = DefaultNavigationWidgetStyle.defaultHeight +
        (widget.isFloating ? 0.0 : additionalBottomPadding);

    _itemPadding = (MediaQuery.of(context).size.width -
            widget.items.length * widget.iconSize) /
        (widget.items.length * 2);

    if (widget.isFloating) {
      _itemPadding = (MediaQuery.of(context).size.width -
              widget.items.length * widget.iconSize -
              32) /
          (widget.items.length * 2);
    }

    final bar = Material(
      color: widget.backgroundColor,
      elevation: widget.elevation,
      borderRadius: BorderRadius.all(
        widget.borderRadius,
      ),
      child: SizedBox(
        height: height,
        width: MediaQuery.of(context).size.width,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            for (var i = 0; i < widget.items.length; i++)
              Expanded(
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    widget.onTap!(i);
                  },
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _buildIcon(i),
                      _buildLabel(i),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );

    if (widget.blurEffect) {
      return Padding(
        padding: widget.isFloating
            ? EdgeInsets.only(
                left: 16,
                right: 16,
                bottom: additionalBottomPadding,
              )
            : EdgeInsets.zero,
        child: ClipRRect(
          borderRadius: BorderRadius.all(
            widget.borderRadius,
          ),
          child: BackdropFilter(
            filter: ImageFilter.blur(
              sigmaX: 5.0,
              sigmaY: 10.0,
            ),
            child: Opacity(
              opacity: 0.6,
              child: bar,
            ),
          ),
        ),
      );
    } else {
      return Padding(
        padding: widget.isFloating
            ? EdgeInsets.only(
                left: 16,
                right: 16,
                bottom: additionalBottomPadding,
              )
            : EdgeInsets.zero,
        child: bar,
      );
    }
  }
}

class _NavigationWidgetTile extends StatelessWidget {
  const _NavigationWidgetTile({
    Key? key,
    this.selected,
    this.item,
    this.selectedColor,
    this.unSelectedColor,
    this.scale,
    this.iconSize,
    this.iconPadding,
  }) : super(key: key);

  final bool? selected;

  final ScaffoldNavBarWidgetTabItem? item;

  final Color? selectedColor;

  final Color? unSelectedColor;

  final double? scale;

  final double? iconSize;

  final double? iconPadding;

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: 1.0 + scale!,
      child: Stack(
        children: [
          IconTheme(
            data: IconThemeData(
              color: selected! ? selectedColor : unSelectedColor,
              size: iconSize,
            ),
            child: selected! ? item!.selectedIcon! : item!.icon,
          ),
          BadgeWidget(
            show: item!.showBadge,
            count: item!.badgeCount,
            right: 0.0,
          )
        ],
      ),
    );
  }
}

class DefaultNavigationWidgetStyle {
  DefaultNavigationWidgetStyle._();
  static const defaultHeight = 65;
  static const defaultColor = Color(0xff7F49A9);
  static final defaultUnselectedColor = Colors.grey[600];
}
