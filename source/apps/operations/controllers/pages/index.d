module apps.operations.controllers.pages.index;

import apps.operations;
@safe:

class DOPERATIONSIndexPageController : DAPPPageController {
  mixin(ControllerThis!("OPERATIONSIndexPageController"));

  override void initialize(Json configSettings = Json(null)) {
    super.initialize(configSettings);

    this
      .view(OPERATIONSIndexView(this));
  }
}
mixin(ControllerCalls!("OPERATIONSIndexPageController"));
