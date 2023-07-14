module apps.operations.views.error;

import apps.operations;
@safe:

class DOPERATIONSErrorView : DView {
  mixin(ViewThis!("OPERATIONSErrorView"));

  override void beforeH5(STRINGAA options = null) {
    super.beforeH5(options);
  }

  override DH5Obj[] toH5(STRINGAA options = null) {
    debugMethodCall(moduleName!DOPERATIONSErrorView~":DOPERATIONSErrorView("~this.name~")::toH5");
    super.toH5(options);

    return [
      H5Div("APP Operations -> Error")
    ].toH5;
  }
}
mixin(ViewCalls!("OPERATIONSErrorView"));
