@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consume Usuário e Ferramenta'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZGDSCDS_C_USER_TOOL
 as projection on ZGDSCDS_I_USER_TOOL
{
    key Userid,
    key Toolsid,
    Toolname,
    Knowledge,
    Interest,
    Training,
    Lastchangedat,
    /* Associations */
    _user: redirected to parent ZGDSCDS_C_USER
}
