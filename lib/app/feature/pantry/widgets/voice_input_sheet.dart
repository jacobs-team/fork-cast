import 'dart:async';

import 'package:flutter/material.dart';
import 'package:speech_to_text/speech_to_text.dart';

/// Modal bottom sheet for voice-based pantry item input.
class VoiceInputSheet extends StatefulWidget {
  /// Creates voice input sheet.
  const VoiceInputSheet({required this.onResult, super.key});

  /// Called with the transcribed text when the user finishes speaking.
  final ValueChanged<String> onResult;

  @override
  State<VoiceInputSheet> createState() => _VoiceInputSheetState();
}

class _VoiceInputSheetState extends State<VoiceInputSheet> {
  final _speech = SpeechToText();
  String _transcription = '';
  bool _isListening = false;
  bool _isAvailable = false;

  @override
  void initState() {
    super.initState();
    unawaited(_initSpeech());
  }

  Future<void> _initSpeech() async {
    final available = await _speech.initialize();
    if (mounted) {
      setState(() => _isAvailable = available);
      if (available) await _startListening();
    }
  }

  Future<void> _startListening() async {
    setState(() => _isListening = true);
    await _speech.listen(
      onResult: (result) {
        setState(() => _transcription = result.recognizedWords);
      },
    );
  }

  void _stopAndSubmit() {
    unawaited(_speech.stop());
    setState(() => _isListening = false);
    if (_transcription.isNotEmpty) {
      widget.onResult(_transcription);
    }
    Navigator.of(context).pop();
  }

  @override
  void dispose() {
    _speech.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: EdgeInsets.fromLTRB(
        24,
        24,
        24,
        24 + MediaQuery.of(context).viewInsets.bottom,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            _isListening
                ? 'Listening...'
                : _isAvailable
                    ? 'Tap the mic to start'
                    : 'Speech recognition not available',
            style: theme.textTheme.titleMedium,
          ),
          const SizedBox(height: 16),
          Container(
            width: double.infinity,
            constraints: const BoxConstraints(minHeight: 80),
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: theme.colorScheme.surfaceContainerHighest,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Text(
              _transcription.isEmpty
                  ? 'Say what items are in your kitchen...'
                  : _transcription,
              style: theme.textTheme.bodyLarge?.copyWith(
                color: _transcription.isEmpty
                    ? theme.colorScheme.outline
                    : null,
              ),
            ),
          ),
          const SizedBox(height: 24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              if (_isListening)
                IconButton.filledTonal(
                  iconSize: 48,
                  onPressed: () {
                    unawaited(_speech.stop());
                    setState(() => _isListening = false);
                  },
                  icon: const Icon(Icons.stop),
                )
              else if (_isAvailable)
                IconButton.filledTonal(
                  iconSize: 48,
                  onPressed: () => unawaited(_startListening()),
                  icon: const Icon(Icons.mic),
                ),
              if (_transcription.isNotEmpty)
                FilledButton(
                  onPressed: _stopAndSubmit,
                  child: const Text('Done'),
                ),
            ],
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}
