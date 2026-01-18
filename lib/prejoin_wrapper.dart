import 'package:flutter/material.dart';
import 'package:livekit_components/livekit_components.dart';
import 'l10n/app_localizations.dart';

class PrejoinWrapper extends StatelessWidget {
  final String token;
  final String url;
  final Function(RoomContext roomCtx, String url, String token) onJoinPressed;

  const PrejoinWrapper({
    Key? key,
    required this.token,
    required this.url,
    required this.onJoinPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localizations = AppLocalizations.of(context)!;
    
    return Prejoin(
      token: token.isEmpty ? localizations.yourTokenHere : token,
      url: url.isEmpty ? localizations.yourUrlHere : url,
      onJoinPressed: onJoinPressed,
    );
  }
}