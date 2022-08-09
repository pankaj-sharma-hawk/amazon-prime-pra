import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../info_page/info_page_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PrimeWidget extends StatefulWidget {
  const PrimeWidget({Key? key}) : super(key: key);

  @override
  _PrimeWidgetState createState() => _PrimeWidgetState();
}

class _PrimeWidgetState extends State<PrimeWidget> {
  PageController? pageViewController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryText,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/download_(3).png',
                    width: 100,
                    height: 100,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
              Expanded(
                child: DefaultTabController(
                  length: 2,
                  initialIndex: 0,
                  child: Column(
                    children: [
                      TabBar(
                        labelColor: FlutterFlowTheme.of(context).primaryColor,
                        labelStyle: FlutterFlowTheme.of(context).bodyText1,
                        indicatorColor:
                            FlutterFlowTheme.of(context).secondaryColor,
                        tabs: [
                          Tab(
                            text: 'Home',
                          ),
                          Tab(
                            text: 'Movies',
                          ),
                        ],
                      ),
                      Expanded(
                        child: TabBarView(
                          children: [
                            Row(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      StreamBuilder<List<VideodataRecord>>(
                                        stream: queryVideodataRecord(
                                          queryBuilder: (videodataRecord) =>
                                              videodataRecord
                                                  .where('category',
                                                      isEqualTo: 'Movies')
                                                  .orderBy('moviedate',
                                                      descending: true),
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
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                                  controller: pageViewController ??=
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
                                                  itemBuilder:
                                                      (context, pageViewIndex) {
                                                    final pageViewVideodataRecord =
                                                        pageViewVideodataRecordList[
                                                            pageViewIndex];
                                                    return Container(
                                                      width: double.infinity,
                                                      height: 220,
                                                      child: Stack(
                                                        children: [
                                                          InkWell(
                                                            onTap: () async {
                                                              await Navigator
                                                                  .push(
                                                                context,
                                                                MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          InfoPageWidget(
                                                                    infodocument:
                                                                        pageViewVideodataRecord,
                                                                  ),
                                                                ),
                                                              );
                                                              await Future.delayed(
                                                                  const Duration(
                                                                      milliseconds:
                                                                          2000));
                                                            },
                                                            child:
                                                                Image.network(
                                                              pageViewVideodataRecord
                                                                  .imageurl!,
                                                              width: double
                                                                  .infinity,
                                                              height: 220,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ),
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.02, 0.77),
                                                            child: Text(
                                                              pageViewVideodataRecord
                                                                  .name!,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyText1
                                                                  .override(
                                                                    fontFamily:
                                                                        'Poppins',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBtnText,
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
                                                                0, 0, 0, 5),
                                                    child: SmoothPageIndicator(
                                                      controller: pageViewController ??=
                                                          PageController(
                                                              initialPage: min(
                                                                  0,
                                                                  pageViewVideodataRecordList
                                                                          .length -
                                                                      1)),
                                                      count:
                                                          pageViewVideodataRecordList
                                                              .length,
                                                      axisDirection:
                                                          Axis.horizontal,
                                                      onDotClicked: (i) {
                                                        pageViewController!
                                                            .animateToPage(
                                                          i,
                                                          duration: Duration(
                                                              milliseconds:
                                                                  500),
                                                          curve: Curves.ease,
                                                        );
                                                      },
                                                      effect: SlideEffect(
                                                        spacing: 5,
                                                        radius: 10,
                                                        dotWidth: 10,
                                                        dotHeight: 10,
                                                        dotColor:
                                                            Color(0xFF9E9E9E),
                                                        activeDotColor:
                                                            Color(0xFF3F51B5),
                                                        paintStyle:
                                                            PaintingStyle.fill,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      ),
                                      Expanded(
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.stretch,
                                          children: [
                                            Expanded(
                                              child: ListView(
                                                padding: EdgeInsets.zero,
                                                shrinkWrap: true,
                                                scrollDirection:
                                                    Axis.horizontal,
                                                children: [],
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
                            Text(
                              'Tab View 2',
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: 'Poppins',
                                    fontSize: 32,
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
