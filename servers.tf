
data "aws_ami" "centos" {
  owners           = ["973714476881"]
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
}



resource "aws_instance" "tforntend" {
  ami           = data.aws_ami.centos.image_id

  instance_type = "t3.micro"

  tags = {
    Name = "tfrontend"
  }
}
resource "aws_route53_record" "tfrontend" {
  zone_id = "Z01402092ZQKRG6BF9A8D"
  name    = "tfrontend.sambadevops.online"
  type    = "A"
  ttl     = 30
  records = [aws_instance.tforntend.private_ip]
}

resource "aws_instance" "tmongodb" {
  ami           = data.aws_ami.centos.image_id

  instance_type = "t3.micro"

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

  instance_type = "t3.micro"

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

  instance_type = "t3.micro"

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

  instance_type = "t3.micro"

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

  instance_type = "t3.micro"

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

  instance_type = "t3.micro"

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

  instance_type = "t3.micro"

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

  instance_type = "t3.micro"

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

  instance_type = "t3.micro"

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