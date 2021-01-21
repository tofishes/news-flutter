part of 'html.dart';

class Box extends StatelessWidget {
  final List<double> space;
  final Widget child;

  Box({ this.child, this.space });

  EdgeInsets getPadding(List<double> space) {
    double left, top, right, bottom;

    top = bottom = space[0];
    left = right = space.length >= 2 ? space[1] : space[0];

    if (space.length >= 3) {
      bottom = space[2];
    }

    if (space.length >= 4) {
      left = space[3];
    }

    return EdgeInsets.fromLTRB(left, top, right, bottom);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: getPadding(space),
      child: child,
    );
  }
}
