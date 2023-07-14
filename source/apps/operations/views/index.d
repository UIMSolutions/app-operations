module apps.operations.views.index;

import apps.operations;
@safe:

class DOPERATIONSIndexView : DView {
  mixin(ViewThis!("OPERATIONSIndexView"));

  override DH5Obj[] toH5(STRINGAA options = null) {
    debugMethodCall(moduleName!DOPERATIONSIndexView~":DOPERATIONSIndexView("~this.name~")::toH5");
    super.toH5(options);

    return [
      H5Div("APP operations -> Error")
    ].toH5;
  }
}
mixin(ViewCalls!("OPERATIONSIndexView"));
