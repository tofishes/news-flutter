import 'package:flutter/material.dart';

part './layout.dart';

class Title extends StatelessWidget {
  final String title;
  final int fontSize;
  final int maxLine;

  Title(this.title, { this.fontSize, this.maxLine = 2 });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: maxLine,
      overflow: TextOverflow.ellipsis,
      softWrap: true,
      style: TextStyle(
        fontSize: this.fontSize.toDouble()
      )
    );
  }
}

class H1 extends Title {
  H1(title, {fontSize = 22}) : super(title, fontSize: fontSize);
}

class H2 extends Title {
  H2(title, {fontSize = 20}) : super(title, fontSize: fontSize);
}

class H3 extends Title {
  H3(title, {fontSize = 18}) : super(title, fontSize: fontSize);
}

class H4 extends Title {
  H4(title, {fontSize = 16}) : super(title, fontSize: fontSize);
}

class H5 extends Title {
  H5(title, {fontSize = 14}) : super(title, fontSize: fontSize);
}

class H6 extends Title {
  H6(title, {fontSize = 12}) : super(title, fontSize: fontSize);
}

class Span extends StatelessWidget {
  final int space;
  @required
  final Widget child;

  Span(this.child, { this.space = 5 });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: space.toDouble()),
      child: child,
    );
  }
}

class Strong extends StatelessWidget {
  final Widget child;
  final String text;

  Strong({ this.text, this.child })
    :assert(text != null || child != null);

  @override
  Widget build(BuildContext context) {
    return DefaultTextStyle(
      child: text != null ? Text(text) : child,
      style: TextStyle(
        color: Colors.red,
        fontWeight: FontWeight.w900,
        fontSize: 18,
      ),
    );
  }
}

class Divider extends StatelessWidget {
  final String type;
  final double _size;
  final Color color;
  final double space;

  Divider({ this.type = 'line', double size, this.color, this.space = 6 }) :
    _size = size ?? (type == 'line' ? 12 : 4);

  @override
  Widget build(BuildContext context) {
    if (type == 'dot') {
      return Container(
        margin: EdgeInsets.symmetric(horizontal: space),
        width: _size,
        height: _size,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(_size)),
          color: color ?? Theme.of(context).accentColor
        ),
      );
    }
    return Container(
      color: color,
      height: _size,
      width: 1
    );
  }
}
