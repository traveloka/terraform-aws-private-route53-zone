# Simple Example

## How to plan
```sh
terraform init
terraform plan
```

## Output
```
Terraform will perform the following actions:

  + module.test.aws_route53_zone.main
      id:                 <computed>
      comment:            "Example Private Histed Zone"
      force_destroy:      "false"
      name:               "example.domain.private"
      name_servers.#:     <computed>
      tags.%:             "4"
      tags.Description:   "Example Private Histed Zone"
      tags.Environment:   "production"
      tags.Name:          "example.domain.private"
      tags.ProductDomain: "xmp"
      vpc_id:             "vpc-12345678"
      vpc_region:         <computed>
      zone_id:            <computed>

  + module.test.aws_route53_zone_association.secondary[0]
      id:                 <computed>
      vpc_id:             "vpc-fedbca09"
      vpc_region:         <computed>
      zone_id:            "${aws_route53_zone.main.zone_id}"

  + module.test.aws_route53_zone_association.secondary[1]
      id:                 <computed>
      vpc_id:             "vpc-abcdef12"
      vpc_region:         <computed>
      zone_id:            "${aws_route53_zone.main.zone_id}"
```
