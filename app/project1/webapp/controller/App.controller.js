sap.ui.define([
  "sap/ui/core/mvc/Controller"
], (BaseController) => {
  "use strict";

  return BaseController.extend("project1.controller.App", {
      onInit() {
      },
      createForm:function() {
        const oRouter = this.getOwnerComponent().getRouter();
			oRouter.navTo("RouteView1");
      }
  });
});