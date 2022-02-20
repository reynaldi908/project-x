import '../auth/auth_util.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeAppBarWidget extends StatefulWidget {
  const HomeAppBarWidget({
    Key key,
    this.userId,
    this.integer,
  }) : super(key: key);

  final DocumentReference userId;
  final int integer;

  @override
  _HomeAppBarWidgetState createState() => _HomeAppBarWidgetState();
}

class _HomeAppBarWidgetState extends State<HomeAppBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: 40,
        decoration: BoxDecoration(),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 2,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    AutoSizeText(
                      'My current neighborhood',
                      style: FlutterFlowTheme.of(context).subtitle2.override(
                            fontFamily: 'Open Sans',
                            color: FlutterFlowTheme.of(context).textColor,
                          ),
                    ),
                    AutoSizeText(
                      'Apartement Botanica',
                      style: FlutterFlowTheme.of(context).subtitle2.override(
                            fontFamily: 'Open Sans',
                            color: FlutterFlowTheme.of(context).primaryColor,
                            lineHeight: 1,
                          ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    FaIcon(
                      FontAwesomeIcons.questionCircle,
                      color: FlutterFlowTheme.of(context).textColor,
                      size: 24,
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(18, 0, 18, 0),
                      child: Icon(
                        Icons.notifications,
                        color: FlutterFlowTheme.of(context).textColor,
                        size: 24,
                      ),
                    ),
                    AuthUserStreamWidget(
                      child: Container(
                        width: 24,
                        height: 24,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.network(
                          'https://picsum.photos/200',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
