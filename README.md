# terraform-aws-private-route53-zone

[![Terraform Version](https://img.shields.io/badge/Terraform%20Version->=0.11.14,_<0.12.0-blue.svg)](https://releases.hashicorp.com/terraform/)
[![Release](https://img.shields.io/github/release/traveloka/terraform-aws-private-route53-zone.svg)](https://github.com/traveloka/terraform-aws-private-route53-zone/releases)
[![Last Commit](https://img.shields.io/github/last-commit/traveloka/terraform-aws-private-route53-zone.svg)](https://github.com/traveloka/terraform-aws-private-route53-zone/commits/master)
[![Issues](https://img.shields.io/github/issues/traveloka/terraform-aws-private-route53-zone.svg)](https://github.com/traveloka/terraform-aws-private-route53-zone/issues)
[![Pull Requests](https://img.shields.io/github/issues-pr/traveloka/terraform-aws-private-route53-zone.svg)](https://github.com/traveloka/terraform-aws-private-route53-zone/pulls)
[![License](https://img.shields.io/github/license/traveloka/terraform-aws-private-route53-zone.svg)](https://github.com/traveloka/terraform-aws-private-route53-zone/blob/master/LICENSE)
![Open Source Love](https://badges.frapsoft.com/os/v1/open-source.png?v=103)

## Table of Content

- [Prerequisites](#Prerequisites)
- [Quick Start](#Quick-Start)
- [Dependencies](#Dependencies)
- [Contributing](#Contributing)
- [Contributor](#Contributor)
- [License](#License)
- [Acknowledgments](#Acknowledgments)

## Prerequisites

- [Terraform](https://releases.hashicorp.com/terraform/). This module currently tested on `0.11.14`

## Quick Start
A terraform module to provision a Private Route53 Hosted Zone

### Examples

* [Simple Example](https://github.com/traveloka/terraform-aws-private-route53-zone/tree/master/examples/simple)

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| name | Name of the hosted zone. | `string` | n/a | yes |
| product_domain | Abbreviation of the product domain this Route 53 zone belongs to. | `string` | n/a | yes |
| environment | Environment this Route 53 zone belongs to. | `string` | n/a | yes |
| main_vpc | Main VPC ID that will be associated with this hosted zone. | `string` | n/a | yes |
| secondary_vpcs | List of VPCs that will also be associated with this zone. | `string` | n/a | yes |
| force_destroy | Whether to destroy all records inside if the hosted zone is deleted. | `string` | `false` | yes |

## Outputs

| Name | Description |
|------|-------------|
| zone_id | The hosted zone id. |

## Contributing

See [CONTRIBUTING.md](CONTRIBUTING.md)

## License

Apache 2 Licensed. See LICENSE for full details.

