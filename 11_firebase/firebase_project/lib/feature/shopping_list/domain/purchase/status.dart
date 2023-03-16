enum PurchaseStatus {
  initial,
  done,
  canceled;

  factory PurchaseStatus.fromString(String str) {
    return values.firstWhere(
      (e) => e.toString() == 'PurchaseStatus.$str',
      orElse: () => PurchaseStatus.initial,
    );
  }
}
