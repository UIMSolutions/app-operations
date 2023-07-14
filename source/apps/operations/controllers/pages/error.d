module apps.operations.controllers.pages.error;

import apps.operations;
@safe:

class DOPERATIONSErrorPageController : DAPPPageController {
  mixin(ControllerThis!("OPERATIONSErrorPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(OPERATIONSErrorView(this));
  }
}
mixin(ControllerCalls!("OPERATIONSErrorPageController"));
