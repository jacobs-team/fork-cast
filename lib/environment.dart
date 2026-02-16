// coverage:ignore-file

/// Environment values provided at build/run time.
///
/// See  `launch.json` which injects `env.json`
abstract class EnvironmentConfig {
  /// Base URL for the API.
  static const apiDomain = String.fromEnvironment(
    'API_DOMAIN',
    defaultValue: 'https://coffee.alexflipnote.dev',
  );

  /// Base URL for the AI API (OpenAI).
  static const aiApiDomain = String.fromEnvironment(
    'AI_API_DOMAIN',
    defaultValue: 'https://api.openai.com',
  );

  /// API key for the AI service (OpenAI).
  static const aiApiKey = String.fromEnvironment('AI_API_KEY');

  /// e.g prod, dev etc.
  static late final String environment;
}
