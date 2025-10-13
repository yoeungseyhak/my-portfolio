import 'dart:developer';

logSuccess(String? text, {String? name}) {
  _debugLog(text, _LogType.success, name);
}

logWarning(String? text, {String? name}) {
  _debugLog(text, _LogType.warning, name);
}

logError(String? text, {String? name}) {
  _debugLog(text, _LogType.error, name);
}

logNormal(String? text, {String? name}) {
  _debugLog(text, _LogType.normal, name);
}

logWhite(String? text, {String? name}) {
  _debugLog(text, _LogType.white, name);
}

_debugLog(String? text, _LogType type, String? name) {
  switch (type) {
    case _LogType.success:
      _log('\x1B[32m$text\x1B[0m', name: name);
      break;
    case _LogType.warning:
      _log('\x1B[33m$text\x1B[0m', name: name);
      break;
    case _LogType.error:
      _log('\x1B[31m$text\x1B[0m', name: name);
      break;
    case _LogType.white:
      _log('\x1B[37m$text\x1B[0m', name: name);
      break;
    default:
      _log('\x1B[36m$text\x1B[0m', name: name);
  }
}

void _log(String text, {String? name}) => log(text, name: name ?? 'FMG');

enum _LogType {
  success,
  warning,
  error,
  normal,
  white,
}
