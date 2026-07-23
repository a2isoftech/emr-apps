enum RunContext { portal, emrApps, weighbridge, cashier, portalQrLogin }

extension RunContextExtensions on RunContext {
  bool get isPortal =>
      this == RunContext.portal || this == RunContext.portalQrLogin;
}
