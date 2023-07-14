module apps.operations;

mixin(ImportPhobos!());

// Dub
public import vibe.d;

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

public {
  import apps.operations.controllers;
  import apps.operations.helpers;
  import apps.operations.routers;
  import apps.operations.tests;
  import apps.operations.views;
}

DApp operationsApp;
static this() {
  App("operationsApp", "/apps/operations")
      .importTranslations()
      .addRoutes(
        Route("", HTTPMethod.GET, IndexPageController),
        Route("/", HTTPMethod.GET, IndexPageController)
      )
    );
}
