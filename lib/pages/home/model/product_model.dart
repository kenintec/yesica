enum ProductType {
  arroz,
  azucar,
  aceite,
}

extension ProductTypeExtension on ProductType {
  String get image {
    switch (this) {
      case ProductType.arroz:
        return 'assets/images/arroz.png';
      case ProductType.azucar:
        return 'assets/images/azucar.png';
      case ProductType.aceite:
        return 'assets/images/aceite.png';
    }
  }

  String get name {
    switch (this) {
      case ProductType.arroz:
        return 'Arroz Costeño 1kg';
      case ProductType.azucar:
        return 'Azúcar Cartavio 1kg';
      case ProductType.aceite:
        return 'Aceite Primor 1L';
    }
  }

  String get price {
    switch (this) {
      case ProductType.arroz:
        return 'S/ 5.00';
      case ProductType.azucar:
        return 'S/ 4.80';
      case ProductType.aceite:
        return 'S/ 9.99';
    }
  }

  String get brand {
    switch (this) {
      case ProductType.arroz:
        return 'Costeño';
      case ProductType.azucar:
        return 'Cartavio';
      case ProductType.aceite:
        return 'Primor';
    }
  }

  String get weight {
    switch (this) {
      case ProductType.arroz:
        return '1kg';
      case ProductType.azucar:
        return '1kg';
      case ProductType.aceite:
        return '1L';
    }
  }
}
