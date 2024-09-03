import 'package:flutter/material.dart';
import 'package:l_store/common/widgets/custom_shapes/curved_widgets/curved_edges.dart';

class TCurvedEdgesWidget extends StatelessWidget {
  const TCurvedEdgesWidget({
    super.key, 
    required this.child,
  });

final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCustomCurvedEdges(),
      child: child
    );
  }
}