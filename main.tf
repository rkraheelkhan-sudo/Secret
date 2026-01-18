terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = "us-east-1" 
}

# Module ko call karna
module "my_web_server" {
  source        = "./modules/ec2"       # Module ka rasta
  ami_id        = "ami-0c55b159cbfafe1f0" # Ubuntu 22.04 ID
  instance_type = "t2.micro"            # Aap yahan t2.small bhi kar sakte hain (Dynamic)
  instance_name = "Raheel-Project-Server"
}
