import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../landing_page/landing_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GoogleSignInWidget extends StatefulWidget {
  const GoogleSignInWidget({Key key}) : super(key: key);

  @override
  _GoogleSignInWidgetState createState() => _GoogleSignInWidgetState();
}

class _GoogleSignInWidgetState extends State<GoogleSignInWidget> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional(0, 0),
      child: Container(
        width: double.infinity,
        height: 40,
        child: Stack(
          children: [
            Align(
              alignment: AlignmentDirectional(0, 0),
              child: FFButtonWidget(
                onPressed: () async {
                  final user = await signInWithGoogle(context);
                  if (user == null) {
                    return;
                  }
                  await Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.fade,
                      duration: Duration(milliseconds: 100),
                      reverseDuration: Duration(milliseconds: 100),
                      child: LandingPageWidget(),
                    ),
                  );
                },
                text: 'Sign in with Google',
                icon: Icon(
                  Icons.add,
                  color: Colors.transparent,
                  size: 20,
                ),
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 40,
                  color: Colors.white,
                  textStyle: FlutterFlowTheme.of(context).title3,
                  elevation: 0,
                  borderSide: BorderSide(
                    color: FlutterFlowTheme.of(context).textColor,
                    width: 1,
                  ),
                  borderRadius: 10,
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-0.83, 0),
              child: Container(
                width: 22,
                height: 22,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.network(
                  'https://i0.wp.com/nanophorm.com/wp-content/uploads/2018/04/google-logo-icon-PNG-Transparent-Background.png?w=1000&ssl=1',
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
