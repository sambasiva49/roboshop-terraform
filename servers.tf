
data "aws_ami" "centos" {
  owners           = ["973714476881"]
  most_recent      = true
  name_regex       = "Centos-8-DevOps-Practice"
}

output "ami" {
  value = data.aws_ami.centos.image_id
}

resource "aws_instance" "tforntend" {
  ami           = "ami-0b5a2b5b8f2be4ec2"

  instance_type = "t3.micro"

  tags = {
    Name = "tfrontend"
  }
}
output "tfrontend" {
  value = aws_instance.tforntend.public_ip
}

resource "aws_instance" "tmongodb" {
  ami           = "ami-0b5a2b5b8f2be4ec2"

  instance_type = "t3.micro"

  tags = {
    Name = "tmongodb"
  }
}
resource "aws_instance" "tcatalogue" {
  ami           = "ami-0b5a2b5b8f2be4ec2"

  instance_type = "t3.micro"

  tags = {
    Name = "tcatalogue"
  }
}
resource "aws_instance" "tredis" {
  ami           = "ami-0b5a2b5b8f2be4ec2"

  instance_type = "t3.micro"

  tags = {
    Name = "tredis"
  }
}
resource "aws_instance" "tuser" {
  ami           = "ami-0b5a2b5b8f2be4ec2"

  instance_type = "t3.micro"

  tags = {
    Name = "tuser"
  }
}
resource "aws_instance" "tcart" {
  ami           = "ami-0b5a2b5b8f2be4ec2"

  instance_type = "t3.micro"

  tags = {
    Name = "tcart"
  }
}
resource "aws_instance" "tmysql" {
  ami           = "ami-0b5a2b5b8f2be4ec2"

  instance_type = "t3.micro"

  tags = {
    Name = "tmysql"
  }
}
resource "aws_instance" "tshipping" {
  ami           = "ami-0b5a2b5b8f2be4ec2"

  instance_type = "t3.micro"

  tags = {
    Name = "tshipping"
  }
}
resource "aws_instance" "trabbitmq" {
  ami           = "ami-0b5a2b5b8f2be4ec2"

  instance_type = "t3.micro"

  tags = {
    Name = "trabbitmq"
  }
}
resource "aws_instance" "tpayment" {
  ami           = "ami-0b5a2b5b8f2be4ec2"

  instance_type = "t3.micro"

  tags = {
    Name = "tpayment"
  }
}