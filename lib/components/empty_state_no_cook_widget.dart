import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmptyStateNoCookWidget extends StatefulWidget {
  const EmptyStateNoCookWidget({Key key}) : super(key: key);

  @override
  _EmptyStateNoCookWidgetState createState() => _EmptyStateNoCookWidgetState();
}

class _EmptyStateNoCookWidgetState extends State<EmptyStateNoCookWidget> {
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
          'Be the first cook',
          style: FlutterFlowTheme.of(context).title2,
        ),
        Text(
          '1 last step to be cook',
          style: FlutterFlowTheme.of(context).subtitle1,
        ),
      ],
    );
  }
}
