import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'onboarding_gradient_component_model.dart';
export 'onboarding_gradient_component_model.dart';

class OnboardingGradientComponentWidget extends StatefulWidget {
  const OnboardingGradientComponentWidget({
    Key? key,
    required this.text1,
    required this.text2,
    required this.image,
  }) : super(key: key);

  final String? text1;
  final String? text2;
  final String? image;

  @override
  _OnboardingGradientComponentWidgetState createState() =>
      _OnboardingGradientComponentWidgetState();
}

class _OnboardingGradientComponentWidgetState
    extends State<OnboardingGradientComponentWidget> {
  late OnboardingGradientComponentModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OnboardingGradientComponentModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Align(
          alignment: AlignmentDirectional(0.00, -1.00),
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 495.0,
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.sizeOf(context).width * 1.0,
                ),
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    alignment: AlignmentDirectional(0.00, 0.00),
                    image: CachedNetworkImageProvider(
                      widget.image!,
                    ),
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 500.0,
                constraints: BoxConstraints(
                  maxWidth: MediaQuery.sizeOf(context).width * 1.0,
                ),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.transparent,
                      FlutterFlowTheme.of(context).primaryBackground
                    ],
                    stops: [0.0, 0.9],
                    begin: AlignmentDirectional(-0.34, -1.0),
                    end: AlignmentDirectional(0.34, 1.0),
                  ),
                ),
              ),
            ],
          ),
        ),
        Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              widget.text1!,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                    fontSize: 24.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).bodyMediumFamily),
                  ),
            ),
            Text(
              widget.text2!,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: FlutterFlowTheme.of(context).bodyMediumFamily,
                    fontSize: 24.0,
                    fontWeight: FontWeight.w800,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).bodyMediumFamily),
                  ),
            ),
          ].divide(SizedBox(height: 4.0)),
        ),
      ],
    );
  }
}
