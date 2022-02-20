import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EmptyStateNoNotificationWidget extends StatefulWidget {
  const EmptyStateNoNotificationWidget({Key key}) : super(key: key);

  @override
  _EmptyStateNoNotificationWidgetState createState() =>
      _EmptyStateNoNotificationWidgetState();
}

class _EmptyStateNoNotificationWidgetState
    extends State<EmptyStateNoNotificationWidget> {
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
          'Looking for a notification?',
          style: FlutterFlowTheme.of(context).title2,
        ),
        Text(
          'we\'ll inform you soon',
          style: FlutterFlowTheme.of(context).subtitle1,
        ),
      ],
    );
  }
}
