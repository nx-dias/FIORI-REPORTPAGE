@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AbapCatalog.sqlViewName: 'ZGDSRPBC2'

@AccessControl.authorizationCheck: #NOT_REQUIRED

@EndUserText.label: 'Relatório Base Conhecimento'

@OData.publish: true

@ObjectModel.compositionRoot: true
@ObjectModel.createEnabled: true
@ObjectModel.deleteEnabled: true
@ObjectModel.modelCategory: #BUSINESS_OBJECT
@ObjectModel.transactionalProcessingEnabled: true
@ObjectModel.updateEnabled: true
@ObjectModel.writeActivePersistence: 'zgdst_user'

define view ZGDSCDS_RPRT_BASE_CONH2
  as select from zgdst_user as _user

  association [0..*] to zgdst_usertoolv3 as _user_tools on $projection.Userid = _user_tools.userid

{
      @Consumption.valueHelpDefinition: [ { entity: { name: 'ZGDSCDS_USERS_VH', element: 'Userid' } } ]
      @UI.lineItem: [ { position: 10 } ]
      @UI.selectionField: [ { position: 10 } ]
  key _user.userid          as Userid,

      @UI.lineItem: [ { position: 30 } ]
      @UI.selectionField: [ { position: 20 } ]
      @Consumption.valueHelpDefinition: [ { entity: { name: 'ZGDSCDS_USERS_VH', element: 'Email' } } ]
      _user.email           as Email,

      @UI.lineItem: [ { position: 20 } ]
      _user.fullname        as Fullname,

      @UI.lineItem: [ { position: 40, label: 'Ferramenta' } ]
      @UI.selectionField: [ { position: 30 } ]
      @Consumption.valueHelpDefinition: [ { entity: { name: 'ZGDSCDS_TOOLS_VH', element: 'Toolname' } } ]
      @EndUserText.label: 'Nome Ferramenta'
      _user_tools.toolname  as Toolname,

      @UI.lineItem: [ { position: 50 } ]
      _user_tools.knowledge as Knowledge,

      @UI.lineItem: [ { position: 60 } ]
      _user_tools.interest  as Interest,

      @UI.lineItem: [ { position: 70, label: 'Treinamento' } ]
      @UI.selectionField: [ { position: 40 } ]
      @EndUserText.label: 'Posso dar Treinamento'
      _user_tools.training  as Training,

      _user_tools
}
