class TheHelper {
  static Case customSwitch<CaseType, Case>(
    CaseType selectedCase,
    Map<CaseType, Case> cases, {
    required Case defaultCase,
  }) =>
      !cases.containsKey(selectedCase) ? defaultCase : cases[selectedCase]!;
}
