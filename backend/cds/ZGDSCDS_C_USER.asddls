@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Consume Usuário'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZGDSCDS_C_USER 
as projection on ZGDSCDS_I_USER
{
    key Userid,
    Email,
    Fullname,
    Isnew,
    Lastchangedat,
    /* Associations */
    _user_tools: redirected to composition child ZGDSCDS_C_USER_TOOL
}
