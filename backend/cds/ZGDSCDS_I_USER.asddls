@AccessControl.authorizationCheck: #NOT_REQUIRED

@EndUserText.label: 'Interface Usuário'

@Metadata.ignorePropagatedAnnotations: true

define root view entity ZGDSCDS_I_USER
  as select from zgdst_user

  composition [0..*] of ZGDSCDS_I_USER_TOOL as _user_tools

{
  key userid        as Userid,

      email         as Email,
      fullname      as Fullname,
      isnew         as Isnew,

      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      lastchangedat as Lastchangedat,

      _user_tools // Make association public
}
