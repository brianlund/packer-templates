# packer-templates


Generic windows template to build an AMI using packer and the amazon-ebs builder.
The following variables need to be passed from the environment/CI server:

* AWS_ACCESS_KEY_ID
* AWS_SECRET_ACCESS_KEY
* AWS_SESSION_TOKEN
* aws_ami
* aws_vpc_id
* aws_subnet
* aws_instance_profile
* chef_run_list
* chef_server_url
* chef_environment

assume-role.sh contains a sample script for assuming a cross account IAM role that can be used to launch the builder instance in another account, it will set the AWS_ACCESS_KEY_ID, AWS_SECRET_ACCESS_KEY and AWS_SESSION_TOKEN variables.

In addition the host running packer needs a validator secret key available, the path is currently hardcoded in the template.
