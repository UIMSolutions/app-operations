module apps.operations;

mixin(ImportPhobos!());

// External
public {
  import vibe.d;
}

// UIM
public import uim.core;
public import uim.bootstrap;
public import uim.html;
public import uim.oop;
public import uim.models;
public import uim.apps;
public import web.controls;
public import uim.servers;

public import langs.javascript;

mixin(ImportAppPackages!"apps.operations");

DApp operationsApp;
static this() {
  // Create App
  auto myApp = App("operationsApp", "apps/operations");

  // Customize App
  with (myApp) {
    importTranslations;
    addControllers([
      "op.index": IndexPageController
    ]);
    addRoutes(
      Route("", HTTPMethod.GET, controller("op.index")),
      Route("/", HTTPMethod.GET, controller("op.index"))
    );
  }

  // Register App
  AppRegistry.register("apps.operations", myApp);
}
