
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
output "tfrontend" {
  value = aws_instance.tforntend.public_ip
}

resource "aws_instance" "tmongodb" {
  ami           = data.aws_ami.centos.image_id

  instance_type = "t3.micro"

  tags = {
    Name = "tmongodb"
  }
}
resource "aws_instance" "tcatalogue" {
  ami           = data.aws_ami.centos.image_id

  instance_type = "t3.micro"

  tags = {
    Name = "tcatalogue"
  }
}
resource "aws_instance" "tredis" {
  ami           = data.aws_ami.centos.image_id

  instance_type = "t3.micro"

  tags = {
    Name = "tredis"
  }
}
resource "aws_instance" "tuser" {
  ami           = data.aws_ami.centos.image_id

  instance_type = "t3.micro"

  tags = {
    Name = "tuser"
  }
}
resource "aws_instance" "tcart" {
  ami           = data.aws_ami.centos.image_id

  instance_type = "t3.micro"

  tags = {
    Name = "tcart"
  }
}
resource "aws_instance" "tmysql" {
  ami           = data.aws_ami.centos.image_id

  instance_type = "t3.micro"

  tags = {
    Name = "tmysql"
  }
}
resource "aws_instance" "tshipping" {
  ami           = data.aws_ami.centos.image_id

  instance_type = "t3.micro"

  tags = {
    Name = "tshipping"
  }
}
resource "aws_instance" "trabbitmq" {
  ami           = data.aws_ami.centos.image_id

  instance_type = "t3.micro"

  tags = {
    Name = "trabbitmq"
  }
}
resource "aws_instance" "tpayment" {
  ami           = data.aws_ami.centos.image_id

  instance_type = "t3.micro"

  tags = {
    Name = "tpayment"
  }
}