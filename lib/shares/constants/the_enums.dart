enum Routes {
  home('/'),
  people('/detail');

  const Routes(this.value);
  final String value;
}

enum CompanyPropType { P, A, L, O }

enum PalowanType {
  interview('Interviewers'),
  onboarding('Onboarding Session'),
  newbee('May Newbees'),
  project('Working Partners'),
  more('More');

  const PalowanType(this.value);
  final String value;
}
