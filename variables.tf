variable "name" {
  type = string
}
variable "location" {
  type = string
}
variable "rg_name" {
  type = string
}
variable "type" {
  type = string
  default = "ExpressRoute"
}
variable "vnet_gw_id" {
  type = string
}
variable "express_route_id" {
  type = string
  default = null
}
variable "tags" {
  type = map(any)
  default = {}
}