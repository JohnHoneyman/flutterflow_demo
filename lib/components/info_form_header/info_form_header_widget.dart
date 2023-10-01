import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'info_form_header_model.dart';
export 'info_form_header_model.dart';

class InfoFormHeaderWidget extends StatefulWidget {
  const InfoFormHeaderWidget({
    Key? key,
    required this.parameter1,
    required this.parameter2,
  }) : super(key: key);

  final String? parameter1;
  final String? parameter2;

  @override
  _InfoFormHeaderWidgetState createState() => _InfoFormHeaderWidgetState();
}

class _InfoFormHeaderWidgetState extends State<InfoFormHeaderWidget> {
  late InfoFormHeaderModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => InfoFormHeaderModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      height: 133.0,
      constraints: BoxConstraints(
        maxWidth: 350.0,
      ),
      decoration: BoxDecoration(),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            widget.parameter1!,
            textAlign: TextAlign.center,
            style: FlutterFlowTheme.of(context).headlineSmall.override(
                  fontFamily: FlutterFlowTheme.of(context).headlineSmallFamily,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  useGoogleFonts: GoogleFonts.asMap().containsKey(
                      FlutterFlowTheme.of(context).headlineSmallFamily),
                ),
          ),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(40.0, 20.0, 40.0, 0.0),
            child: Text(
              widget.parameter2!,
              textAlign: TextAlign.center,
              style: FlutterFlowTheme.of(context).bodySmall,
            ),
          ),
        ].divide(SizedBox(height: 8.0)),
      ),
    );
  }
}
