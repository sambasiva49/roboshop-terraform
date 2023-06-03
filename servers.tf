
data "aws_ami" "centos" {
  owners           = ["973714476881"]
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
}

data "aws_security_group" "allow-all" {
  name = "allow-all"
}
variable "instance_type" {
  default = "t3.small"
}

variable "components" {
  default = ["forntend","mongodb"]
}

resource "aws_instance" "instance" {
  count = length(var.components)
  ami           = data.aws_ami.centos.image_id
  instance_type = var.instance_type
  vpc_security_group_ids =[data.aws_security_group.allow-all.id]

  tags = {
    Name = var.components[count.index]
  }
}

/*
resource "aws_route53_record" "tfrontend" {
  zone_id = "Z01402092ZQKRG6BF9A8D"
  name    = "tfrontend.sambadevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.tforntend.private_ip]
}

resource "aws_instance" "tmongodb" {
  ami           = data.aws_ami.centos.image_id

  instance_type = var.instance_type
  vpc_security_group_ids =[data.aws_security_group.allow-all.id]
  tags = {
    Name = "tmongodb"
  }
}
resource "aws_route53_record" "tmongodb" {
  zone_id = "Z01402092ZQKRG6BF9A8D"
  name    = "tmongodb.sambadevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.tmongodb.private_ip]
}
resource "aws_instance" "tcatalogue" {
  ami           = data.aws_ami.centos.image_id

  instance_type = var.instance_type
  vpc_security_group_ids =[data.aws_security_group.allow-all.id]
  tags = {
    Name = "tcatalogue"
  }
}
resource "aws_route53_record" "tcatalogue" {
  zone_id = "Z01402092ZQKRG6BF9A8D"
  name    = "tcatalogue.sambadevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.tcatalogue.private_ip]
}

resource "aws_instance" "tredis" {
  ami           = data.aws_ami.centos.image_id

  instance_type = var.instance_type
  vpc_security_group_ids =[data.aws_security_group.allow-all.id]
  tags = {
    Name = "tredis"
  }
}

resource "aws_route53_record" "tredis" {
  zone_id = "Z01402092ZQKRG6BF9A8D"
  name    = "tredis.sambadevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.tredis.private_ip]
}
resource "aws_instance" "tuser" {
  ami           = data.aws_ami.centos.image_id

  instance_type = var.instance_type
  vpc_security_group_ids =[data.aws_security_group.allow-all.id]
  tags = {
    Name = "tuser"
  }
}

resource "aws_route53_record" "tuser" {
  zone_id = "Z01402092ZQKRG6BF9A8D"
  name    = "tuser.sambadevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.tuser.private_ip]
}
resource "aws_instance" "tcart" {
  ami           = data.aws_ami.centos.image_id

  instance_type = var.instance_type
  vpc_security_group_ids =[data.aws_security_group.allow-all.id]
  tags = {
    Name = "tcart"
  }
}

resource "aws_route53_record" "tcart" {
  zone_id = "Z01402092ZQKRG6BF9A8D"
  name    = "tcart.sambadevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.tcart.private_ip]
}
resource "aws_instance" "tmysql" {
  ami           = data.aws_ami.centos.image_id

  instance_type = var.instance_type
  vpc_security_group_ids =[data.aws_security_group.allow-all.id]
  tags = {
    Name = "tmysql"
  }
}

resource "aws_route53_record" "tmysql" {
  zone_id = "Z01402092ZQKRG6BF9A8D"
  name    = "tmysql.sambadevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.tmysql.private_ip]
}
resource "aws_instance" "tshipping" {
  ami           = data.aws_ami.centos.image_id

  instance_type = var.instance_type
  vpc_security_group_ids =[data.aws_security_group.allow-all.id]
  tags = {
    Name = "tshipping"
  }
}

resource "aws_route53_record" "tshipping" {
  zone_id = "Z01402092ZQKRG6BF9A8D"
  name    = "tshipping.sambadevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.tshipping.private_ip]
}
resource "aws_instance" "trabbitmq" {
  ami           = data.aws_ami.centos.image_id

  instance_type = var.instance_type
  vpc_security_group_ids =[data.aws_security_group.allow-all.id]
  tags = {
    Name = "trabbitmq"
  }
}

resource "aws_route53_record" "trabbitmq" {
  zone_id = "Z01402092ZQKRG6BF9A8D"
  name    = "trabbitmq.sambadevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.trabbitmq.private_ip]
}
resource "aws_instance" "tpayment" {
  ami           = data.aws_ami.centos.image_id

  instance_type = var.instance_type
  vpc_security_group_ids =[data.aws_security_group.allow-all.id]
  tags = {
    Name = "tpayment"
  }
}

resource "aws_route53_record" "tpayment" {
  zone_id = "Z01402092ZQKRG6BF9A8D"
  name    = "tpayment.sambadevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.tpayment.private_ip]
}
*/