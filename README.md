# terraform-aws-private-route53-zone

[![Release](https://img.shields.io/github/release/traveloka/terraform-aws-private-route53-zone.svg)](https://github.com/traveloka/terraform-aws-private-route53-zone/releases)
[![Last Commit](https://img.shields.io/github/last-commit/traveloka/terraform-aws-private-route53-zone.svg)](https://github.com/traveloka/terraform-aws-private-route53-zone/commits/master)
![Open Source Love](https://badges.frapsoft.com/os/v1/open-source.png?v=103)

## Description

Terraform module to create a private Route53 hosted zone

## Table of Content

- [Description](#Description)
- [Prerequisites](#Prerequisites)
- [Dependencies](#Dependencies)
- [Terraform Versions](#Terraform%20Versions)
- [Terraform Providers](#Terraform%20Providers)
- [Getting Started](#Getting_Started)
- [Inputs](#Inputs)
- [Outputs](#Outputs)
- [Contributing](#Contributing)
- [License](#License)
- [Acknowledgments](#Acknowledgments)

## Prerequisites

In order to provision this module, it is require some information from an existing resources as input parameter, those resources are:

- AWS VPC, input variable that require the information from this resource are, `main_vpc`, and `secondary_vpcs` 

## Dependencies

Doesn't have any dependencies to any other Terraform module

## Terraform Versions

Created and tested using Terraform version `0.11.14`

## Terraform Providers

| Name | Version |
| ---- | ------- |
| aws  | ~> 2.49 |

## Getting Started

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| environment | Environment this Route 53 zone belongs to | `string` | n/a | yes |
| force\_destroy | Whether to destroy all records inside if the hosted zone is deleted | `string` | `false` | no |
| main\_vpc | Main VPC ID that will be associated with this hosted zone | `string` | n/a | yes |
| name | Name of the hosted zone | `string` | n/a | yes |
| product\_domain | Abbreviation of the product domain this Route 53 zone belongs to | `string` | n/a | yes |
| secondary\_vpcs | List of VPCs that will also be associated with this zone | `list` | `[]` | no |

## Outputs

| Name | Description |
|------|-------------|
| zone\_id | The hosted zone id |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Contributing

This module accepting or open for any contributions from anyone, please see the [CONTRIBUTING.md](https://github.com/traveloka/terraform-aws-private-route53-zone/blob/master/CONTRIBUTING.md) for more detail about how to contribute to this module.

## License

This module is under Apache License 2.0 - see the [LICENSE](https://github.com/traveloka/terraform-aws-private-route53-zone/blob/master/LICENSE) file for details.