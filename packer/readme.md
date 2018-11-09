##How to use Packer to Create the Node-Red AMI


- Replace these variables:${AWS_ACCESS_KEY_ID} ${AWS_SECRET_ACCESS_KEY} ${subnet_id} with your desired values
- This packer json is intended to be used on AWS Sao Paulo region, if you want to use in another region, please change following lines with proper values according to your desired region:
       "region": "sa-east-1"
       "base_ami": "ami-0f7c76bfc85e5b4ea"

- To build the AMI using packer just run the following command `packer build packer.json` inside ./packer/ directory.
