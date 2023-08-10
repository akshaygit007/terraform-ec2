module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"

  name = "my-instance-using-jenkins"

  instance_type          = var.instance_type
  key_name               = "testing"
  monitoring             = false
  vpc_security_group_ids = ["sg-0ec3918ff63f2fb68"]
  subnet_id              = "subnet-051d92741b018b6e7"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}