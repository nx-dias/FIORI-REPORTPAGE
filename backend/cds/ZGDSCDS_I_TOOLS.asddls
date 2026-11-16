@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Interface Ferramenta'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZGDSCDS_I_TOOLS
 as select from zgdst_tools

{
    key toolsid as Toolsid,
    toolname as Toolname,
    @Semantics.systemDateTime.localInstanceLastChangedAt: true
    lastchangedat as Lastchangedat
}
