# Simple Example

## How to plan
```sh
terraform init
terraform plan
```

## Output
```
An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  + module.test.aws_route53_zone.main
      id:             <computed>
      comment:        "Managed by Terraform"
      force_destroy:  "false"
      name:           "example.domain.private"
      name_servers.#: <computed>
      vpc_id:         "vpc-12345678"
      vpc_region:     <computed>
      zone_id:        <computed>

  + module.test.aws_route53_zone_association.secondary
      id:             <computed>
      vpc_id:         "abcdef12"
      vpc_region:     <computed>
      zone_id:        "${aws_route53_zone.main.zone_id}"


Plan: 2 to add, 0 to change, 0 to destroy.
```
