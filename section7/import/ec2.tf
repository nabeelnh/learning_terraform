# Create an EC2

resource "aws_instance" "app_server" {  
    ami           = "ami-0dbec48abfe298cab"  
    instance_type = "t2.micro"
    subnet_id     = "subnet-a3422dd9"
    
    tags = {    
        Name = "manual"  
    }
}

