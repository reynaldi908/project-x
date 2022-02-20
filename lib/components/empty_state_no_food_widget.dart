import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmptyStateNoFoodWidget extends StatefulWidget {
  const EmptyStateNoFoodWidget({Key key}) : super(key: key);

  @override
  _EmptyStateNoFoodWidgetState createState() => _EmptyStateNoFoodWidgetState();
}

class _EmptyStateNoFoodWidgetState extends State<EmptyStateNoFoodWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Image.network(
          '',
          width: MediaQuery.of(context).size.width * 0.9,
          height: 180,
          fit: BoxFit.contain,
        ),
        Text(
          'Create food?',
          style: FlutterFlowTheme.of(context).title2,
        ),
        Text(
          'be cook just in 1 click',
          style: FlutterFlowTheme.of(context).subtitle1,
        ),
      ],
    );
  }
}
