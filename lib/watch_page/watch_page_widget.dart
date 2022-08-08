import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_video_player.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WatchPageWidget extends StatefulWidget {
  const WatchPageWidget({
    Key? key,
    this.videolink,
  }) : super(key: key);

  final String? videolink;

  @override
  _WatchPageWidgetState createState() => _WatchPageWidgetState();
}

class _WatchPageWidgetState extends State<WatchPageWidget> {
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
              FlutterFlowVideoPlayer(
                path: widget.videolink!,
                videoType: VideoType.network,
                autoPlay: false,
                looping: false,
                showControls: true,
                allowFullScreen: true,
                allowPlaybackSpeedMenu: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
