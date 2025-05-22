provider "aws" {
  #profile = "myaws"
  region = var.region

}

resource "aws_instance" "nginx-server" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = "Bos"
  vpc_security_group_ids = ["${aws_security_group.firewall.id}"]
  user_data              = file("nginx-script.sh")





  tags = {
    Name = "nginx_server1"
  }

}
