import '../auth/auth_util.dart';
import '../components/home_app_bar_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UserNotLoggedInWidget extends StatefulWidget {
  const UserNotLoggedInWidget({Key key}) : super(key: key);

  @override
  _UserNotLoggedInWidgetState createState() => _UserNotLoggedInWidgetState();
}

class _UserNotLoggedInWidgetState extends State<UserNotLoggedInWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        HomeAppBarWidget(
          userId: currentUserReference,
          integer: 1,
        ),
        Align(
          alignment: AlignmentDirectional(0, 0),
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 200, 0, 0),
            child: Image.asset(
              'assets/images/avatar.png',
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Text(
          'Sign up for an account',
          style: FlutterFlowTheme.of(context).bodyText1,
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
          child: FFButtonWidget(
            onPressed: () {
              print('Button pressed ...');
            },
            text: 'Sign Up',
            options: FFButtonOptions(
              width: 170,
              height: 35,
              color: FlutterFlowTheme.of(context).primaryColor,
              textStyle: FlutterFlowTheme.of(context).subtitle2.override(
                    fontFamily: 'Open Sans',
                    color: Colors.white,
                  ),
              borderSide: BorderSide(
                color: Colors.transparent,
                width: 1,
              ),
              borderRadius: 10,
            ),
          ),
        ),
      ],
    );
  }
}
