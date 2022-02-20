import 'package:duplicate_app/select_time_pre_order_modal/select_time_pre_order_modal_widget.dart';

import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../create_order_page/create_order_page_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_toggle_icon.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:share_plus/share_plus.dart';

class FoodDetailPageWidget extends StatefulWidget {
  const FoodDetailPageWidget({
    Key key,
    this.foodId,
  }) : super(key: key);

  final DocumentReference foodId;

  @override
  _FoodDetailPageWidgetState createState() => _FoodDetailPageWidgetState();
}

class _FoodDetailPageWidgetState extends State<FoodDetailPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<FoodRecord>(
      stream: FoodRecord.getDocument(widget.foodId),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: LinearProgressIndicator(
              color: FlutterFlowTheme.of(context).inactiveText,
            ),
          );
        }
        final foodDetailPageFoodRecord = snapshot.data;
        return Scaffold(
          key: scaffoldKey,
          backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
          body: SafeArea(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 1.4,
              decoration: BoxDecoration(),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        height: 320,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Stack(
                          children: [
                            StreamBuilder<List<FoodPhotoRecord>>(
                              stream: queryFoodPhotoRecord(
                                queryBuilder: (foodPhotoRecord) => foodPhotoRecord.where('food_id', isEqualTo: widget.foodId),
                                singleRecord: true,
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: LinearProgressIndicator(
                                      color: FlutterFlowTheme.of(context).inactiveText,
                                    ),
                                  );
                                }
                                List<FoodPhotoRecord> imageFoodPhotoRecordList = snapshot.data;
                                // Return an empty Container when the document does not exist.
                                if (snapshot.data.isEmpty) {
                                  return Container();
                                }
                                final imageFoodPhotoRecord = imageFoodPhotoRecordList.isNotEmpty ? imageFoodPhotoRecordList.first : null;
                                return ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: Image.network(
                                    imageFoodPhotoRecord.photoUrl,
                                    width: MediaQuery.of(context).size.width,
                                    height: MediaQuery.of(context).size.height * 1,
                                    fit: BoxFit.cover,
                                  ),
                                );
                              },
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(16, 16, 0, 0),
                              child: InkWell(
                                onTap: () async {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  width: 40,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(60),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context).tertiaryColor,
                                      width: 4,
                                    ),
                                  ),
                                  alignment: AlignmentDirectional(0, 0),
                                  child: FaIcon(
                                    FontAwesomeIcons.chevronLeft,
                                    color: FlutterFlowTheme.of(context).tertiaryColor,
                                    size: 22,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(),
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              foodDetailPageFoodRecord.name,
                              style: FlutterFlowTheme.of(context).title2,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                              child: Text(
                                formatNumber(
                                  foodDetailPageFoodRecord.price,
                                  formatType: FormatType.custom,
                                  currency: 'Rp. ',
                                  format: '0,000',
                                  locale: '',
                                ),
                                style: FlutterFlowTheme.of(context).subtitle2,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                              child: Text(
                                foodDetailPageFoodRecord.description,
                                style: FlutterFlowTheme.of(context).subtitle2,
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: [
                                        Container(
                                          width: 80,
                                          height: 80,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context).containerBG,
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              ToggleIcon(
                                                onPressed: () async {
                                                  final userLikeElement = currentUserReference;
                                                  final userLikeUpdate = foodDetailPageFoodRecord.userLike.toList().contains(userLikeElement)
                                                      ? FieldValue.arrayRemove([userLikeElement])
                                                      : FieldValue.arrayUnion([userLikeElement]);
                                                  final foodUpdateData = {
                                                    'user_like': userLikeUpdate,
                                                  };
                                                  await foodDetailPageFoodRecord.reference.update(foodUpdateData);
                                                },
                                                value: foodDetailPageFoodRecord.userLike.toList().contains(currentUserReference),
                                                onIcon: Icon(
                                                  Icons.favorite_rounded,
                                                  color: FlutterFlowTheme.of(context).secondaryColor,
                                                  size: 38,
                                                ),
                                                offIcon: Icon(
                                                  Icons.favorite_border_rounded,
                                                  color: FlutterFlowTheme.of(context).inactiveText,
                                                  size: 38,
                                                ),
                                              ),
                                              Text(
                                                '10 Likes',
                                                style: FlutterFlowTheme.of(context).bodyText2.override(
                                                      fontFamily: 'Open Sans',
                                                      color: FlutterFlowTheme.of(context).inactiveText,
                                                      fontSize: 10,
                                                    ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 80,
                                          height: 80,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context).containerBG,
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                                child: FaIcon(
                                                  FontAwesomeIcons.commentAlt,
                                                  color: Color(0xFFB7B7B7),
                                                  size: 30,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                                child: Text(
                                                  '1 Comments',
                                                  style: FlutterFlowTheme.of(context).bodyText2.override(
                                                        fontFamily: 'Open Sans',
                                                        color: FlutterFlowTheme.of(context).inactiveText,
                                                        fontSize: 10,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 80,
                                          height: 80,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context).containerBG,
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment: MainAxisAlignment.center,
                                            crossAxisAlignment: CrossAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                                child: Image.asset(
                                                  'assets/images/Asset_13.png',
                                                  width: 35,
                                                  height: 35,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                                child: Text(
                                                  'No Pork',
                                                  style: FlutterFlowTheme.of(context).bodyText2.override(
                                                        fontFamily: 'Open Sans',
                                                        color: FlutterFlowTheme.of(context).inactiveText,
                                                        fontSize: 10,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Container(
                                          width: 80,
                                          height: 80,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context).containerBG,
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: StreamBuilder<UserRecord>(
                                            stream: UserRecord.getDocument(foodDetailPageFoodRecord.userId),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: LinearProgressIndicator(
                                                    color: FlutterFlowTheme.of(context).inactiveText,
                                                  ),
                                                );
                                              }
                                              final columnUserRecord = snapshot.data;
                                              return InkWell(
                                                onTap: () async {
                                                  await Share.share(
                                                      'Check out delicious ${foodDetailPageFoodRecord.name} made by my neighbor ${columnUserRecord.displayName} using Kokikan. visit https://kokikan.com for more info');
                                                },
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.max,
                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                                                      child: Icon(
                                                        Icons.share_outlined,
                                                        color: Color(0xFFB7B7B7),
                                                        size: 35,
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                                      child: Text(
                                                        'Share',
                                                        style: FlutterFlowTheme.of(context).bodyText2.override(
                                                              fontFamily: 'Open Sans',
                                                              color: FlutterFlowTheme.of(context).inactiveText,
                                                              fontSize: 10,
                                                            ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                        child: StreamBuilder<UserRecord>(
                          stream: UserRecord.getDocument(foodDetailPageFoodRecord.userId),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: LinearProgressIndicator(
                                  color: FlutterFlowTheme.of(context).inactiveText,
                                ),
                              );
                            }
                            final cooksUserRecord = snapshot.data;
                            return Container(
                              width: MediaQuery.of(context).size.width * 0.9,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).containerBG,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: MediaQuery.of(context).size.width * 0.2,
                                      height: MediaQuery.of(context).size.width * 0.2,
                                      clipBehavior: Clip.antiAlias,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Image.network(
                                        'https://picsum.photos/seed/309/600',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(14, 0, 0, 0),
                                      child: Container(
                                        width: MediaQuery.of(context).size.width * 0.6,
                                        decoration: BoxDecoration(),
                                        child: Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                cooksUserRecord.displayName,
                                                style: FlutterFlowTheme.of(context).title3,
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                                child: Text(
                                                  '[cook specialization]',
                                                  style: FlutterFlowTheme.of(context).subtitle2,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).containerBG,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(12, 12, 12, 12),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                                  child: Icon(
                                    Icons.verified_user_rounded,
                                    color: FlutterFlowTheme.of(context).primaryColor,
                                    size: 60,
                                  ),
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.6,
                                  decoration: BoxDecoration(),
                                  child: Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(8, 0, 0, 0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Health and safety protocols',
                                          style: FlutterFlowTheme.of(context).subtitle1.override(
                                                fontFamily: 'Open Sans',
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                          child: Text(
                                            'The cook has agreed to ensure safety of the food they serve and follow covid19 protocol',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context).subtitle2,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsetsDirectional.fromSTEB(0, 4, 0, 0),
                                          child: Text(
                                            'Learn More',
                                            textAlign: TextAlign.start,
                                            style: FlutterFlowTheme.of(context).bodyText1,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 16, 0, 0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(),
                        child: FFButtonWidget(
                          onPressed: () async {
                            await Navigator.push(
                              context,
                              PageTransition(
                                type: PageTransitionType.fade,
                                duration: Duration(milliseconds: 100),
                                reverseDuration: Duration(milliseconds: 100),
                                child: SelectTimePreOrderModalWidget(
                                  foodId: widget.foodId,
                                ),
                              ),
                            );
                          },
                          text: 'Order',
                          options: FFButtonOptions(
                            width: 335,
                            height: 35,
                            color: FlutterFlowTheme.of(context).secondaryColor,
                            textStyle: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Poppins',
                                  color: FlutterFlowTheme.of(context).tertiaryColor,
                                ),
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1,
                            ),
                            borderRadius: 12,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 5, 0, 20),
                      child: Text(
                        '10',
                        style: FlutterFlowTheme.of(context).bodyText2,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
