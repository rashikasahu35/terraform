resource "aws_instance" "ec2" {
  ami                         = "ami-09b0a86a2c84101e1"
  instance_type               = "t2.micro"
  subnet_id                   = aws_subnet.subnet2.id
  vpc_security_group_ids      = [aws_security_group.security_group.id]
  associate_public_ip_address = true
  key_name                    = "key-pair"

  tags = {
    project_name = var.project_name
    env          = var.env
  }

  connection {
    type        = "ssh"
    user        = "ubuntu"             
    private_key = file("${path.module}/key-pair.pem") 
    host        = self.public_ip
  }

  provisioner "file" {
    source      = "python-app.py"             
    destination = "/home/ubuntu/python-app.py" 
  }

    provisioner "remote-exec" {
    inline = [
      "echo 'Hello from the remote instance'",
      "sudo apt update -y", 
      "sudo apt-get install -y python3-pip", 
      "cd /home/ubuntu",
      "sudo pip3 install flask",
      "sudo python3 python-app.py",
    ]
  }

}
