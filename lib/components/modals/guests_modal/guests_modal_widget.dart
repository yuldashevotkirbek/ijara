import '/components/guests_item/guests_item_widget.dart';
import '/flutter_flow/flutter_flow_count_controller.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'guests_modal_model.dart';
export 'guests_modal_model.dart';

class GuestsModalWidget extends StatefulWidget {
  const GuestsModalWidget({super.key});

  @override
  State<GuestsModalWidget> createState() => _GuestsModalWidgetState();
}

class _GuestsModalWidgetState extends State<GuestsModalWidget> {
  late GuestsModalModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => GuestsModalModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Spacer(),
        Expanded(
          flex: 3,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FlutterFlowIconButton(
                              borderColor: Colors.transparent,
                              borderRadius: 10.0,
                              borderWidth: 1.0,
                              buttonSize: 40.0,
                              icon: Icon(
                                FFIcons.kx,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 16.0,
                              ),
                              onPressed: () async {
                                Navigator.pop(context);
                              },
                            ),
                            Expanded(
                              child: Text(
                                'Guests',
                                textAlign: TextAlign.center,
                                style: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'SFPRO',
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                            Container(
                              width: 30.0,
                              height: 30.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                            ),
                          ],
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                16.0, 0.0, 0.0, 0.0),
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    'Adults',
                                                    maxLines: 1,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'SFPRO',
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    'Age 13 or above',
                                                    maxLines: 1,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyLarge
                                                        .override(
                                                          fontFamily: 'SFPRO',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ].divide(SizedBox(height: 4.0)),
                                        ),
                                      ),
                                      Container(
                                        width: 150.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          shape: BoxShape.rectangle,
                                          border: Border.all(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                            width: 0.0,
                                          ),
                                        ),
                                        child: FlutterFlowCountController(
                                          decrementIconBuilder: (enabled) =>
                                              Icon(
                                            Icons.do_disturb_on_outlined,
                                            color: enabled
                                                ? FlutterFlowTheme.of(context)
                                                    .neutral05
                                                : FlutterFlowTheme.of(context)
                                                    .alternate,
                                            size: 30.0,
                                          ),
                                          incrementIconBuilder: (enabled) =>
                                              Icon(
                                            Icons.add_circle_outline,
                                            color: enabled
                                                ? FlutterFlowTheme.of(context)
                                                    .secondaryText
                                                : FlutterFlowTheme.of(context)
                                                    .alternate,
                                            size: 30.0,
                                          ),
                                          countBuilder: (count) => Text(
                                            count.toString(),
                                            style: FlutterFlowTheme.of(context)
                                                .titleMedium
                                                .override(
                                                  fontFamily: 'SFPRO',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryText,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                          count: _model.countControllerValue ??=
                                              0,
                                          updateCount: (count) => safeSetState(
                                              () =>
                                                  _model.countControllerValue =
                                                      count),
                                          stepSize: 1,
                                        ),
                                      ),
                                    ],
                                  ),
                                  wrapWithModel(
                                    model: _model.guestsItemModel1,
                                    updateCallback: () => safeSetState(() {}),
                                    child: GuestsItemWidget(
                                      title: 'Children',
                                      description: 'Age 2-12',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.guestsItemModel2,
                                    updateCallback: () => safeSetState(() {}),
                                    child: GuestsItemWidget(
                                      title: 'Infants',
                                      description: 'Under 2',
                                    ),
                                  ),
                                  wrapWithModel(
                                    model: _model.guestsItemModel3,
                                    updateCallback: () => safeSetState(() {}),
                                    child: GuestsItemWidget(
                                      title: 'Pets',
                                      description: 'Bringing a service animal?',
                                    ),
                                  ),
                                ].divide(SizedBox(height: 8.0)),
                              ),
                            ),
                          ),
                        ),
                        Divider(
                          height: 1.0,
                          color: FlutterFlowTheme.of(context).neutral06,
                        ),
                        Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  'Clear',
                                  maxLines: 2,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyLarge
                                      .override(
                                        fontFamily: 'SFPRO',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        letterSpacing: 0.0,
                                        decoration: TextDecoration.underline,
                                      ),
                                ),
                              ),
                              FFButtonWidget(
                                onPressed: () {
                                  print('Button pressed ...');
                                },
                                text: 'Save',
                                options: FFButtonOptions(
                                  height: 40.0,
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      24.0, 0.0, 24.0, 0.0),
                                  iconPadding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 0.0),
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  textStyle: FlutterFlowTheme.of(context)
                                      .titleSmall
                                      .override(
                                        fontFamily: 'SFPRO',
                                        color: Colors.white,
                                        letterSpacing: 0.0,
                                      ),
                                  borderSide: BorderSide(
                                    color: Colors.transparent,
                                  ),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                              ),
                            ],
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
        Spacer(flex: 2),
      ],
    );
  }
}
