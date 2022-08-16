import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../components/videodelete_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../info_page/info_page_widget.dart';
import '../mystuffmenu/mystuffmenu_widget.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyStuffWidget extends StatefulWidget {
  const MyStuffWidget({Key? key}) : super(key: key);

  @override
  _MyStuffWidgetState createState() => _MyStuffWidgetState();
}

class _MyStuffWidgetState extends State<MyStuffWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(0, 0, 10, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () async {
                        await Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MystuffmenuWidget(),
                          ),
                        );
                      },
                      child: Icon(
                        Icons.settings_outlined,
                        color: Colors.black,
                        size: 26,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: DefaultTabController(
                  length: 1,
                  initialIndex: 0,
                  child: Column(
                    children: [
                      TabBar(
                        labelColor: Color(0xDF000000),
                        unselectedLabelColor: Color(0xDF000000),
                        labelStyle: FlutterFlowTheme.of(context).bodyText1,
                        indicatorColor:
                            FlutterFlowTheme.of(context).primaryBtnText,
                        tabs: [
                          Tab(
                            text: FFLocalizations.of(context).getText(
                              'lrudixap' /* Watchlist */,
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            AuthUserStreamWidget(
                              child: Builder(
                                builder: (context) {
                                  final bookmarkchild = (currentUserDocument
                                              ?.videorefint
                                              ?.toList() ??
                                          [])
                                      .map((e) => e)
                                      .toList();
                                  if (bookmarkchild.isEmpty) {
                                    return Image.asset(
                                      'assets/images/49e58d5922019b8ec4642a2e2b9291c2.png',
                                    );
                                  }
                                  return ListView.builder(
                                    padding: EdgeInsets.zero,
                                    scrollDirection: Axis.vertical,
                                    itemCount: bookmarkchild.length,
                                    itemBuilder: (context, bookmarkchildIndex) {
                                      final bookmarkchildItem =
                                          bookmarkchild[bookmarkchildIndex];
                                      return Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0, 5, 0, 5),
                                        child: StreamBuilder<
                                            List<VideodataRecord>>(
                                          stream: queryVideodataRecord(
                                            queryBuilder: (videodataRecord) =>
                                                videodataRecord.where('id',
                                                    isEqualTo:
                                                        bookmarkchildItem),
                                            singleRecord: true,
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
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryColor,
                                                  ),
                                                ),
                                              );
                                            }
                                            List<VideodataRecord>
                                                rowVideodataRecordList =
                                                snapshot.data!;
                                            // Return an empty Container when the document does not exist.
                                            if (snapshot.data!.isEmpty) {
                                              return Container();
                                            }
                                            final rowVideodataRecord =
                                                rowVideodataRecordList
                                                        .isNotEmpty
                                                    ? rowVideodataRecordList
                                                        .first
                                                    : null;
                                            return InkWell(
                                              onTap: () async {
                                                await Navigator.push(
                                                  context,
                                                  MaterialPageRoute(
                                                    builder: (context) =>
                                                        InfoPageWidget(
                                                      infodocument:
                                                          rowVideodataRecord,
                                                      epno: 1,
                                                      epmin: rowVideodataRecord!
                                                          .minutes,
                                                    ),
                                                  ),
                                                );
                                                await Future.delayed(
                                                    const Duration(
                                                        milliseconds: 2000));
                                              },
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Image.network(
                                                        rowVideodataRecord!
                                                            .imageurl!,
                                                        width: 140,
                                                        height: 100,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ],
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0, 5, 0, 0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        4,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Expanded(
                                                                  child:
                                                                      AutoSizeText(
                                                                    rowVideodataRecord!
                                                                        .name!,
                                                                    maxLines: 2,
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyText1
                                                                        .override(
                                                                          fontFamily:
                                                                              'Poppins',
                                                                          fontSize:
                                                                              16,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        4,
                                                                        0,
                                                                        0,
                                                                        0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  rowVideodataRecord!
                                                                      .releasedyear!
                                                                      .toString(),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1,
                                                                ),
                                                                Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          10,
                                                                          0,
                                                                          0,
                                                                          0),
                                                                  child: Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Text(
                                                                        rowVideodataRecord!
                                                                            .minutes!
                                                                            .toString(),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1,
                                                                      ),
                                                                      Text(
                                                                        FFLocalizations.of(context)
                                                                            .getText(
                                                                          '8b8vsppf' /* Min */,
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyText1,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            4,
                                                                            0,
                                                                            0,
                                                                            0),
                                                                child: Text(
                                                                  FFLocalizations.of(
                                                                          context)
                                                                      .getText(
                                                                    'jsyw0029' /* prime */,
                                                                  ),
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyText1
                                                                      .override(
                                                                        fontFamily:
                                                                            'Poppins',
                                                                        color: Color(
                                                                            0xFF00A8E1),
                                                                        fontSize:
                                                                            16,
                                                                      ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        4,
                                                                        0,
                                                                        10,
                                                                        0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .end,
                                                              children: [
                                                                InkWell(
                                                                  onTap:
                                                                      () async {
                                                                    await showModalBottomSheet(
                                                                      isScrollControlled:
                                                                          true,
                                                                      backgroundColor:
                                                                          Color(
                                                                              0xFF3FE37C),
                                                                      context:
                                                                          context,
                                                                      builder:
                                                                          (context) {
                                                                        return Padding(
                                                                          padding:
                                                                              MediaQuery.of(context).viewInsets,
                                                                          child:
                                                                              Container(
                                                                            height:
                                                                                100,
                                                                            child:
                                                                                VideodeleteWidget(
                                                                              vid: rowVideodataRecord!.id,
                                                                            ),
                                                                          ),
                                                                        );
                                                                      },
                                                                    );
                                                                  },
                                                                  child: Icon(
                                                                    Icons
                                                                        .settings_outlined,
                                                                    color: Colors
                                                                        .black,
                                                                    size: 24,
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
                                            );
                                          },
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
