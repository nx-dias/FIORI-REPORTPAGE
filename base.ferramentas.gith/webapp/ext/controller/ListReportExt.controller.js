sap.ui.define([
    "sap/ui/core/Fragment",
    "sap/ui/model/json/JSONModel",
    "sap/m/MessageToast"
], function (Fragment, JSONModel, MessageToast) {
    "use strict";

    return {

        sPath: "",

        onEdit: function () {
            console.log("onEdit chamado");
            if (this._getSelectedRow()) {
                this._openDialog();
            } else {
                MessageToast.show("Selecione uma linha para editar.");
            }
        },

        _getModel: function (sModel) {
            var oView = this.getView();
            if (sModel === "modelView" && !oView.getModel("modelView")) {
                oView.setModel(new JSONModel({}), "modelView");
            }
            return oView.getModel(sModel);
        },

        _getSelectedRow: function () {
            var oTable = this.getView().byId("listReport").getTable();
            this.sPath = oTable.getSelectedContextPaths()[0];
            console.log("path selecionado:", this.sPath);
            if (!this.sPath) {
                return false;
            }
            var oData = this._getModel().getProperty(this.sPath);
            this._getModel("modelView").setData({
                Toolsid: oData.Toolsid,
                Toolname: oData.Toolname
            });
            return true;
        },

        _openDialog: function () {
            var oView = this.getView();

            if (!this._pDialog) {
                this._pDialog = Fragment.load({
                    id: oView.getId(),
                    name: "com.moovi.zui5.base.ferramentas.gds.fragment.DialogEdit",
                    controller: this
                }).then(function (oDialog) {
                    oView.addDependent(oDialog);
                    return oDialog;
                });
            }
            this._pDialog.then(function (oDialog) {
                oDialog.open();
            });
        },

        onSave: function () {
            var that = this;
            var sNome = this._getModel("modelView").getProperty("/Toolname");

            this._getModel().update(this.sPath, { Toolname: sNome }, {
                success: function () {
                    MessageToast.show("Salvo com sucesso.");
                    that.onClose();
                    that._getModel().refresh();
                },
                error: function () {
                    MessageToast.show("Erro ao salvar.");
                }
            });
        },

        onClose: function () {
            this._pDialog.then(function (oDialog) {
                oDialog.close();
            });
        }
    };
});