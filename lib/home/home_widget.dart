import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../info_page/info_page_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  PageController? pageViewController1;
  PageController? pageViewController2;
  PageController? pageViewController3;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFF12121A),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(2, 0, 0, 15),
                  child: Material(
                    color: Colors.transparent,
                    elevation: 10,
                    child: Container(
                      width: double.infinity,
                      height: 720,
                      decoration: BoxDecoration(
                        color: Color(0xDF000000),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding:
                                    EdgeInsetsDirectional.fromSTEB(0, 8, 0, 0),
                                child: Image.asset(
                                  'assets/images/download_(3).png',
                                  width: 120,
                                  height: 70,
                                  fit: BoxFit.scaleDown,
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            child: DefaultTabController(
                              length: 3,
                              initialIndex: 0,
                              child: Column(
                                children: [
                                  TabBar(
                                    labelColor: FlutterFlowTheme.of(context)
                                        .primaryBtnText,
                                    unselectedLabelColor: Color(0xFFD8C7C7),
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .subtitle1
                                        .override(
                                          fontFamily: 'Poppins',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                    indicatorColor: FlutterFlowTheme.of(context)
                                        .secondaryColor,
                                    tabs: [
                                      Tab(
                                        text: 'Home',
                                      ),
                                      Tab(
                                        text: 'Movies',
                                      ),
                                      Tab(
                                        text: 'TV Series',
                                      ),
                                    ],
                                  ),
                                  Expanded(
                                    child: TabBarView(
                                      children: [
                                        SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              StreamBuilder<
                                                  List<VideodataRecord>>(
                                                stream: queryVideodataRecord(
                                                  queryBuilder:
                                                      (videodataRecord) =>
                                                          videodataRecord
                                                              .where(
                                                                  'category',
                                                                  isEqualTo:
                                                                      'Movies')
                                                              .orderBy(
                                                                  'moviedate',
                                                                  descending:
                                                                      true),
                                                  limit: 8,
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50,
                                                        height: 50,
                                                        child:
                                                            CircularProgressIndicator(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<VideodataRecord>
                                                      pageViewVideodataRecordList =
                                                      snapshot.data!;
                                                  return Container(
                                                    width: double.infinity,
                                                    height: 220,
                                                    child: Stack(
                                                      children: [
                                                        PageView.builder(
                                                          controller: pageViewController1 ??=
                                                              PageController(
                                                                  initialPage: min(
                                                                      0,
                                                                      pageViewVideodataRecordList
                                                                              .length -
                                                                          1)),
                                                          scrollDirection:
                                                              Axis.horizontal,
                                                          itemCount:
                                                              pageViewVideodataRecordList
                                                                  .length,
                                                          itemBuilder: (context,
                                                              pageViewIndex) {
                                                            final pageViewVideodataRecord =
                                                                pageViewVideodataRecordList[
                                                                    pageViewIndex];
                                                            return Container(
                                                              width: double
                                                                  .infinity,
                                                              height: 220,
                                                              child: Stack(
                                                                children: [
                                                                  InkWell(
                                                                    onTap:
                                                                        () async {
                                                                      await Navigator
                                                                          .push(
                                                                        context,
                                                                        MaterialPageRoute(
                                                                          builder: (context) =>
                                                                              InfoPageWidget(
                                                                            infodocument:
                                                                                pageViewVideodataRecord,
                                                                            epno:
                                                                                1,
                                                                            epmin:
                                                                                pageViewVideodataRecord.minutes,
                                                                          ),
                                                                        ),
                                                                      );
                                                                      await Future.delayed(const Duration(
                                                                          milliseconds:
                                                                              2000));
                                                                    },
                                                                    child: Image
                                                                        .network(
                                                                      pageViewVideodataRecord
                                                                          .imageurl!,
                                                                      width: double
                                                                          .infinity,
                                                                      height:
                                                                          220,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.02,
                                                                            0.77),
                                                                    child: Text(
                                                                      pageViewVideodataRecord
                                                                          .name!,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBtnText,
                                                                            fontSize:
                                                                                18,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            );
                                                          },
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0, 1),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        5),
                                                            child:
                                                                SmoothPageIndicator(
                                                              controller: pageViewController1 ??=
                                                                  PageController(
                                                                      initialPage: min(
                                                                          0,
                                                                          pageViewVideodataRecordList.length -
                                                                              1)),
                                                              count:
                                                                  pageViewVideodataRecordList
                                                                      .length,
                                                              axisDirection: Axis
                                                                  .horizontal,
                                                              onDotClicked:
                                                                  (i) {
                                                                pageViewController1!
                                                                    .animateToPage(
                                                                  i,
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          500),
                                                                  curve: Curves
                                                                      .ease,
                                                                );
                                                              },
                                                              effect:
                                                                  SlideEffect(
                                                                spacing: 5,
                                                                radius: 10,
                                                                dotWidth: 10,
                                                                dotHeight: 10,
                                                                dotColor: Color(
                                                                    0xFF9E9E9E),
                                                                activeDotColor:
                                                                    Color(
                                                                        0xFF3F51B5),
                                                                paintStyle:
                                                                    PaintingStyle
                                                                        .fill,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                },
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0,
                                                                      10,
                                                                      0,
                                                                      10),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .stretch,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              15,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            'Latest ',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                  fontSize: 15,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              15,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            '>',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                  fontSize: 18,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Container(
                                                                      width:
                                                                          390,
                                                                      height:
                                                                          100,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: Color(
                                                                            0xDF000000),
                                                                      ),
                                                                      child: StreamBuilder<
                                                                          List<
                                                                              VideodataRecord>>(
                                                                        stream:
                                                                            queryVideodataRecord(
                                                                          queryBuilder: (videodataRecord) => videodataRecord.orderBy(
                                                                              'moviedate',
                                                                              descending: true),
                                                                        ),
                                                                        builder:
                                                                            (context,
                                                                                snapshot) {
                                                                          // Customize what your widget looks like when it's loading.
                                                                          if (!snapshot
                                                                              .hasData) {
                                                                            return Center(
                                                                              child: SizedBox(
                                                                                width: 50,
                                                                                height: 50,
                                                                                child: CircularProgressIndicator(
                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                ),
                                                                              ),
                                                                            );
                                                                          }
                                                                          List<VideodataRecord>
                                                                              listViewVideodataRecordList =
                                                                              snapshot.data!;
                                                                          return ListView
                                                                              .builder(
                                                                            padding:
                                                                                EdgeInsets.zero,
                                                                            scrollDirection:
                                                                                Axis.horizontal,
                                                                            itemCount:
                                                                                listViewVideodataRecordList.length,
                                                                            itemBuilder:
                                                                                (context, listViewIndex) {
                                                                              final listViewVideodataRecord = listViewVideodataRecordList[listViewIndex];
                                                                              return Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(7, 0, 7, 0),
                                                                                child: InkWell(
                                                                                  onTap: () async {
                                                                                    await Navigator.push(
                                                                                      context,
                                                                                      MaterialPageRoute(
                                                                                        builder: (context) => InfoPageWidget(
                                                                                          infodocument: listViewVideodataRecord,
                                                                                          epno: 1,
                                                                                          epmin: listViewVideodataRecord.minutes,
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                    await Future.delayed(const Duration(milliseconds: 2000));
                                                                                  },
                                                                                  child: Material(
                                                                                    color: Colors.transparent,
                                                                                    elevation: 10,
                                                                                    child: Container(
                                                                                      width: 130,
                                                                                      height: 130,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      ),
                                                                                      child: Stack(
                                                                                        children: [
                                                                                          Image.network(
                                                                                            listViewVideodataRecord.imageurl!,
                                                                                            width: 130,
                                                                                            height: 100,
                                                                                            fit: BoxFit.cover,
                                                                                          ),
                                                                                          Align(
                                                                                            alignment: AlignmentDirectional(0, 0.94),
                                                                                            child: Text(
                                                                                              listViewVideodataRecord.name!,
                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                    fontFamily: 'Poppins',
                                                                                                    color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                    fontSize: 16,
                                                                                                    fontWeight: FontWeight.bold,
                                                                                                  ),
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
                                                                        },
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0,
                                                                      10,
                                                                      0,
                                                                      10),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .stretch,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              15,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            'Comedy',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                  fontSize: 15,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              15,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            '>',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                  fontSize: 18,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              8,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            362,
                                                                        height:
                                                                            100,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xDF000000),
                                                                        ),
                                                                        child: StreamBuilder<
                                                                            List<VideodataRecord>>(
                                                                          stream:
                                                                              queryVideodataRecord(
                                                                            queryBuilder: (videodataRecord) =>
                                                                                videodataRecord.where('subcategory', isEqualTo: 'Comedy').orderBy('imdbrating', descending: true),
                                                                          ),
                                                                          builder:
                                                                              (context, snapshot) {
                                                                            // Customize what your widget looks like when it's loading.
                                                                            if (!snapshot.hasData) {
                                                                              return Center(
                                                                                child: SizedBox(
                                                                                  width: 50,
                                                                                  height: 50,
                                                                                  child: CircularProgressIndicator(
                                                                                    color: FlutterFlowTheme.of(context).primaryColor,
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            }
                                                                            List<VideodataRecord>
                                                                                listViewVideodataRecordList =
                                                                                snapshot.data!;
                                                                            return ListView.builder(
                                                                              padding: EdgeInsets.zero,
                                                                              scrollDirection: Axis.horizontal,
                                                                              itemCount: listViewVideodataRecordList.length,
                                                                              itemBuilder: (context, listViewIndex) {
                                                                                final listViewVideodataRecord = listViewVideodataRecordList[listViewIndex];
                                                                                return Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(7, 0, 7, 0),
                                                                                  child: InkWell(
                                                                                    onTap: () async {
                                                                                      await Navigator.push(
                                                                                        context,
                                                                                        MaterialPageRoute(
                                                                                          builder: (context) => InfoPageWidget(
                                                                                            infodocument: listViewVideodataRecord,
                                                                                            epno: 1,
                                                                                            epmin: listViewVideodataRecord.minutes,
                                                                                          ),
                                                                                        ),
                                                                                      );
                                                                                      await Future.delayed(const Duration(milliseconds: 2000));
                                                                                    },
                                                                                    child: Material(
                                                                                      color: Colors.transparent,
                                                                                      elevation: 10,
                                                                                      child: Container(
                                                                                        width: 130,
                                                                                        height: 130,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        ),
                                                                                        child: Stack(
                                                                                          children: [
                                                                                            Image.network(
                                                                                              listViewVideodataRecord.imageurl!,
                                                                                              width: 130,
                                                                                              height: 100,
                                                                                              fit: BoxFit.cover,
                                                                                            ),
                                                                                            Align(
                                                                                              alignment: AlignmentDirectional(0, 0.94),
                                                                                              child: Text(
                                                                                                listViewVideodataRecord.name!,
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: 'Poppins',
                                                                                                      color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                      fontSize: 16,
                                                                                                      fontWeight: FontWeight.bold,
                                                                                                    ),
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
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0,
                                                                      10,
                                                                      0,
                                                                      10),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .stretch,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              15,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            'Action',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                  fontSize: 15,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              15,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            '>',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                  fontSize: 18,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              8,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            362,
                                                                        height:
                                                                            100,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xDF000000),
                                                                        ),
                                                                        child: StreamBuilder<
                                                                            List<VideodataRecord>>(
                                                                          stream:
                                                                              queryVideodataRecord(
                                                                            queryBuilder: (videodataRecord) =>
                                                                                videodataRecord.where('subcategory', isEqualTo: 'Action').orderBy('imdbrating', descending: true),
                                                                          ),
                                                                          builder:
                                                                              (context, snapshot) {
                                                                            // Customize what your widget looks like when it's loading.
                                                                            if (!snapshot.hasData) {
                                                                              return Center(
                                                                                child: SizedBox(
                                                                                  width: 50,
                                                                                  height: 50,
                                                                                  child: CircularProgressIndicator(
                                                                                    color: FlutterFlowTheme.of(context).primaryColor,
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            }
                                                                            List<VideodataRecord>
                                                                                listViewVideodataRecordList =
                                                                                snapshot.data!;
                                                                            return ListView.builder(
                                                                              padding: EdgeInsets.zero,
                                                                              scrollDirection: Axis.horizontal,
                                                                              itemCount: listViewVideodataRecordList.length,
                                                                              itemBuilder: (context, listViewIndex) {
                                                                                final listViewVideodataRecord = listViewVideodataRecordList[listViewIndex];
                                                                                return Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(7, 0, 7, 0),
                                                                                  child: InkWell(
                                                                                    onTap: () async {
                                                                                      await Navigator.push(
                                                                                        context,
                                                                                        MaterialPageRoute(
                                                                                          builder: (context) => InfoPageWidget(
                                                                                            infodocument: listViewVideodataRecord,
                                                                                            epno: 1,
                                                                                            epmin: listViewVideodataRecord.minutes,
                                                                                          ),
                                                                                        ),
                                                                                      );
                                                                                      await Future.delayed(const Duration(milliseconds: 2000));
                                                                                    },
                                                                                    child: Material(
                                                                                      color: Colors.transparent,
                                                                                      elevation: 10,
                                                                                      child: Container(
                                                                                        width: 130,
                                                                                        height: 130,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        ),
                                                                                        child: Stack(
                                                                                          children: [
                                                                                            Image.network(
                                                                                              listViewVideodataRecord.imageurl!,
                                                                                              width: 130,
                                                                                              height: 100,
                                                                                              fit: BoxFit.cover,
                                                                                            ),
                                                                                            Align(
                                                                                              alignment: AlignmentDirectional(0, 0.94),
                                                                                              child: Text(
                                                                                                listViewVideodataRecord.name!,
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: 'Poppins',
                                                                                                      color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                      fontSize: 16,
                                                                                                      fontWeight: FontWeight.bold,
                                                                                                    ),
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
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0,
                                                                      10,
                                                                      0,
                                                                      10),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .stretch,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              15,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            'Highly Rated',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                  fontSize: 15,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              15,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            '>',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                  fontSize: 18,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              8,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            362,
                                                                        height:
                                                                            100,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xDF000000),
                                                                        ),
                                                                        child: StreamBuilder<
                                                                            List<VideodataRecord>>(
                                                                          stream:
                                                                              queryVideodataRecord(
                                                                            queryBuilder: (videodataRecord) =>
                                                                                videodataRecord.orderBy('imdbrating', descending: true),
                                                                          ),
                                                                          builder:
                                                                              (context, snapshot) {
                                                                            // Customize what your widget looks like when it's loading.
                                                                            if (!snapshot.hasData) {
                                                                              return Center(
                                                                                child: SizedBox(
                                                                                  width: 50,
                                                                                  height: 50,
                                                                                  child: CircularProgressIndicator(
                                                                                    color: FlutterFlowTheme.of(context).primaryColor,
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            }
                                                                            List<VideodataRecord>
                                                                                listViewVideodataRecordList =
                                                                                snapshot.data!;
                                                                            return ListView.builder(
                                                                              padding: EdgeInsets.zero,
                                                                              scrollDirection: Axis.horizontal,
                                                                              itemCount: listViewVideodataRecordList.length,
                                                                              itemBuilder: (context, listViewIndex) {
                                                                                final listViewVideodataRecord = listViewVideodataRecordList[listViewIndex];
                                                                                return Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(7, 0, 7, 0),
                                                                                  child: InkWell(
                                                                                    onTap: () async {
                                                                                      await Navigator.push(
                                                                                        context,
                                                                                        MaterialPageRoute(
                                                                                          builder: (context) => InfoPageWidget(
                                                                                            infodocument: listViewVideodataRecord,
                                                                                            epno: 1,
                                                                                            epmin: listViewVideodataRecord.minutes,
                                                                                          ),
                                                                                        ),
                                                                                      );
                                                                                      await Future.delayed(const Duration(milliseconds: 2000));
                                                                                    },
                                                                                    child: Material(
                                                                                      color: Colors.transparent,
                                                                                      elevation: 10,
                                                                                      child: Container(
                                                                                        width: 130,
                                                                                        height: 130,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        ),
                                                                                        child: Stack(
                                                                                          children: [
                                                                                            Image.network(
                                                                                              listViewVideodataRecord.imageurl!,
                                                                                              width: 130,
                                                                                              height: 100,
                                                                                              fit: BoxFit.cover,
                                                                                            ),
                                                                                            Align(
                                                                                              alignment: AlignmentDirectional(0, 0.94),
                                                                                              child: Text(
                                                                                                listViewVideodataRecord.name!,
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: 'Poppins',
                                                                                                      color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                      fontSize: 16,
                                                                                                      fontWeight: FontWeight.bold,
                                                                                                    ),
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
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0,
                                                                      10,
                                                                      0,
                                                                      10),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .stretch,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              15,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            'Watch In Hindi',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                  fontSize: 15,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              15,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            '>',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                  fontSize: 18,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              8,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            362,
                                                                        height:
                                                                            100,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xDF000000),
                                                                        ),
                                                                        child: StreamBuilder<
                                                                            List<VideodataRecord>>(
                                                                          stream:
                                                                              queryVideodataRecord(
                                                                            queryBuilder: (videodataRecord) =>
                                                                                videodataRecord.where('languages', arrayContains: FFAppState().hinditag),
                                                                          ),
                                                                          builder:
                                                                              (context, snapshot) {
                                                                            // Customize what your widget looks like when it's loading.
                                                                            if (!snapshot.hasData) {
                                                                              return Center(
                                                                                child: SizedBox(
                                                                                  width: 50,
                                                                                  height: 50,
                                                                                  child: CircularProgressIndicator(
                                                                                    color: FlutterFlowTheme.of(context).primaryColor,
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            }
                                                                            List<VideodataRecord>
                                                                                listViewVideodataRecordList =
                                                                                snapshot.data!;
                                                                            return ListView.builder(
                                                                              padding: EdgeInsets.zero,
                                                                              scrollDirection: Axis.horizontal,
                                                                              itemCount: listViewVideodataRecordList.length,
                                                                              itemBuilder: (context, listViewIndex) {
                                                                                final listViewVideodataRecord = listViewVideodataRecordList[listViewIndex];
                                                                                return Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(7, 0, 7, 0),
                                                                                  child: InkWell(
                                                                                    onTap: () async {
                                                                                      await Navigator.push(
                                                                                        context,
                                                                                        MaterialPageRoute(
                                                                                          builder: (context) => InfoPageWidget(
                                                                                            infodocument: listViewVideodataRecord,
                                                                                            epno: 1,
                                                                                            epmin: listViewVideodataRecord.minutes,
                                                                                          ),
                                                                                        ),
                                                                                      );
                                                                                      await Future.delayed(const Duration(milliseconds: 2000));
                                                                                    },
                                                                                    child: Material(
                                                                                      color: Colors.transparent,
                                                                                      elevation: 10,
                                                                                      child: Container(
                                                                                        width: 130,
                                                                                        height: 130,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        ),
                                                                                        child: Stack(
                                                                                          children: [
                                                                                            Image.network(
                                                                                              listViewVideodataRecord.imageurl!,
                                                                                              width: 130,
                                                                                              height: 100,
                                                                                              fit: BoxFit.cover,
                                                                                            ),
                                                                                            Align(
                                                                                              alignment: AlignmentDirectional(0, 0.94),
                                                                                              child: Text(
                                                                                                listViewVideodataRecord.name!,
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: 'Poppins',
                                                                                                      color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                      fontSize: 16,
                                                                                                      fontWeight: FontWeight.bold,
                                                                                                    ),
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
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0,
                                                                      10,
                                                                      0,
                                                                      10),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .stretch,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              15,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            'Scifi',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                  fontSize: 15,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              15,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            '>',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                  fontSize: 18,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              8,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            362,
                                                                        height:
                                                                            100,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xDF000000),
                                                                        ),
                                                                        child: StreamBuilder<
                                                                            List<VideodataRecord>>(
                                                                          stream:
                                                                              queryVideodataRecord(
                                                                            queryBuilder: (videodataRecord) =>
                                                                                videodataRecord.where('subcategory', isEqualTo: 'Scifi'),
                                                                          ),
                                                                          builder:
                                                                              (context, snapshot) {
                                                                            // Customize what your widget looks like when it's loading.
                                                                            if (!snapshot.hasData) {
                                                                              return Center(
                                                                                child: SizedBox(
                                                                                  width: 50,
                                                                                  height: 50,
                                                                                  child: CircularProgressIndicator(
                                                                                    color: FlutterFlowTheme.of(context).primaryColor,
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            }
                                                                            List<VideodataRecord>
                                                                                listViewVideodataRecordList =
                                                                                snapshot.data!;
                                                                            return ListView.builder(
                                                                              padding: EdgeInsets.zero,
                                                                              scrollDirection: Axis.horizontal,
                                                                              itemCount: listViewVideodataRecordList.length,
                                                                              itemBuilder: (context, listViewIndex) {
                                                                                final listViewVideodataRecord = listViewVideodataRecordList[listViewIndex];
                                                                                return Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(7, 0, 7, 0),
                                                                                  child: InkWell(
                                                                                    onTap: () async {
                                                                                      await Navigator.push(
                                                                                        context,
                                                                                        MaterialPageRoute(
                                                                                          builder: (context) => InfoPageWidget(
                                                                                            infodocument: listViewVideodataRecord,
                                                                                            epno: 1,
                                                                                            epmin: listViewVideodataRecord.minutes,
                                                                                          ),
                                                                                        ),
                                                                                      );
                                                                                      await Future.delayed(const Duration(milliseconds: 2000));
                                                                                    },
                                                                                    child: Material(
                                                                                      color: Colors.transparent,
                                                                                      elevation: 10,
                                                                                      child: Container(
                                                                                        width: 130,
                                                                                        height: 130,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        ),
                                                                                        child: Stack(
                                                                                          children: [
                                                                                            Image.network(
                                                                                              listViewVideodataRecord.imageurl!,
                                                                                              width: 130,
                                                                                              height: 100,
                                                                                              fit: BoxFit.cover,
                                                                                            ),
                                                                                            Align(
                                                                                              alignment: AlignmentDirectional(0, 0.94),
                                                                                              child: Text(
                                                                                                listViewVideodataRecord.name!,
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: 'Poppins',
                                                                                                      color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                      fontSize: 16,
                                                                                                      fontWeight: FontWeight.bold,
                                                                                                    ),
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
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0,
                                                                      10,
                                                                      0,
                                                                      10),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .stretch,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              15,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            'Watch In English',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                  fontSize: 15,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              15,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            '>',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                  fontSize: 18,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              8,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            362,
                                                                        height:
                                                                            100,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xDF000000),
                                                                        ),
                                                                        child: StreamBuilder<
                                                                            List<VideodataRecord>>(
                                                                          stream:
                                                                              queryVideodataRecord(
                                                                            queryBuilder: (videodataRecord) =>
                                                                                videodataRecord.where('languages', arrayContains: FFAppState().hinditag),
                                                                          ),
                                                                          builder:
                                                                              (context, snapshot) {
                                                                            // Customize what your widget looks like when it's loading.
                                                                            if (!snapshot.hasData) {
                                                                              return Center(
                                                                                child: SizedBox(
                                                                                  width: 50,
                                                                                  height: 50,
                                                                                  child: CircularProgressIndicator(
                                                                                    color: FlutterFlowTheme.of(context).primaryColor,
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            }
                                                                            List<VideodataRecord>
                                                                                listViewVideodataRecordList =
                                                                                snapshot.data!;
                                                                            return ListView.builder(
                                                                              padding: EdgeInsets.zero,
                                                                              scrollDirection: Axis.horizontal,
                                                                              itemCount: listViewVideodataRecordList.length,
                                                                              itemBuilder: (context, listViewIndex) {
                                                                                final listViewVideodataRecord = listViewVideodataRecordList[listViewIndex];
                                                                                return Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(7, 0, 7, 0),
                                                                                  child: InkWell(
                                                                                    onTap: () async {
                                                                                      await Navigator.push(
                                                                                        context,
                                                                                        MaterialPageRoute(
                                                                                          builder: (context) => InfoPageWidget(
                                                                                            infodocument: listViewVideodataRecord,
                                                                                            epno: 1,
                                                                                            epmin: listViewVideodataRecord.minutes,
                                                                                          ),
                                                                                        ),
                                                                                      );
                                                                                      await Future.delayed(const Duration(milliseconds: 2000));
                                                                                    },
                                                                                    child: Material(
                                                                                      color: Colors.transparent,
                                                                                      elevation: 10,
                                                                                      child: Container(
                                                                                        width: 130,
                                                                                        height: 130,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        ),
                                                                                        child: Stack(
                                                                                          children: [
                                                                                            Image.network(
                                                                                              listViewVideodataRecord.imageurl!,
                                                                                              width: 130,
                                                                                              height: 100,
                                                                                              fit: BoxFit.cover,
                                                                                            ),
                                                                                            Align(
                                                                                              alignment: AlignmentDirectional(0, 0.94),
                                                                                              child: Text(
                                                                                                listViewVideodataRecord.name!,
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: 'Poppins',
                                                                                                      color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                      fontSize: 16,
                                                                                                      fontWeight: FontWeight.bold,
                                                                                                    ),
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
                                                                          },
                                                                        ),
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
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              StreamBuilder<
                                                  List<VideodataRecord>>(
                                                stream: queryVideodataRecord(
                                                  queryBuilder:
                                                      (videodataRecord) =>
                                                          videodataRecord
                                                              .where(
                                                                  'category',
                                                                  isEqualTo:
                                                                      'Movies')
                                                              .orderBy(
                                                                  'moviedate',
                                                                  descending:
                                                                      true),
                                                  limit: 8,
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50,
                                                        height: 50,
                                                        child:
                                                            CircularProgressIndicator(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<VideodataRecord>
                                                      pageViewVideodataRecordList =
                                                      snapshot.data!;
                                                  return Container(
                                                    width: double.infinity,
                                                    height: 220,
                                                    child: Stack(
                                                      children: [
                                                        PageView.builder(
                                                          controller: pageViewController2 ??=
                                                              PageController(
                                                                  initialPage: min(
                                                                      0,
                                                                      pageViewVideodataRecordList
                                                                              .length -
                                                                          1)),
                                                          scrollDirection:
                                                              Axis.horizontal,
                                                          itemCount:
                                                              pageViewVideodataRecordList
                                                                  .length,
                                                          itemBuilder: (context,
                                                              pageViewIndex) {
                                                            final pageViewVideodataRecord =
                                                                pageViewVideodataRecordList[
                                                                    pageViewIndex];
                                                            return Container(
                                                              width: double
                                                                  .infinity,
                                                              height: 220,
                                                              child: Stack(
                                                                children: [
                                                                  InkWell(
                                                                    onTap:
                                                                        () async {
                                                                      await Navigator
                                                                          .push(
                                                                        context,
                                                                        MaterialPageRoute(
                                                                          builder: (context) =>
                                                                              InfoPageWidget(
                                                                            infodocument:
                                                                                pageViewVideodataRecord,
                                                                            epno:
                                                                                1,
                                                                            epmin:
                                                                                pageViewVideodataRecord.minutes,
                                                                          ),
                                                                        ),
                                                                      );
                                                                      await Future.delayed(const Duration(
                                                                          milliseconds:
                                                                              2000));
                                                                    },
                                                                    child: Image
                                                                        .network(
                                                                      pageViewVideodataRecord
                                                                          .imageurl!,
                                                                      width: double
                                                                          .infinity,
                                                                      height:
                                                                          220,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.02,
                                                                            0.77),
                                                                    child: Text(
                                                                      pageViewVideodataRecord
                                                                          .name!,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBtnText,
                                                                            fontSize:
                                                                                18,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            );
                                                          },
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0, 1),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        5),
                                                            child:
                                                                SmoothPageIndicator(
                                                              controller: pageViewController2 ??=
                                                                  PageController(
                                                                      initialPage: min(
                                                                          0,
                                                                          pageViewVideodataRecordList.length -
                                                                              1)),
                                                              count:
                                                                  pageViewVideodataRecordList
                                                                      .length,
                                                              axisDirection: Axis
                                                                  .horizontal,
                                                              onDotClicked:
                                                                  (i) {
                                                                pageViewController2!
                                                                    .animateToPage(
                                                                  i,
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          500),
                                                                  curve: Curves
                                                                      .ease,
                                                                );
                                                              },
                                                              effect:
                                                                  SlideEffect(
                                                                spacing: 5,
                                                                radius: 10,
                                                                dotWidth: 10,
                                                                dotHeight: 10,
                                                                dotColor: Color(
                                                                    0xFF9E9E9E),
                                                                activeDotColor:
                                                                    Color(
                                                                        0xFF3F51B5),
                                                                paintStyle:
                                                                    PaintingStyle
                                                                        .fill,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                },
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0,
                                                                      10,
                                                                      0,
                                                                      10),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .stretch,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              15,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            'Latest Movies',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                  fontSize: 15,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              15,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            '>',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                  fontSize: 18,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Container(
                                                                      width:
                                                                          390,
                                                                      height:
                                                                          100,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: Color(
                                                                            0xDF000000),
                                                                      ),
                                                                      child: StreamBuilder<
                                                                          List<
                                                                              VideodataRecord>>(
                                                                        stream:
                                                                            queryVideodataRecord(
                                                                          queryBuilder: (videodataRecord) => videodataRecord.where('category', isEqualTo: 'Movies').orderBy(
                                                                              'moviedate',
                                                                              descending: true),
                                                                        ),
                                                                        builder:
                                                                            (context,
                                                                                snapshot) {
                                                                          // Customize what your widget looks like when it's loading.
                                                                          if (!snapshot
                                                                              .hasData) {
                                                                            return Center(
                                                                              child: SizedBox(
                                                                                width: 50,
                                                                                height: 50,
                                                                                child: CircularProgressIndicator(
                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                ),
                                                                              ),
                                                                            );
                                                                          }
                                                                          List<VideodataRecord>
                                                                              listViewVideodataRecordList =
                                                                              snapshot.data!;
                                                                          return ListView
                                                                              .builder(
                                                                            padding:
                                                                                EdgeInsets.zero,
                                                                            scrollDirection:
                                                                                Axis.horizontal,
                                                                            itemCount:
                                                                                listViewVideodataRecordList.length,
                                                                            itemBuilder:
                                                                                (context, listViewIndex) {
                                                                              final listViewVideodataRecord = listViewVideodataRecordList[listViewIndex];
                                                                              return Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(7, 0, 7, 0),
                                                                                child: InkWell(
                                                                                  onTap: () async {
                                                                                    await Navigator.push(
                                                                                      context,
                                                                                      MaterialPageRoute(
                                                                                        builder: (context) => InfoPageWidget(
                                                                                          infodocument: listViewVideodataRecord,
                                                                                          epno: 1,
                                                                                          epmin: listViewVideodataRecord.minutes,
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                    await Future.delayed(const Duration(milliseconds: 2000));
                                                                                  },
                                                                                  child: Material(
                                                                                    color: Colors.transparent,
                                                                                    elevation: 10,
                                                                                    child: Container(
                                                                                      width: 130,
                                                                                      height: 130,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      ),
                                                                                      child: Stack(
                                                                                        children: [
                                                                                          Image.network(
                                                                                            listViewVideodataRecord.imageurl!,
                                                                                            width: 130,
                                                                                            height: 100,
                                                                                            fit: BoxFit.cover,
                                                                                          ),
                                                                                          Align(
                                                                                            alignment: AlignmentDirectional(0, 0.94),
                                                                                            child: Text(
                                                                                              listViewVideodataRecord.name!,
                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                    fontFamily: 'Poppins',
                                                                                                    color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                    fontSize: 16,
                                                                                                    fontWeight: FontWeight.bold,
                                                                                                  ),
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
                                                                        },
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0,
                                                                      10,
                                                                      0,
                                                                      10),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .stretch,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              15,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            'Comedy',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                  fontSize: 15,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              15,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            '>',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                  fontSize: 18,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              8,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            362,
                                                                        height:
                                                                            100,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xDF000000),
                                                                        ),
                                                                        child: StreamBuilder<
                                                                            List<VideodataRecord>>(
                                                                          stream:
                                                                              queryVideodataRecord(
                                                                            queryBuilder: (videodataRecord) =>
                                                                                videodataRecord.where('category', isEqualTo: 'Movies').where('subcategory', isEqualTo: 'Comedy').orderBy('imdbrating', descending: true),
                                                                          ),
                                                                          builder:
                                                                              (context, snapshot) {
                                                                            // Customize what your widget looks like when it's loading.
                                                                            if (!snapshot.hasData) {
                                                                              return Center(
                                                                                child: SizedBox(
                                                                                  width: 50,
                                                                                  height: 50,
                                                                                  child: CircularProgressIndicator(
                                                                                    color: FlutterFlowTheme.of(context).primaryColor,
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            }
                                                                            List<VideodataRecord>
                                                                                listViewVideodataRecordList =
                                                                                snapshot.data!;
                                                                            return ListView.builder(
                                                                              padding: EdgeInsets.zero,
                                                                              scrollDirection: Axis.horizontal,
                                                                              itemCount: listViewVideodataRecordList.length,
                                                                              itemBuilder: (context, listViewIndex) {
                                                                                final listViewVideodataRecord = listViewVideodataRecordList[listViewIndex];
                                                                                return Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(7, 0, 7, 0),
                                                                                  child: InkWell(
                                                                                    onTap: () async {
                                                                                      await Navigator.push(
                                                                                        context,
                                                                                        MaterialPageRoute(
                                                                                          builder: (context) => InfoPageWidget(
                                                                                            infodocument: listViewVideodataRecord,
                                                                                            epno: 1,
                                                                                            epmin: listViewVideodataRecord.minutes,
                                                                                          ),
                                                                                        ),
                                                                                      );
                                                                                      await Future.delayed(const Duration(milliseconds: 2000));
                                                                                    },
                                                                                    child: Material(
                                                                                      color: Colors.transparent,
                                                                                      elevation: 10,
                                                                                      child: Container(
                                                                                        width: 130,
                                                                                        height: 130,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        ),
                                                                                        child: Stack(
                                                                                          children: [
                                                                                            Image.network(
                                                                                              listViewVideodataRecord.imageurl!,
                                                                                              width: 130,
                                                                                              height: 100,
                                                                                              fit: BoxFit.cover,
                                                                                            ),
                                                                                            Align(
                                                                                              alignment: AlignmentDirectional(0, 0.94),
                                                                                              child: Text(
                                                                                                listViewVideodataRecord.name!,
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: 'Poppins',
                                                                                                      color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                      fontSize: 16,
                                                                                                      fontWeight: FontWeight.bold,
                                                                                                    ),
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
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0,
                                                                      10,
                                                                      0,
                                                                      10),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .stretch,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              15,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            'Action',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                  fontSize: 15,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              15,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            '>',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                  fontSize: 18,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              8,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            362,
                                                                        height:
                                                                            100,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xDF000000),
                                                                        ),
                                                                        child: StreamBuilder<
                                                                            List<VideodataRecord>>(
                                                                          stream:
                                                                              queryVideodataRecord(
                                                                            queryBuilder: (videodataRecord) =>
                                                                                videodataRecord.where('category', isEqualTo: 'Movies').where('subcategory', isEqualTo: 'Action').orderBy('imdbrating', descending: true),
                                                                          ),
                                                                          builder:
                                                                              (context, snapshot) {
                                                                            // Customize what your widget looks like when it's loading.
                                                                            if (!snapshot.hasData) {
                                                                              return Center(
                                                                                child: SizedBox(
                                                                                  width: 50,
                                                                                  height: 50,
                                                                                  child: CircularProgressIndicator(
                                                                                    color: FlutterFlowTheme.of(context).primaryColor,
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            }
                                                                            List<VideodataRecord>
                                                                                listViewVideodataRecordList =
                                                                                snapshot.data!;
                                                                            return ListView.builder(
                                                                              padding: EdgeInsets.zero,
                                                                              scrollDirection: Axis.horizontal,
                                                                              itemCount: listViewVideodataRecordList.length,
                                                                              itemBuilder: (context, listViewIndex) {
                                                                                final listViewVideodataRecord = listViewVideodataRecordList[listViewIndex];
                                                                                return Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(7, 0, 7, 0),
                                                                                  child: InkWell(
                                                                                    onTap: () async {
                                                                                      await Navigator.push(
                                                                                        context,
                                                                                        MaterialPageRoute(
                                                                                          builder: (context) => InfoPageWidget(
                                                                                            infodocument: listViewVideodataRecord,
                                                                                            epno: 1,
                                                                                            epmin: listViewVideodataRecord.minutes,
                                                                                          ),
                                                                                        ),
                                                                                      );
                                                                                      await Future.delayed(const Duration(milliseconds: 2000));
                                                                                    },
                                                                                    child: Material(
                                                                                      color: Colors.transparent,
                                                                                      elevation: 10,
                                                                                      child: Container(
                                                                                        width: 130,
                                                                                        height: 130,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        ),
                                                                                        child: Stack(
                                                                                          children: [
                                                                                            Image.network(
                                                                                              listViewVideodataRecord.imageurl!,
                                                                                              width: 130,
                                                                                              height: 100,
                                                                                              fit: BoxFit.cover,
                                                                                            ),
                                                                                            Align(
                                                                                              alignment: AlignmentDirectional(0, 0.94),
                                                                                              child: Text(
                                                                                                listViewVideodataRecord.name!,
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: 'Poppins',
                                                                                                      color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                      fontSize: 16,
                                                                                                      fontWeight: FontWeight.bold,
                                                                                                    ),
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
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0,
                                                                      10,
                                                                      0,
                                                                      10),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .stretch,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              15,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            'Highly Rated',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                  fontSize: 15,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              15,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            '>',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                  fontSize: 18,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              8,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            362,
                                                                        height:
                                                                            100,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xDF000000),
                                                                        ),
                                                                        child: StreamBuilder<
                                                                            List<VideodataRecord>>(
                                                                          stream:
                                                                              queryVideodataRecord(
                                                                            queryBuilder: (videodataRecord) =>
                                                                                videodataRecord.where('category', isEqualTo: 'Movies').orderBy('imdbrating', descending: true),
                                                                          ),
                                                                          builder:
                                                                              (context, snapshot) {
                                                                            // Customize what your widget looks like when it's loading.
                                                                            if (!snapshot.hasData) {
                                                                              return Center(
                                                                                child: SizedBox(
                                                                                  width: 50,
                                                                                  height: 50,
                                                                                  child: CircularProgressIndicator(
                                                                                    color: FlutterFlowTheme.of(context).primaryColor,
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            }
                                                                            List<VideodataRecord>
                                                                                listViewVideodataRecordList =
                                                                                snapshot.data!;
                                                                            return ListView.builder(
                                                                              padding: EdgeInsets.zero,
                                                                              scrollDirection: Axis.horizontal,
                                                                              itemCount: listViewVideodataRecordList.length,
                                                                              itemBuilder: (context, listViewIndex) {
                                                                                final listViewVideodataRecord = listViewVideodataRecordList[listViewIndex];
                                                                                return Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(7, 0, 7, 0),
                                                                                  child: InkWell(
                                                                                    onTap: () async {
                                                                                      await Navigator.push(
                                                                                        context,
                                                                                        MaterialPageRoute(
                                                                                          builder: (context) => InfoPageWidget(
                                                                                            infodocument: listViewVideodataRecord,
                                                                                            epno: 1,
                                                                                            epmin: listViewVideodataRecord.minutes,
                                                                                          ),
                                                                                        ),
                                                                                      );
                                                                                      await Future.delayed(const Duration(milliseconds: 2000));
                                                                                    },
                                                                                    child: Material(
                                                                                      color: Colors.transparent,
                                                                                      elevation: 10,
                                                                                      child: Container(
                                                                                        width: 130,
                                                                                        height: 130,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        ),
                                                                                        child: Stack(
                                                                                          children: [
                                                                                            Image.network(
                                                                                              listViewVideodataRecord.imageurl!,
                                                                                              width: 130,
                                                                                              height: 100,
                                                                                              fit: BoxFit.cover,
                                                                                            ),
                                                                                            Align(
                                                                                              alignment: AlignmentDirectional(0, 0.94),
                                                                                              child: Text(
                                                                                                listViewVideodataRecord.name!,
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: 'Poppins',
                                                                                                      color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                      fontSize: 16,
                                                                                                      fontWeight: FontWeight.bold,
                                                                                                    ),
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
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0,
                                                                      10,
                                                                      0,
                                                                      10),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .stretch,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              15,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            'Watch In Hindi',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                  fontSize: 15,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              15,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            '>',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                  fontSize: 18,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              8,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            362,
                                                                        height:
                                                                            100,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xDF000000),
                                                                        ),
                                                                        child: StreamBuilder<
                                                                            List<VideodataRecord>>(
                                                                          stream:
                                                                              queryVideodataRecord(
                                                                            queryBuilder: (videodataRecord) =>
                                                                                videodataRecord.where('category', isEqualTo: 'Movies').where('languages', arrayContains: FFAppState().hinditag),
                                                                          ),
                                                                          builder:
                                                                              (context, snapshot) {
                                                                            // Customize what your widget looks like when it's loading.
                                                                            if (!snapshot.hasData) {
                                                                              return Center(
                                                                                child: SizedBox(
                                                                                  width: 50,
                                                                                  height: 50,
                                                                                  child: CircularProgressIndicator(
                                                                                    color: FlutterFlowTheme.of(context).primaryColor,
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            }
                                                                            List<VideodataRecord>
                                                                                listViewVideodataRecordList =
                                                                                snapshot.data!;
                                                                            return ListView.builder(
                                                                              padding: EdgeInsets.zero,
                                                                              scrollDirection: Axis.horizontal,
                                                                              itemCount: listViewVideodataRecordList.length,
                                                                              itemBuilder: (context, listViewIndex) {
                                                                                final listViewVideodataRecord = listViewVideodataRecordList[listViewIndex];
                                                                                return Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(7, 0, 7, 0),
                                                                                  child: InkWell(
                                                                                    onTap: () async {
                                                                                      await Navigator.push(
                                                                                        context,
                                                                                        MaterialPageRoute(
                                                                                          builder: (context) => InfoPageWidget(
                                                                                            infodocument: listViewVideodataRecord,
                                                                                            epno: 1,
                                                                                            epmin: listViewVideodataRecord.minutes,
                                                                                          ),
                                                                                        ),
                                                                                      );
                                                                                      await Future.delayed(const Duration(milliseconds: 2000));
                                                                                    },
                                                                                    child: Material(
                                                                                      color: Colors.transparent,
                                                                                      elevation: 10,
                                                                                      child: Container(
                                                                                        width: 130,
                                                                                        height: 130,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        ),
                                                                                        child: Stack(
                                                                                          children: [
                                                                                            Image.network(
                                                                                              listViewVideodataRecord.imageurl!,
                                                                                              width: 130,
                                                                                              height: 100,
                                                                                              fit: BoxFit.cover,
                                                                                            ),
                                                                                            Align(
                                                                                              alignment: AlignmentDirectional(0, 0.94),
                                                                                              child: Text(
                                                                                                listViewVideodataRecord.name!,
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: 'Poppins',
                                                                                                      color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                      fontSize: 16,
                                                                                                      fontWeight: FontWeight.bold,
                                                                                                    ),
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
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0,
                                                                      10,
                                                                      0,
                                                                      10),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .stretch,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              15,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            'Scifi',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                  fontSize: 15,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              15,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            '>',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                  fontSize: 18,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              8,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            362,
                                                                        height:
                                                                            100,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xDF000000),
                                                                        ),
                                                                        child: StreamBuilder<
                                                                            List<VideodataRecord>>(
                                                                          stream:
                                                                              queryVideodataRecord(
                                                                            queryBuilder: (videodataRecord) =>
                                                                                videodataRecord.where('category', isEqualTo: 'Movies').where('subcategory', isEqualTo: 'Scifi'),
                                                                          ),
                                                                          builder:
                                                                              (context, snapshot) {
                                                                            // Customize what your widget looks like when it's loading.
                                                                            if (!snapshot.hasData) {
                                                                              return Center(
                                                                                child: SizedBox(
                                                                                  width: 50,
                                                                                  height: 50,
                                                                                  child: CircularProgressIndicator(
                                                                                    color: FlutterFlowTheme.of(context).primaryColor,
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            }
                                                                            List<VideodataRecord>
                                                                                listViewVideodataRecordList =
                                                                                snapshot.data!;
                                                                            return ListView.builder(
                                                                              padding: EdgeInsets.zero,
                                                                              scrollDirection: Axis.horizontal,
                                                                              itemCount: listViewVideodataRecordList.length,
                                                                              itemBuilder: (context, listViewIndex) {
                                                                                final listViewVideodataRecord = listViewVideodataRecordList[listViewIndex];
                                                                                return Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(7, 0, 7, 0),
                                                                                  child: InkWell(
                                                                                    onTap: () async {
                                                                                      await Navigator.push(
                                                                                        context,
                                                                                        MaterialPageRoute(
                                                                                          builder: (context) => InfoPageWidget(
                                                                                            infodocument: listViewVideodataRecord,
                                                                                            epno: 1,
                                                                                            epmin: listViewVideodataRecord.minutes,
                                                                                          ),
                                                                                        ),
                                                                                      );
                                                                                      await Future.delayed(const Duration(milliseconds: 2000));
                                                                                    },
                                                                                    child: Material(
                                                                                      color: Colors.transparent,
                                                                                      elevation: 10,
                                                                                      child: Container(
                                                                                        width: 130,
                                                                                        height: 130,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        ),
                                                                                        child: Stack(
                                                                                          children: [
                                                                                            Image.network(
                                                                                              listViewVideodataRecord.imageurl!,
                                                                                              width: 130,
                                                                                              height: 100,
                                                                                              fit: BoxFit.cover,
                                                                                            ),
                                                                                            Align(
                                                                                              alignment: AlignmentDirectional(0, 0.94),
                                                                                              child: Text(
                                                                                                listViewVideodataRecord.name!,
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: 'Poppins',
                                                                                                      color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                      fontSize: 16,
                                                                                                      fontWeight: FontWeight.bold,
                                                                                                    ),
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
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0,
                                                                      10,
                                                                      0,
                                                                      10),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .stretch,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              15,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            'Watch In English',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                  fontSize: 15,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              15,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            '>',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                  fontSize: 18,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              8,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            362,
                                                                        height:
                                                                            100,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xDF000000),
                                                                        ),
                                                                        child: StreamBuilder<
                                                                            List<VideodataRecord>>(
                                                                          stream:
                                                                              queryVideodataRecord(
                                                                            queryBuilder: (videodataRecord) =>
                                                                                videodataRecord.where('category', isEqualTo: 'Movies').where('languages', arrayContains: FFAppState().hinditag),
                                                                          ),
                                                                          builder:
                                                                              (context, snapshot) {
                                                                            // Customize what your widget looks like when it's loading.
                                                                            if (!snapshot.hasData) {
                                                                              return Center(
                                                                                child: SizedBox(
                                                                                  width: 50,
                                                                                  height: 50,
                                                                                  child: CircularProgressIndicator(
                                                                                    color: FlutterFlowTheme.of(context).primaryColor,
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            }
                                                                            List<VideodataRecord>
                                                                                listViewVideodataRecordList =
                                                                                snapshot.data!;
                                                                            return ListView.builder(
                                                                              padding: EdgeInsets.zero,
                                                                              scrollDirection: Axis.horizontal,
                                                                              itemCount: listViewVideodataRecordList.length,
                                                                              itemBuilder: (context, listViewIndex) {
                                                                                final listViewVideodataRecord = listViewVideodataRecordList[listViewIndex];
                                                                                return Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(7, 0, 7, 0),
                                                                                  child: InkWell(
                                                                                    onTap: () async {
                                                                                      await Navigator.push(
                                                                                        context,
                                                                                        MaterialPageRoute(
                                                                                          builder: (context) => InfoPageWidget(
                                                                                            infodocument: listViewVideodataRecord,
                                                                                            epno: 1,
                                                                                            epmin: listViewVideodataRecord.minutes,
                                                                                          ),
                                                                                        ),
                                                                                      );
                                                                                      await Future.delayed(const Duration(milliseconds: 2000));
                                                                                    },
                                                                                    child: Material(
                                                                                      color: Colors.transparent,
                                                                                      elevation: 10,
                                                                                      child: Container(
                                                                                        width: 130,
                                                                                        height: 130,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        ),
                                                                                        child: Stack(
                                                                                          children: [
                                                                                            Image.network(
                                                                                              listViewVideodataRecord.imageurl!,
                                                                                              width: 130,
                                                                                              height: 100,
                                                                                              fit: BoxFit.cover,
                                                                                            ),
                                                                                            Align(
                                                                                              alignment: AlignmentDirectional(0, 0.94),
                                                                                              child: Text(
                                                                                                listViewVideodataRecord.name!,
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: 'Poppins',
                                                                                                      color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                      fontSize: 16,
                                                                                                      fontWeight: FontWeight.bold,
                                                                                                    ),
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
                                                                          },
                                                                        ),
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
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                        SingleChildScrollView(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              StreamBuilder<
                                                  List<VideodataRecord>>(
                                                stream: queryVideodataRecord(
                                                  queryBuilder:
                                                      (videodataRecord) =>
                                                          videodataRecord
                                                              .where('category',
                                                                  isEqualTo:
                                                                      'TV')
                                                              .orderBy(
                                                                  'moviedate',
                                                                  descending:
                                                                      true),
                                                  limit: 8,
                                                ),
                                                builder: (context, snapshot) {
                                                  // Customize what your widget looks like when it's loading.
                                                  if (!snapshot.hasData) {
                                                    return Center(
                                                      child: SizedBox(
                                                        width: 50,
                                                        height: 50,
                                                        child:
                                                            CircularProgressIndicator(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryColor,
                                                        ),
                                                      ),
                                                    );
                                                  }
                                                  List<VideodataRecord>
                                                      pageViewVideodataRecordList =
                                                      snapshot.data!;
                                                  return Container(
                                                    width: double.infinity,
                                                    height: 220,
                                                    child: Stack(
                                                      children: [
                                                        PageView.builder(
                                                          controller: pageViewController3 ??=
                                                              PageController(
                                                                  initialPage: min(
                                                                      0,
                                                                      pageViewVideodataRecordList
                                                                              .length -
                                                                          1)),
                                                          scrollDirection:
                                                              Axis.horizontal,
                                                          itemCount:
                                                              pageViewVideodataRecordList
                                                                  .length,
                                                          itemBuilder: (context,
                                                              pageViewIndex) {
                                                            final pageViewVideodataRecord =
                                                                pageViewVideodataRecordList[
                                                                    pageViewIndex];
                                                            return Container(
                                                              width: double
                                                                  .infinity,
                                                              height: 220,
                                                              child: Stack(
                                                                children: [
                                                                  InkWell(
                                                                    onTap:
                                                                        () async {
                                                                      await Navigator
                                                                          .push(
                                                                        context,
                                                                        MaterialPageRoute(
                                                                          builder: (context) =>
                                                                              InfoPageWidget(
                                                                            infodocument:
                                                                                pageViewVideodataRecord,
                                                                            epno:
                                                                                1,
                                                                            epmin:
                                                                                pageViewVideodataRecord.minutes,
                                                                          ),
                                                                        ),
                                                                      );
                                                                      await Future.delayed(const Duration(
                                                                          milliseconds:
                                                                              2000));
                                                                    },
                                                                    child: Image
                                                                        .network(
                                                                      pageViewVideodataRecord
                                                                          .imageurl!,
                                                                      width: double
                                                                          .infinity,
                                                                      height:
                                                                          220,
                                                                      fit: BoxFit
                                                                          .cover,
                                                                    ),
                                                                  ),
                                                                  Align(
                                                                    alignment:
                                                                        AlignmentDirectional(
                                                                            0.02,
                                                                            0.77),
                                                                    child: Text(
                                                                      pageViewVideodataRecord
                                                                          .name!,
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyText1
                                                                          .override(
                                                                            fontFamily:
                                                                                'Poppins',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).primaryBtnText,
                                                                            fontSize:
                                                                                18,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            );
                                                          },
                                                        ),
                                                        Align(
                                                          alignment:
                                                              AlignmentDirectional(
                                                                  0, 1),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0,
                                                                        0,
                                                                        0,
                                                                        5),
                                                            child:
                                                                SmoothPageIndicator(
                                                              controller: pageViewController3 ??=
                                                                  PageController(
                                                                      initialPage: min(
                                                                          0,
                                                                          pageViewVideodataRecordList.length -
                                                                              1)),
                                                              count:
                                                                  pageViewVideodataRecordList
                                                                      .length,
                                                              axisDirection: Axis
                                                                  .horizontal,
                                                              onDotClicked:
                                                                  (i) {
                                                                pageViewController3!
                                                                    .animateToPage(
                                                                  i,
                                                                  duration: Duration(
                                                                      milliseconds:
                                                                          500),
                                                                  curve: Curves
                                                                      .ease,
                                                                );
                                                              },
                                                              effect:
                                                                  SlideEffect(
                                                                spacing: 5,
                                                                radius: 10,
                                                                dotWidth: 10,
                                                                dotHeight: 10,
                                                                dotColor: Color(
                                                                    0xFF9E9E9E),
                                                                activeDotColor:
                                                                    Color(
                                                                        0xFF3F51B5),
                                                                paintStyle:
                                                                    PaintingStyle
                                                                        .fill,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  );
                                                },
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0,
                                                                      10,
                                                                      0,
                                                                      10),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .stretch,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              15,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            'Latest Series',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                  fontSize: 15,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              15,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            '>',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                  fontSize: 18,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Container(
                                                                      width:
                                                                          390,
                                                                      height:
                                                                          100,
                                                                      decoration:
                                                                          BoxDecoration(
                                                                        color: Color(
                                                                            0xDF000000),
                                                                      ),
                                                                      child: StreamBuilder<
                                                                          List<
                                                                              VideodataRecord>>(
                                                                        stream:
                                                                            queryVideodataRecord(
                                                                          queryBuilder: (videodataRecord) => videodataRecord.where('category', isEqualTo: 'TV').orderBy(
                                                                              'moviedate',
                                                                              descending: true),
                                                                        ),
                                                                        builder:
                                                                            (context,
                                                                                snapshot) {
                                                                          // Customize what your widget looks like when it's loading.
                                                                          if (!snapshot
                                                                              .hasData) {
                                                                            return Center(
                                                                              child: SizedBox(
                                                                                width: 50,
                                                                                height: 50,
                                                                                child: CircularProgressIndicator(
                                                                                  color: FlutterFlowTheme.of(context).primaryColor,
                                                                                ),
                                                                              ),
                                                                            );
                                                                          }
                                                                          List<VideodataRecord>
                                                                              listViewVideodataRecordList =
                                                                              snapshot.data!;
                                                                          return ListView
                                                                              .builder(
                                                                            padding:
                                                                                EdgeInsets.zero,
                                                                            scrollDirection:
                                                                                Axis.horizontal,
                                                                            itemCount:
                                                                                listViewVideodataRecordList.length,
                                                                            itemBuilder:
                                                                                (context, listViewIndex) {
                                                                              final listViewVideodataRecord = listViewVideodataRecordList[listViewIndex];
                                                                              return Padding(
                                                                                padding: EdgeInsetsDirectional.fromSTEB(7, 0, 7, 0),
                                                                                child: InkWell(
                                                                                  onTap: () async {
                                                                                    await Navigator.push(
                                                                                      context,
                                                                                      MaterialPageRoute(
                                                                                        builder: (context) => InfoPageWidget(
                                                                                          infodocument: listViewVideodataRecord,
                                                                                          epno: 1,
                                                                                          epmin: listViewVideodataRecord.minutes,
                                                                                        ),
                                                                                      ),
                                                                                    );
                                                                                    await Future.delayed(const Duration(milliseconds: 2000));
                                                                                  },
                                                                                  child: Material(
                                                                                    color: Colors.transparent,
                                                                                    elevation: 10,
                                                                                    child: Container(
                                                                                      width: 130,
                                                                                      height: 130,
                                                                                      decoration: BoxDecoration(
                                                                                        color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                      ),
                                                                                      child: Stack(
                                                                                        children: [
                                                                                          Image.network(
                                                                                            listViewVideodataRecord.imageurl!,
                                                                                            width: 130,
                                                                                            height: 100,
                                                                                            fit: BoxFit.cover,
                                                                                          ),
                                                                                          Align(
                                                                                            alignment: AlignmentDirectional(0, 0.94),
                                                                                            child: Text(
                                                                                              listViewVideodataRecord.name!,
                                                                                              style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                    fontFamily: 'Poppins',
                                                                                                    color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                    fontSize: 16,
                                                                                                    fontWeight: FontWeight.bold,
                                                                                                  ),
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
                                                                        },
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0,
                                                                      10,
                                                                      0,
                                                                      10),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .stretch,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              15,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            'Comedy',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                  fontSize: 15,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              15,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            '>',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                  fontSize: 18,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              8,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            362,
                                                                        height:
                                                                            100,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xDF000000),
                                                                        ),
                                                                        child: StreamBuilder<
                                                                            List<VideodataRecord>>(
                                                                          stream:
                                                                              queryVideodataRecord(
                                                                            queryBuilder: (videodataRecord) =>
                                                                                videodataRecord.where('category', isEqualTo: 'TV').where('subcategory', isEqualTo: 'Comedy').orderBy('imdbrating', descending: true),
                                                                          ),
                                                                          builder:
                                                                              (context, snapshot) {
                                                                            // Customize what your widget looks like when it's loading.
                                                                            if (!snapshot.hasData) {
                                                                              return Center(
                                                                                child: SizedBox(
                                                                                  width: 50,
                                                                                  height: 50,
                                                                                  child: CircularProgressIndicator(
                                                                                    color: FlutterFlowTheme.of(context).primaryColor,
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            }
                                                                            List<VideodataRecord>
                                                                                listViewVideodataRecordList =
                                                                                snapshot.data!;
                                                                            return ListView.builder(
                                                                              padding: EdgeInsets.zero,
                                                                              scrollDirection: Axis.horizontal,
                                                                              itemCount: listViewVideodataRecordList.length,
                                                                              itemBuilder: (context, listViewIndex) {
                                                                                final listViewVideodataRecord = listViewVideodataRecordList[listViewIndex];
                                                                                return Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(7, 0, 7, 0),
                                                                                  child: InkWell(
                                                                                    onTap: () async {
                                                                                      await Navigator.push(
                                                                                        context,
                                                                                        MaterialPageRoute(
                                                                                          builder: (context) => InfoPageWidget(
                                                                                            infodocument: listViewVideodataRecord,
                                                                                          ),
                                                                                        ),
                                                                                      );
                                                                                      await Future.delayed(const Duration(milliseconds: 2000));
                                                                                    },
                                                                                    child: Material(
                                                                                      color: Colors.transparent,
                                                                                      elevation: 10,
                                                                                      child: Container(
                                                                                        width: 130,
                                                                                        height: 130,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        ),
                                                                                        child: Stack(
                                                                                          children: [
                                                                                            Image.network(
                                                                                              listViewVideodataRecord.imageurl!,
                                                                                              width: 130,
                                                                                              height: 100,
                                                                                              fit: BoxFit.cover,
                                                                                            ),
                                                                                            Align(
                                                                                              alignment: AlignmentDirectional(0, 0.94),
                                                                                              child: Text(
                                                                                                listViewVideodataRecord.name!,
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: 'Poppins',
                                                                                                      color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                      fontSize: 16,
                                                                                                      fontWeight: FontWeight.bold,
                                                                                                    ),
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
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0,
                                                                      10,
                                                                      0,
                                                                      10),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .min,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .stretch,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              15,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            'Action',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                  fontSize: 15,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              15,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            '>',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                  fontSize: 18,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              8,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            362,
                                                                        height:
                                                                            100,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xDF000000),
                                                                        ),
                                                                        child: StreamBuilder<
                                                                            List<VideodataRecord>>(
                                                                          stream:
                                                                              queryVideodataRecord(
                                                                            queryBuilder: (videodataRecord) =>
                                                                                videodataRecord.where('category', isEqualTo: 'TV').where('subcategory', isEqualTo: 'Action').orderBy('imdbrating', descending: true),
                                                                          ),
                                                                          builder:
                                                                              (context, snapshot) {
                                                                            // Customize what your widget looks like when it's loading.
                                                                            if (!snapshot.hasData) {
                                                                              return Center(
                                                                                child: SizedBox(
                                                                                  width: 50,
                                                                                  height: 50,
                                                                                  child: CircularProgressIndicator(
                                                                                    color: FlutterFlowTheme.of(context).primaryColor,
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            }
                                                                            List<VideodataRecord>
                                                                                listViewVideodataRecordList =
                                                                                snapshot.data!;
                                                                            return ListView.builder(
                                                                              padding: EdgeInsets.zero,
                                                                              scrollDirection: Axis.horizontal,
                                                                              itemCount: listViewVideodataRecordList.length,
                                                                              itemBuilder: (context, listViewIndex) {
                                                                                final listViewVideodataRecord = listViewVideodataRecordList[listViewIndex];
                                                                                return Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(7, 0, 7, 0),
                                                                                  child: InkWell(
                                                                                    onTap: () async {
                                                                                      await Navigator.push(
                                                                                        context,
                                                                                        MaterialPageRoute(
                                                                                          builder: (context) => InfoPageWidget(
                                                                                            infodocument: listViewVideodataRecord,
                                                                                          ),
                                                                                        ),
                                                                                      );
                                                                                      await Future.delayed(const Duration(milliseconds: 2000));
                                                                                    },
                                                                                    child: Material(
                                                                                      color: Colors.transparent,
                                                                                      elevation: 10,
                                                                                      child: Container(
                                                                                        width: 130,
                                                                                        height: 130,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        ),
                                                                                        child: Stack(
                                                                                          children: [
                                                                                            Image.network(
                                                                                              listViewVideodataRecord.imageurl!,
                                                                                              width: 130,
                                                                                              height: 100,
                                                                                              fit: BoxFit.cover,
                                                                                            ),
                                                                                            Align(
                                                                                              alignment: AlignmentDirectional(0, 0.94),
                                                                                              child: Text(
                                                                                                listViewVideodataRecord.name!,
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: 'Poppins',
                                                                                                      color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                      fontSize: 16,
                                                                                                      fontWeight: FontWeight.bold,
                                                                                                    ),
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
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0,
                                                                      10,
                                                                      0,
                                                                      10),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .stretch,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              15,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            'Highly Rated',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                  fontSize: 15,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              15,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            '>',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                  fontSize: 18,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              8,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            362,
                                                                        height:
                                                                            100,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xDF000000),
                                                                        ),
                                                                        child: StreamBuilder<
                                                                            List<VideodataRecord>>(
                                                                          stream:
                                                                              queryVideodataRecord(
                                                                            queryBuilder: (videodataRecord) =>
                                                                                videodataRecord.where('category', isEqualTo: 'TV').orderBy('imdbrating', descending: true),
                                                                          ),
                                                                          builder:
                                                                              (context, snapshot) {
                                                                            // Customize what your widget looks like when it's loading.
                                                                            if (!snapshot.hasData) {
                                                                              return Center(
                                                                                child: SizedBox(
                                                                                  width: 50,
                                                                                  height: 50,
                                                                                  child: CircularProgressIndicator(
                                                                                    color: FlutterFlowTheme.of(context).primaryColor,
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            }
                                                                            List<VideodataRecord>
                                                                                listViewVideodataRecordList =
                                                                                snapshot.data!;
                                                                            return ListView.builder(
                                                                              padding: EdgeInsets.zero,
                                                                              scrollDirection: Axis.horizontal,
                                                                              itemCount: listViewVideodataRecordList.length,
                                                                              itemBuilder: (context, listViewIndex) {
                                                                                final listViewVideodataRecord = listViewVideodataRecordList[listViewIndex];
                                                                                return Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(7, 0, 7, 0),
                                                                                  child: InkWell(
                                                                                    onTap: () async {
                                                                                      await Navigator.push(
                                                                                        context,
                                                                                        MaterialPageRoute(
                                                                                          builder: (context) => InfoPageWidget(
                                                                                            infodocument: listViewVideodataRecord,
                                                                                          ),
                                                                                        ),
                                                                                      );
                                                                                      await Future.delayed(const Duration(milliseconds: 2000));
                                                                                    },
                                                                                    child: Material(
                                                                                      color: Colors.transparent,
                                                                                      elevation: 10,
                                                                                      child: Container(
                                                                                        width: 130,
                                                                                        height: 130,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        ),
                                                                                        child: Stack(
                                                                                          children: [
                                                                                            Image.network(
                                                                                              listViewVideodataRecord.imageurl!,
                                                                                              width: 130,
                                                                                              height: 100,
                                                                                              fit: BoxFit.cover,
                                                                                            ),
                                                                                            Align(
                                                                                              alignment: AlignmentDirectional(0, 0.94),
                                                                                              child: Text(
                                                                                                listViewVideodataRecord.name!,
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: 'Poppins',
                                                                                                      color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                      fontSize: 16,
                                                                                                      fontWeight: FontWeight.bold,
                                                                                                    ),
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
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0,
                                                                      10,
                                                                      0,
                                                                      10),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .stretch,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              15,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            'Watch In Hindi',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                  fontSize: 15,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              15,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            '>',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                  fontSize: 18,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              8,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            362,
                                                                        height:
                                                                            100,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xDF000000),
                                                                        ),
                                                                        child: StreamBuilder<
                                                                            List<VideodataRecord>>(
                                                                          stream:
                                                                              queryVideodataRecord(
                                                                            queryBuilder: (videodataRecord) =>
                                                                                videodataRecord.where('category', isEqualTo: 'TV').where('languages', arrayContains: FFAppState().hinditag),
                                                                          ),
                                                                          builder:
                                                                              (context, snapshot) {
                                                                            // Customize what your widget looks like when it's loading.
                                                                            if (!snapshot.hasData) {
                                                                              return Center(
                                                                                child: SizedBox(
                                                                                  width: 50,
                                                                                  height: 50,
                                                                                  child: CircularProgressIndicator(
                                                                                    color: FlutterFlowTheme.of(context).primaryColor,
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            }
                                                                            List<VideodataRecord>
                                                                                listViewVideodataRecordList =
                                                                                snapshot.data!;
                                                                            return ListView.builder(
                                                                              padding: EdgeInsets.zero,
                                                                              scrollDirection: Axis.horizontal,
                                                                              itemCount: listViewVideodataRecordList.length,
                                                                              itemBuilder: (context, listViewIndex) {
                                                                                final listViewVideodataRecord = listViewVideodataRecordList[listViewIndex];
                                                                                return Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(7, 0, 7, 0),
                                                                                  child: InkWell(
                                                                                    onTap: () async {
                                                                                      await Navigator.push(
                                                                                        context,
                                                                                        MaterialPageRoute(
                                                                                          builder: (context) => InfoPageWidget(),
                                                                                        ),
                                                                                      );
                                                                                      await Future.delayed(const Duration(milliseconds: 2000));
                                                                                    },
                                                                                    child: Material(
                                                                                      color: Colors.transparent,
                                                                                      elevation: 10,
                                                                                      child: Container(
                                                                                        width: 130,
                                                                                        height: 130,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        ),
                                                                                        child: Stack(
                                                                                          children: [
                                                                                            Image.network(
                                                                                              listViewVideodataRecord.imageurl!,
                                                                                              width: 130,
                                                                                              height: 100,
                                                                                              fit: BoxFit.cover,
                                                                                            ),
                                                                                            Align(
                                                                                              alignment: AlignmentDirectional(0, 0.94),
                                                                                              child: Text(
                                                                                                listViewVideodataRecord.name!,
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: 'Poppins',
                                                                                                      color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                      fontSize: 16,
                                                                                                      fontWeight: FontWeight.bold,
                                                                                                    ),
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
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0,
                                                                      10,
                                                                      0,
                                                                      10),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .stretch,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              15,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            'Scifi',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                  fontSize: 15,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              15,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            '>',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                  fontSize: 18,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              8,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            362,
                                                                        height:
                                                                            100,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xDF000000),
                                                                        ),
                                                                        child: StreamBuilder<
                                                                            List<VideodataRecord>>(
                                                                          stream:
                                                                              queryVideodataRecord(
                                                                            queryBuilder: (videodataRecord) =>
                                                                                videodataRecord.where('category', isEqualTo: 'TV').where('subcategory', isEqualTo: 'Scifi'),
                                                                          ),
                                                                          builder:
                                                                              (context, snapshot) {
                                                                            // Customize what your widget looks like when it's loading.
                                                                            if (!snapshot.hasData) {
                                                                              return Center(
                                                                                child: SizedBox(
                                                                                  width: 50,
                                                                                  height: 50,
                                                                                  child: CircularProgressIndicator(
                                                                                    color: FlutterFlowTheme.of(context).primaryColor,
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            }
                                                                            List<VideodataRecord>
                                                                                listViewVideodataRecordList =
                                                                                snapshot.data!;
                                                                            return ListView.builder(
                                                                              padding: EdgeInsets.zero,
                                                                              scrollDirection: Axis.horizontal,
                                                                              itemCount: listViewVideodataRecordList.length,
                                                                              itemBuilder: (context, listViewIndex) {
                                                                                final listViewVideodataRecord = listViewVideodataRecordList[listViewIndex];
                                                                                return Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(7, 0, 7, 0),
                                                                                  child: InkWell(
                                                                                    onTap: () async {
                                                                                      await Navigator.push(
                                                                                        context,
                                                                                        MaterialPageRoute(
                                                                                          builder: (context) => InfoPageWidget(
                                                                                            infodocument: listViewVideodataRecord,
                                                                                          ),
                                                                                        ),
                                                                                      );
                                                                                      await Future.delayed(const Duration(milliseconds: 2000));
                                                                                    },
                                                                                    child: Material(
                                                                                      color: Colors.transparent,
                                                                                      elevation: 10,
                                                                                      child: Container(
                                                                                        width: 130,
                                                                                        height: 130,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        ),
                                                                                        child: Stack(
                                                                                          children: [
                                                                                            Image.network(
                                                                                              listViewVideodataRecord.imageurl!,
                                                                                              width: 130,
                                                                                              height: 100,
                                                                                              fit: BoxFit.cover,
                                                                                            ),
                                                                                            Align(
                                                                                              alignment: AlignmentDirectional(0, 0.94),
                                                                                              child: Text(
                                                                                                listViewVideodataRecord.name!,
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: 'Poppins',
                                                                                                      color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                      fontSize: 16,
                                                                                                      fontWeight: FontWeight.bold,
                                                                                                    ),
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
                                                                          },
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0,
                                                                      10,
                                                                      0,
                                                                      10),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .stretch,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              15,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            'Watch In English',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                  fontSize: 15,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              15,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                          child:
                                                                              Text(
                                                                            '>',
                                                                            style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                  fontFamily: 'Poppins',
                                                                                  color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                  fontSize: 18,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional
                                                                          .fromSTEB(
                                                                              8,
                                                                              0,
                                                                              0,
                                                                              0),
                                                                      child:
                                                                          Container(
                                                                        width:
                                                                            362,
                                                                        height:
                                                                            100,
                                                                        decoration:
                                                                            BoxDecoration(
                                                                          color:
                                                                              Color(0xDF000000),
                                                                        ),
                                                                        child: StreamBuilder<
                                                                            List<VideodataRecord>>(
                                                                          stream:
                                                                              queryVideodataRecord(
                                                                            queryBuilder: (videodataRecord) =>
                                                                                videodataRecord.where('category', isEqualTo: 'TV').where('languages', arrayContains: FFAppState().hinditag),
                                                                          ),
                                                                          builder:
                                                                              (context, snapshot) {
                                                                            // Customize what your widget looks like when it's loading.
                                                                            if (!snapshot.hasData) {
                                                                              return Center(
                                                                                child: SizedBox(
                                                                                  width: 50,
                                                                                  height: 50,
                                                                                  child: CircularProgressIndicator(
                                                                                    color: FlutterFlowTheme.of(context).primaryColor,
                                                                                  ),
                                                                                ),
                                                                              );
                                                                            }
                                                                            List<VideodataRecord>
                                                                                listViewVideodataRecordList =
                                                                                snapshot.data!;
                                                                            return ListView.builder(
                                                                              padding: EdgeInsets.zero,
                                                                              scrollDirection: Axis.horizontal,
                                                                              itemCount: listViewVideodataRecordList.length,
                                                                              itemBuilder: (context, listViewIndex) {
                                                                                final listViewVideodataRecord = listViewVideodataRecordList[listViewIndex];
                                                                                return Padding(
                                                                                  padding: EdgeInsetsDirectional.fromSTEB(7, 0, 7, 0),
                                                                                  child: InkWell(
                                                                                    onTap: () async {
                                                                                      await Navigator.push(
                                                                                        context,
                                                                                        MaterialPageRoute(
                                                                                          builder: (context) => InfoPageWidget(
                                                                                            infodocument: listViewVideodataRecord,
                                                                                          ),
                                                                                        ),
                                                                                      );
                                                                                      await Future.delayed(const Duration(milliseconds: 2000));
                                                                                    },
                                                                                    child: Material(
                                                                                      color: Colors.transparent,
                                                                                      elevation: 10,
                                                                                      child: Container(
                                                                                        width: 130,
                                                                                        height: 130,
                                                                                        decoration: BoxDecoration(
                                                                                          color: FlutterFlowTheme.of(context).secondaryBackground,
                                                                                        ),
                                                                                        child: Stack(
                                                                                          children: [
                                                                                            Image.network(
                                                                                              listViewVideodataRecord.imageurl!,
                                                                                              width: 130,
                                                                                              height: 100,
                                                                                              fit: BoxFit.cover,
                                                                                            ),
                                                                                            Align(
                                                                                              alignment: AlignmentDirectional(0, 0.94),
                                                                                              child: Text(
                                                                                                listViewVideodataRecord.name!,
                                                                                                style: FlutterFlowTheme.of(context).bodyText1.override(
                                                                                                      fontFamily: 'Poppins',
                                                                                                      color: FlutterFlowTheme.of(context).primaryBtnText,
                                                                                                      fontSize: 16,
                                                                                                      fontWeight: FontWeight.bold,
                                                                                                    ),
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
                                                                          },
                                                                        ),
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
                                                ],
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
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
