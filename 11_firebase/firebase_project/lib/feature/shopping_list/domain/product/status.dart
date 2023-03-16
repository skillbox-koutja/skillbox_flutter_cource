enum ProductStatus {
  initial,
  done,
  cancel;

  factory ProductStatus.fromString(String str) {
    return values.firstWhere(
      (e) => e.toString() == 'ProductStatus.$str',
      orElse: () => ProductStatus.initial,
    );
  }
}
