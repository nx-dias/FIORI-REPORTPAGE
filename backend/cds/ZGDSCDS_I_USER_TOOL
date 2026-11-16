@AccessControl.authorizationCheck: #NOT_REQUIRED

@EndUserText.label: 'Interface Usuário e Ferramenta'

@Metadata.ignorePropagatedAnnotations: true

define view entity ZGDSCDS_I_USER_TOOL
  as select from zgdst_usertoolv3

  association to parent ZGDSCDS_I_USER as _user on $projection.Userid = _user.Userid

{
  key userid        as Userid,
  key toolsid       as Toolsid,

      toolname      as Toolname,
      knowledge     as Knowledge,
      interest      as Interest,
      training      as Training,

      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      lastchangedat as Lastchangedat,

      _user // Make association public
}
