resource "aws_instance" "tforntend" {
  ami           = "ami-0b5a2b5b8f2be4ec2"

  instance_type = "t3.micro"

  tags = {
    Name = "tfrontend"
  }
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