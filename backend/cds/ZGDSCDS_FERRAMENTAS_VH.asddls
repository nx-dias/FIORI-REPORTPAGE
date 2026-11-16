@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AbapCatalog.sqlViewName: 'ZGDSVHTOOLS'

@AccessControl.authorizationCheck: #NOT_REQUIRED

@EndUserText.label: 'Value Help Ferramentas'

@Metadata.ignorePropagatedAnnotations: true

@Search.searchable: true

define view ZGDSCDS_FERRAMENTAS_VH
  as select from zgdst_tools

{
      @UI.hidden: true
  key toolsid  as Toolsid,

      @Search.defaultSearchElement: true
      toolname as Toolname
}
