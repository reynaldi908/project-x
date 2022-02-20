import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/empty_state_no_food_widget.dart';
import '../components/home_app_bar_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../food_detail_page/food_detail_page_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class LandingPageWidget extends StatefulWidget {
  const LandingPageWidget({Key key}) : super(key: key);

  @override
  _LandingPageWidgetState createState() => _LandingPageWidgetState();
}

class _LandingPageWidgetState extends State<LandingPageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).tertiaryColor,
      body: SafeArea(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1,
          decoration: BoxDecoration(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                HomeAppBarWidget(
                  userId: currentUserReference,
                  integer: 1,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hey Tasya',
                          style: FlutterFlowTheme.of(context).title1,
                        ),
                        Text(
                          'What do you want to eat?',
                          style: FlutterFlowTheme.of(context).subtitle1,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Now',
                              style: FlutterFlowTheme.of(context).title2,
                            ),
                            FaIcon(
                              FontAwesomeIcons.chevronRight,
                              color: FlutterFlowTheme.of(context).inactiveText,
                              size: 18,
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                          child: StreamBuilder<List<FoodRecord>>(
                            stream: queryFoodRecord(
                              limit: 8,
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
                              List<FoodRecord> foodScheduleColFoodRecordList = snapshot.data;
                              return SingleChildScrollView(
                                scrollDirection: Axis.horizontal,
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: List.generate(foodScheduleColFoodRecordList.length, (foodScheduleColIndex) {
                                    final foodScheduleColFoodRecord = foodScheduleColFoodRecordList[foodScheduleColIndex];
                                    return Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                                      child: Container(
                                        width: MediaQuery.of(context).size.width * 0.44,
                                        decoration: BoxDecoration(),
                                        child: InkWell(
                                          onTap: () async {
                                            await Navigator.push(
                                              context,
                                              PageTransition(
                                                type: PageTransitionType.rightToLeft,
                                                duration: Duration(milliseconds: 100),
                                                reverseDuration: Duration(milliseconds: 100),
                                                child: FoodDetailPageWidget(
                                                  foodId: foodScheduleColFoodRecord.reference,
                                                ),
                                              ),
                                            );
                                          },
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              StreamBuilder<List<FoodPhotoRecord>>(
                                                stream: queryFoodPhotoRecord(
                                                  queryBuilder: (foodPhotoRecord) =>
                                                      foodPhotoRecord.where('food_id', isEqualTo: foodScheduleColFoodRecord.reference),
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
                                                      height: MediaQuery.of(context).size.height * 0.2,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  );
                                                },
                                              ),
                                              Text(
                                                foodScheduleColFoodRecord.name,
                                                style: FlutterFlowTheme.of(context).title3,
                                              ),
                                              Text(
                                                formatNumber(
                                                  foodScheduleColFoodRecord.price,
                                                  formatType: FormatType.custom,
                                                  currency: 'Rp. ',
                                                  format: '0,000',
                                                  locale: '',
                                                ),
                                                style: FlutterFlowTheme.of(context).bodyText1,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  }),
                                ),
                              );
                            },
                          ),
                        ),
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  'Breakfast',
                                  style: FlutterFlowTheme.of(context).title2,
                                ),
                                FaIcon(
                                  FontAwesomeIcons.chevronRight,
                                  color: FlutterFlowTheme.of(context).inactiveText,
                                  size: 18,
                                ),
                              ],
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                              child: StreamBuilder<List<FoodRecord>>(
                                stream: queryFoodRecord(limit: 8),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: LinearProgressIndicator(
                                        color: FlutterFlowTheme.of(context).inactiveText,
                                      ),
                                    );
                                  }
                                  List<FoodRecord> foodColFoodRecordList = snapshot.data;
                                  return SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: List.generate(foodColFoodRecordList.length, (foodColIndex) {
                                        final foodColFoodRecord = foodColFoodRecordList[foodColIndex];
                                        return Container(
                                          decoration: BoxDecoration(),
                                          child: Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                                            child: Container(
                                              width: MediaQuery.of(context).size.width * 0.44,
                                              decoration: BoxDecoration(),
                                              child: InkWell(
                                                onTap: () async {
                                                  await Navigator.push(
                                                    context,
                                                    PageTransition(
                                                      type: PageTransitionType.rightToLeft,
                                                      duration: Duration(milliseconds: 100),
                                                      reverseDuration: Duration(milliseconds: 100),
                                                      child: FoodDetailPageWidget(
                                                        foodId: foodColFoodRecord.reference,
                                                      ),
                                                    ),
                                                  );
                                                },
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.max,
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    StreamBuilder<List<FoodPhotoRecord>>(
                                                      stream: queryFoodPhotoRecord(
                                                        queryBuilder: (foodPhotoRecord) =>
                                                            foodPhotoRecord.where('food_id', isEqualTo: foodColFoodRecord.reference),
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
                                                        final imageFoodPhotoRecord =
                                                            imageFoodPhotoRecordList.isNotEmpty ? imageFoodPhotoRecordList.first : null;
                                                        return ClipRRect(
                                                          borderRadius: BorderRadius.circular(10),
                                                          child: Image.network(
                                                            imageFoodPhotoRecord.photoUrl,
                                                            width: MediaQuery.of(context).size.width,
                                                            height: MediaQuery.of(context).size.height * 0.2,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                    Text(
                                                      foodColFoodRecord.name,
                                                      style: FlutterFlowTheme.of(context).title3,
                                                    ),
                                                    Text(
                                                      formatNumber(
                                                        foodColFoodRecord.price,
                                                        formatType: FormatType.custom,
                                                        currency: 'Rp. ',
                                                        format: '0,000',
                                                        locale: '',
                                                      ),
                                                      style: FlutterFlowTheme.of(context).bodyText1,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      }),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Text(
                              'Lunch',
                              style: FlutterFlowTheme.of(context).title2,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                              child: StreamBuilder<List<FoodRecord>>(
                                stream: queryFoodRecord(limit: 8),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: LinearProgressIndicator(
                                        color: FlutterFlowTheme.of(context).inactiveText,
                                      ),
                                    );
                                  }
                                  List<FoodRecord> foodColFoodRecordList = snapshot.data;
                                  return SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: List.generate(foodColFoodRecordList.length, (foodColIndex) {
                                        final foodColFoodRecord = foodColFoodRecordList[foodColIndex];
                                        return Container(
                                          decoration: BoxDecoration(),
                                          child: Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                                            child: Container(
                                              width: MediaQuery.of(context).size.width * 0.44,
                                              decoration: BoxDecoration(),
                                              child: InkWell(
                                                onTap: () async {
                                                  await Navigator.push(
                                                    context,
                                                    PageTransition(
                                                      type: PageTransitionType.rightToLeft,
                                                      duration: Duration(milliseconds: 100),
                                                      reverseDuration: Duration(milliseconds: 100),
                                                      child: FoodDetailPageWidget(
                                                        foodId: foodColFoodRecord.reference,
                                                      ),
                                                    ),
                                                  );
                                                },
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.max,
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    StreamBuilder<List<FoodPhotoRecord>>(
                                                      stream: queryFoodPhotoRecord(
                                                        queryBuilder: (foodPhotoRecord) =>
                                                            foodPhotoRecord.where('food_id', isEqualTo: foodColFoodRecord.reference),
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
                                                        final imageFoodPhotoRecord =
                                                            imageFoodPhotoRecordList.isNotEmpty ? imageFoodPhotoRecordList.first : null;
                                                        return ClipRRect(
                                                          borderRadius: BorderRadius.circular(10),
                                                          child: Image.network(
                                                            imageFoodPhotoRecord.photoUrl,
                                                            width: MediaQuery.of(context).size.width,
                                                            height: MediaQuery.of(context).size.height * 0.2,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                    Text(
                                                      foodColFoodRecord.name,
                                                      style: FlutterFlowTheme.of(context).title3,
                                                    ),
                                                    Text(
                                                      formatNumber(
                                                        foodColFoodRecord.price,
                                                        formatType: FormatType.custom,
                                                        currency: 'Rp. ',
                                                        format: '0,000',
                                                        locale: '',
                                                      ),
                                                      style: FlutterFlowTheme.of(context).bodyText1,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      }),
                                    ),
                                  );
                                },
                              ),
                            ),
                            Text(
                              'Dinner',
                              style: FlutterFlowTheme.of(context).title2,
                            ),
                            Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                              child: StreamBuilder<List<FoodRecord>>(
                                stream: queryFoodRecord(limit: 8),
                                builder: (context, snapshot) {
                                  // Customize what your widget looks like when it's loading.
                                  if (!snapshot.hasData) {
                                    return Center(
                                      child: LinearProgressIndicator(
                                        color: FlutterFlowTheme.of(context).inactiveText,
                                      ),
                                    );
                                  }
                                  List<FoodRecord> foodColFoodRecordList = snapshot.data;
                                  return SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: List.generate(foodColFoodRecordList.length, (foodColIndex) {
                                        final foodColFoodRecord = foodColFoodRecordList[foodColIndex];
                                        return Container(
                                          decoration: BoxDecoration(),
                                          child: Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 8, 0),
                                            child: Container(
                                              width: MediaQuery.of(context).size.width * 0.44,
                                              decoration: BoxDecoration(),
                                              child: InkWell(
                                                onTap: () async {
                                                  await Navigator.push(
                                                    context,
                                                    PageTransition(
                                                      type: PageTransitionType.rightToLeft,
                                                      duration: Duration(milliseconds: 100),
                                                      reverseDuration: Duration(milliseconds: 100),
                                                      child: FoodDetailPageWidget(
                                                        foodId: foodColFoodRecord.reference,
                                                      ),
                                                    ),
                                                  );
                                                },
                                                child: Column(
                                                  mainAxisSize: MainAxisSize.max,
                                                  mainAxisAlignment: MainAxisAlignment.start,
                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                  children: [
                                                    StreamBuilder<List<FoodPhotoRecord>>(
                                                      stream: queryFoodPhotoRecord(
                                                        queryBuilder: (foodPhotoRecord) =>
                                                            foodPhotoRecord.where('food_id', isEqualTo: foodColFoodRecord.reference),
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
                                                        final imageFoodPhotoRecord =
                                                            imageFoodPhotoRecordList.isNotEmpty ? imageFoodPhotoRecordList.first : null;
                                                        return ClipRRect(
                                                          borderRadius: BorderRadius.circular(10),
                                                          child: Image.network(
                                                            imageFoodPhotoRecord.photoUrl,
                                                            width: MediaQuery.of(context).size.width,
                                                            height: MediaQuery.of(context).size.height * 0.2,
                                                            fit: BoxFit.cover,
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                    Text(
                                                      foodColFoodRecord.name,
                                                      style: FlutterFlowTheme.of(context).title3,
                                                    ),
                                                    Text(
                                                      formatNumber(
                                                        foodColFoodRecord.price,
                                                        formatType: FormatType.custom,
                                                        currency: 'Rp. ',
                                                        format: '0,000',
                                                        locale: '',
                                                      ),
                                                      style: FlutterFlowTheme.of(context).bodyText1,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      }),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ],
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
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Later',
                              style: FlutterFlowTheme.of(context).title2,
                            ),
                            FaIcon(
                              FontAwesomeIcons.chevronDown,
                              color: FlutterFlowTheme.of(context).inactiveText,
                              size: 18,
                            ),
                          ],
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(0, 15, 0, 16),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.9,
                            decoration: BoxDecoration(),
                            child: StreamBuilder<List<FoodRecord>>(
                              stream: queryFoodRecord(
                                limit: 8,
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
                                List<FoodRecord> foodColFoodRecordList = snapshot.data;
                                if (foodColFoodRecordList.isEmpty) {
                                  return Center(
                                    child: Container(),
                                  );
                                }
                                return GridView.builder(
                                  padding: EdgeInsets.zero,
                                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2,
                                    crossAxisSpacing: 10,
                                    mainAxisSpacing: 10,
                                    childAspectRatio: 0.73,
                                  ),
                                  primary: false,
                                  shrinkWrap: true,
                                  scrollDirection: Axis.vertical,
                                  itemCount: foodColFoodRecordList.length,
                                  itemBuilder: (context, foodColIndex) {
                                    final foodColFoodRecord = foodColFoodRecordList[foodColIndex];
                                    return InkWell(
                                      onTap: () async {
                                        await Navigator.push(
                                          context,
                                          PageTransition(
                                            type: PageTransitionType.rightToLeft,
                                            duration: Duration(milliseconds: 100),
                                            reverseDuration: Duration(milliseconds: 100),
                                            child: FoodDetailPageWidget(
                                              foodId: foodColFoodRecord.reference,
                                            ),
                                          ),
                                        );
                                      },
                                      child: Container(
                                        width: MediaQuery.of(context).size.width,
                                        decoration: BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            StreamBuilder<List<FoodPhotoRecord>>(
                                              stream: queryFoodPhotoRecord(
                                                queryBuilder: (foodPhotoRecord) => foodPhotoRecord.where('food_id', isEqualTo: foodColFoodRecord.reference),
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
                                                    height: MediaQuery.of(context).size.height * 0.2,
                                                    fit: BoxFit.cover,
                                                  ),
                                                );
                                              },
                                            ),
                                            AutoSizeText(
                                              foodColFoodRecord.name,
                                              style: FlutterFlowTheme.of(context).title3,
                                              maxLines: 2,
                                            ),
                                            Text(
                                              formatNumber(
                                                foodColFoodRecord.price,
                                                formatType: FormatType.custom,
                                                currency: 'Rp. ',
                                                format: '0,000',
                                                locale: '',
                                              ),
                                              style: FlutterFlowTheme.of(context).bodyText1,
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
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
        ),
      ),
    );
  }
}
