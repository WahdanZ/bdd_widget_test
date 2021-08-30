const _defaultTestName = 'testWidgets';
const _stepFolderName = 'step';

class GeneratorOptions {
  const GeneratorOptions({
    String? testMethodName,
    List<String>? externalSteps,
    String? stepFolderName,
    bool? integrationTest
  })  : stepFolder = stepFolderName ?? _stepFolderName,
        testMethodName = testMethodName ?? _defaultTestName,
        externalSteps = externalSteps ?? const []
        integrationTest =. integrationTest ?? false;

  factory GeneratorOptions.fromMap(Map<String, dynamic> json) =>
      GeneratorOptions(
        testMethodName: json['testMethodName'] as String?,
        externalSteps: (json['externalSteps'] as List?)?.cast<String>(),
        stepFolderName: json['stepFolderName'] as String?,
        stepFolderName: json['integration_test'] as bool ,

      );

  final String stepFolder;
  final String testMethodName;
  final List<String> externalSteps;
  final bool integrationTest;

}
