resource "aws_instance" "zterraform" {
    instance_type = "t3.micro"
    ami = "ami-0f9708d1cd2cfee41"
    tags = {
         Name = "Terraform"
    }
   
  
}
resource "aws_instance" "oterraform" {
    instance_type = "t3.micro"
    ami = "ami-0f9708d1cd2cfee41"
    tags = {
         Name = "Oerraform"
    }
   
  
}