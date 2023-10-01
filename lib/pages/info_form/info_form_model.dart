import '/components/button/button_widget.dart';
import '/components/info_form_header/info_form_header_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'info_form_widget.dart' show InfoFormWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class InfoFormModel extends FlutterFlowModel<InfoFormWidget> {
  ///  Local state fields for this page.

  bool isMale = false;

  bool isFemale = false;

  bool isFirstPage = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for InfoFormPages widget.
  PageController? infoFormPagesController;

  int get infoFormPagesCurrentIndex => infoFormPagesController != null &&
          infoFormPagesController!.hasClients &&
          infoFormPagesController!.page != null
      ? infoFormPagesController!.page!.round()
      : 0;
  // Model for InfoFormHeader component.
  late InfoFormHeaderModel infoFormHeaderModel1;
  // Model for button component.
  late ButtonModel buttonModel1;
  // Model for InfoFormHeader component.
  late InfoFormHeaderModel infoFormHeaderModel2;
  // Model for button component.
  late ButtonModel buttonModel2;
  // Model for InfoFormHeader component.
  late InfoFormHeaderModel infoFormHeaderModel3;
  // Model for button component.
  late ButtonModel buttonModel3;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    infoFormHeaderModel1 = createModel(context, () => InfoFormHeaderModel());
    buttonModel1 = createModel(context, () => ButtonModel());
    infoFormHeaderModel2 = createModel(context, () => InfoFormHeaderModel());
    buttonModel2 = createModel(context, () => ButtonModel());
    infoFormHeaderModel3 = createModel(context, () => InfoFormHeaderModel());
    buttonModel3 = createModel(context, () => ButtonModel());
  }

  void dispose() {
    unfocusNode.dispose();
    infoFormHeaderModel1.dispose();
    buttonModel1.dispose();
    infoFormHeaderModel2.dispose();
    buttonModel2.dispose();
    infoFormHeaderModel3.dispose();
    buttonModel3.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
