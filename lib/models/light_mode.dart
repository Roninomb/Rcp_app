enum LightMode {
  off,
  on,
  dimmable,
  automatic;

  String get displayName {
    switch (this) {
      case LightMode.off:
        return 'Apagado';
      case LightMode.on:
        return 'Prendido';
      case LightMode.dimmable:
        return 'Regulable';
      case LightMode.automatic:
        return 'Automático';
    }
  }
}