import '/components/empty_messages/empty_messages_widget.dart';
import '/flutter_flow/chat/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'm_a_i_n_chat_model.dart';
export 'm_a_i_n_chat_model.dart';

class MAINChatWidget extends StatefulWidget {
  const MAINChatWidget({super.key});

  @override
  State<MAINChatWidget> createState() => _MAINChatWidgetState();
}

class _MAINChatWidgetState extends State<MAINChatWidget> {
  late MAINChatModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MAINChatModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        top: true,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              'Messages',
              style: FlutterFlowTheme.of(context).headlineSmall.override(
                    fontFamily:
                        FlutterFlowTheme.of(context).headlineSmallFamily,
                    color: FlutterFlowTheme.of(context).primary,
                    fontSize: 20.0,
                    useGoogleFonts: GoogleFonts.asMap().containsKey(
                        FlutterFlowTheme.of(context).headlineSmallFamily),
                  ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 0.0),
              child: StreamBuilder<List<ChatsRecord>>(
                stream: queryChatsRecord(
                  queryBuilder: (chatsRecord) => chatsRecord
                      .where(
                        'users',
                        arrayContains: currentUserReference,
                      )
                      .orderBy('last_message_time', descending: true),
                ),
                builder: (context, snapshot) {
                  // Customize what your widget looks like when it's loading.
                  if (!snapshot.hasData) {
                    return const Center(
                      child: SizedBox(
                        width: 50.0,
                        height: 50.0,
                        child: SpinKitThreeBounce(
                          color: Color(0xFF00015B),
                          size: 50.0,
                        ),
                      ),
                    );
                  }
                  List<ChatsRecord> listViewChatsRecordList = snapshot.data!;
                  if (listViewChatsRecordList.isEmpty) {
                    return const Center(
                      child: EmptyMessagesWidget(
                        title: 'No Messages',
                        bodyText:
                            'Once you apply to jobs your messages for that job post will live here.',
                      ),
                    );
                  }
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    scrollDirection: Axis.vertical,
                    itemCount: listViewChatsRecordList.length,
                    itemBuilder: (context, listViewIndex) {
                      final listViewChatsRecord =
                          listViewChatsRecordList[listViewIndex];
                      return StreamBuilder<ChatsRecord>(
                        stream: ChatsRecord.getDocument(
                            listViewChatsRecord.reference),
                        builder: (context, snapshot) {
                          // Customize what your widget looks like when it's loading.
                          if (!snapshot.hasData) {
                            return const Center(
                              child: SizedBox(
                                width: 50.0,
                                height: 50.0,
                                child: SpinKitThreeBounce(
                                  color: Color(0xFF00015B),
                                  size: 50.0,
                                ),
                              ),
                            );
                          }
                          final chatPreviewChatsRecord = snapshot.data!;
                          return StreamBuilder<FFChatInfo>(
                            stream: FFChatManager.instance.getChatInfo(
                                chatRecord: chatPreviewChatsRecord),
                            builder: (context, snapshot) {
                              final chatInfo = snapshot.data ??
                                  FFChatInfo(chatPreviewChatsRecord);
                              return FFChatPreview(
                                onTap: () => context.pushNamed(
                                  'DETAILS_Chat',
                                  queryParameters: {
                                    'chatUser': serializeParam(
                                      chatInfo.otherUsers.length == 1
                                          ? chatInfo.otherUsersList.first
                                          : null,
                                      ParamType.Document,
                                    ),
                                    'chatRef': serializeParam(
                                      chatInfo.chatRecord.reference,
                                      ParamType.DocumentReference,
                                    ),
                                  }.withoutNulls,
                                  extra: <String, dynamic>{
                                    'chatUser': chatInfo.otherUsers.length == 1
                                        ? chatInfo.otherUsersList.first
                                        : null,
                                  },
                                ),
                                lastChatText: chatInfo.chatPreviewMessage(),
                                lastChatTime:
                                    chatPreviewChatsRecord.lastMessageTime,
                                seen: chatPreviewChatsRecord.lastMessageSeenBy.contains(currentUserReference),
                                title: chatInfo.chatPreviewTitle(),
                                userProfilePic: chatInfo.chatPreviewPic(),
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                unreadColor:
                                    FlutterFlowTheme.of(context).secondary,
                                titleTextStyle: GoogleFonts.getFont(
                                  'Outfit',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14.0,
                                ),
                                dateTextStyle: GoogleFonts.getFont(
                                  'Outfit',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14.0,
                                ),
                                previewTextStyle: GoogleFonts.getFont(
                                  'Outfit',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14.0,
                                ),
                                contentPadding: const EdgeInsetsDirectional.fromSTEB(
                                    12.0, 3.0, 12.0, 3.0),
                                borderRadius: BorderRadius.circular(0.0),
                              );
                            },
                          );
                        },
                      );
                    },
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
