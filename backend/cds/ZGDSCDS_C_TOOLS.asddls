@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consume e Ferramenta'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZGDSCDS_C_TOOLS
 as projection on ZGDSCDS_I_TOOLS
{
    key Toolsid,
    Toolname,
    Lastchangedat
}
