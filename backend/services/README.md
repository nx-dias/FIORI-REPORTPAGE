# Service Bindings

Os dois serviços são publicados como **OData V2 - UI**, versão 1.0.0, estado de API "Not Released" (uso interno), e estão com o endpoint local **publicado**.

## ZGDSSB_C_USERS

- **Service Definition:** ZGDSSD_C_USERS
- **Service URL:** `/sap/opu/odata/sap/ZGDSSB_C_USERS`
- **Consumido por:** app Fiori Elements "Base Conhecimento (Usuário)"
- **Entity sets:**

| Entity set | Papel | Associação |
|---|---|---|
| BaseConhecimentoUser | Entidade raiz: usuário (e-mail, nome completo, flag Isnew) | `to_user_tools` (composição, aponta para as ferramentas do usuário) |
| UserFerramentas | Entidade filha: ferramentas do usuário (conhecimento, interesse, treinamento) | `to_user` (volta para o usuário) |
| ZGDSCDS_FERRAMENTAS_VH | Value help de ferramentas | - |
| ZGDSCDS_NIVEL_GERAL_VH | Value help dos níveis (Nenhum, Baixo, Médio, Alto) | - |
| ZGDSCDS_UNIQUE_USER | Value help de usuários únicos | - |

## ZGDSSB_C_TOOLS

- **Service Definition:** ZGDSSD_C_TOOLS
- **Service URL:** `/sap/opu/odata/sap/ZGDSSB_C_TOOLS`
- **Consumido por:** app Fiori Elements "Base Ferramentas"
- **Entity sets:**

| Entity set | Papel |
|---|---|
| BaseFerramenta | Cadastro das ferramentas disponíveis |
