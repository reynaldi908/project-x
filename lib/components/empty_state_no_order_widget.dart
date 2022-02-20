import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmptyStateNoOrderWidget extends StatefulWidget {
  const EmptyStateNoOrderWidget({Key key}) : super(key: key);

  @override
  _EmptyStateNoOrderWidgetState createState() =>
      _EmptyStateNoOrderWidgetState();
}

class _EmptyStateNoOrderWidgetState extends State<EmptyStateNoOrderWidget> {
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
          'Let\'s order some food',
          style: FlutterFlowTheme.of(context).title2,
        ),
        Text(
          'Taste your neighbor\'s delicious food',
          style: FlutterFlowTheme.of(context).subtitle1,
        ),
      ],
    );
  }
}
