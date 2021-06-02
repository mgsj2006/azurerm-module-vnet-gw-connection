
# Modulo - Vnet Gateway Connection
[![Avanade](https://img.shields.io/badge/create%20by-Avanade-orange)](https://www.avanade.com/pt-br/about-avanade) [![HCL](https://img.shields.io/badge/language-HCL-blueviolet)](https://www.terraform.io/)
[![Azure](https://img.shields.io/badge/provider-Azure-blue)](https://registry.terraform.io/providers/hashicorp/azurerm/latest)

Modulo desenvolvido para facilitar a criação de uma Connection

## Compatibilidade de Versão

| Versão do Modulo | Versão Terraform | Versão AzureRM |
|----------------|-------------------| --------------- |
| >= 1.x.x       | 0.14.x            | >= 2.46         |

## Especificando versão

Para evitar que seu código receba atualizações automáticas do modulo, é preciso informar na chave `source` do bloco do module a versão desejada, utilizando o parametro `?ref=***` no final da url. conforme pode ser visto no exemplo abaixo.

## Exemplo de uso


```hcl
module "connection_1" {
  source           = "git::https://github.com/mgsj2006/azurerm-module-vnet-gw-connection.git?ref=v0.1.0"
  name             = "connection_1"
  type             = "ExpressRoute"
  vnet_gw_id       = "/subscriptions/xxxxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/resource-group/providers/Microsoft.Network/virtualNetworkGateways/vnet_gw"
  express_route_id = data.azurerm_express_route_circuit.express_route.id
  tags             = {
    area        = "infraestructure"
  }
}
```

## Entrada de Valores

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| name | nome que será dado ao recurso | `string` | n/a | yes |
| rg_name | nome do resource group onde os recursos serão alocados | `string` | n/a | yes |
| tags | Tags adicionais | `map(string)` | `{}` | No |
| type | tipo de conexão | `string` | ExpressRoute | No |
| location | Região do Azure | `string` | n/a | yes |
| vnet_gw_id | ID da Virtual Network Gateway | `string` | n/a | yes |
| express_route_id | ID do Express Route | `string` | null | No |


## Saída de Valores

| Name | Description |
|------|-------------|
| id | ID gerada após a criação do recurso |

## Documentação de Referência

Terraform Vnet Gateway Connection: [https://www.terraform.io/providers/azurerm/latest/docs/resources/virtual_network_gateway_connection](https://www.terraform.io/providers/azurerm/latest/docs/resources/virtual_network_gateway_connection)
