enum Environment { MOCK, DEVELOPMENT, STAGING, PRODUCTION }

const _env = String.fromEnvironment('env.mode', defaultValue: 'mock');

Environment get environment {
  const _envs = {
    'mock': Environment.MOCK,
    'dev': Environment.DEVELOPMENT,
    'staging': Environment.STAGING,
    'prod': Environment.PRODUCTION,
  };

  if (!_envs.containsKey(_env)) {
    throw Exception(
        "Invalid runtime environment: '$_env'. Available environments: ${_envs.keys.join(', ')}");
  }

  return _envs[_env]!;
}

extension EnvironmentX on Environment {
  bool get isMock => this == Environment.MOCK;

  bool get isDev => this == Environment.DEVELOPMENT;

  bool get isStaging => this == Environment.STAGING;

  bool get isProduction => this == Environment.PRODUCTION;

  bool get isDebugging {
    var condition = false;
    assert(() {
      condition = true;
      return condition;
    }());
    return condition;
  }

  String get value {
    return {
      Environment.MOCK: 'MOCK',
      Environment.DEVELOPMENT: 'DEV',
      Environment.STAGING: 'STAGING',
      Environment.PRODUCTION: 'PROD',
    }[this]!;
  }
}
