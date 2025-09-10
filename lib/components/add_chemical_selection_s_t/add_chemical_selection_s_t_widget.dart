import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/index.dart';
import 'package:flutter/material.dart';
import 'add_chemical_selection_s_t_model.dart';
export 'add_chemical_selection_s_t_model.dart';

class AddChemicalSelectionSTWidget extends StatefulWidget {
  const AddChemicalSelectionSTWidget({
    super.key,
    required this.unit,
    int? salt,
    int? alk,
    int? cal,
    int? cyan,
    double? ph,
    required this.owner,
  })  : this.salt = salt ?? 0,
        this.alk = alk ?? 0,
        this.cal = cal ?? 0,
        this.cyan = cyan ?? 0,
        this.ph = ph ?? 0.0;

  final String? unit;
  final int salt;
  final int alk;
  final int cal;
  final int cyan;
  final double ph;
  final String? owner;

  @override
  State<AddChemicalSelectionSTWidget> createState() =>
      _AddChemicalSelectionSTWidgetState();
}

class _AddChemicalSelectionSTWidgetState
    extends State<AddChemicalSelectionSTWidget> {
  late AddChemicalSelectionSTModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddChemicalSelectionSTModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 270.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: [
          BoxShadow(
            blurRadius: 5.0,
            color: Color(0x3B1D2429),
            offset: Offset(
              0.0,
              -3.0,
            ),
          )
        ],
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 10.0),
              child: Text(
                'Would you like to record chemicals?',
                style: FlutterFlowTheme.of(context).titleMedium.override(
                      fontFamily:
                          FlutterFlowTheme.of(context).titleMediumFamily,
                      color: FlutterFlowTheme.of(context).primary,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                      useGoogleFonts:
                          !FlutterFlowTheme.of(context).titleMediumIsCustom,
                    ),
              ),
            ),
            FFButtonWidget(
              onPressed: () async {
                context.pushNamed(
                  SeaTempleChemicalsWidget.routeName,
                  queryParameters: {
                    'unit': serializeParam(
                      widget.unit,
                      ParamType.String,
                    ),
                    'owner': serializeParam(
                      widget.owner,
                      ParamType.String,
                    ),
                    'salt': serializeParam(
                      widget.salt,
                      ParamType.int,
                    ),
                    'alk': serializeParam(
                      widget.alk,
                      ParamType.int,
                    ),
                    'cal': serializeParam(
                      widget.cal,
                      ParamType.int,
                    ),
                    'cyan': serializeParam(
                      widget.cyan,
                      ParamType.int,
                    ),
                    'ph': serializeParam(
                      widget.ph,
                      ParamType.double,
                    ),
                  }.withoutNulls,
                );
              },
              text: 'Yes - Add Chemicals',
              options: FFButtonOptions(
                width: double.infinity,
                height: 60.0,
                padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                iconPadding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                color: FlutterFlowTheme.of(context).primaryBackground,
                textStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                      fontFamily: FlutterFlowTheme.of(context).bodyLargeFamily,
                      color: FlutterFlowTheme.of(context).success,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                      useGoogleFonts:
                          !FlutterFlowTheme.of(context).bodyLargeIsCustom,
                    ),
                elevation: 2.0,
                borderSide: BorderSide(
                  color: Colors.transparent,
                  width: 1.0,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
              child: FFButtonWidget(
                onPressed: () async {
                  context.pushNamed(SeaTempleWidget.routeName);
                },
                text: 'No Chemicals Added',
                options: FFButtonOptions(
                  width: double.infinity,
                  height: 60.0,
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  iconPadding:
                      EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  textStyle: FlutterFlowTheme.of(context).bodyLarge.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyLargeFamily,
                        color: FlutterFlowTheme.of(context).error,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                        useGoogleFonts:
                            !FlutterFlowTheme.of(context).bodyLargeIsCustom,
                      ),
                  elevation: 2.0,
                  borderSide: BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
