prakhar@lochan:~/TerraformTestDevOps$ terraform apply --auto-approve

Terraform used the selected providers to generate the following execution plan. Resource actions are indicated with the following symbols:

create
Terraform will perform the following actions:

module.MyALB.aws_lb.alb1 will be created
resource "aws_lb" "alb1" {
arn = (known after apply)

arn_suffix = (known after apply)

client_keep_alive = 3600

desync_mitigation_mode = "defensive"

dns_name = (known after apply)

drop_invalid_header_fields = false

enable_deletion_protection = false

enable_http2 = true

enable_tls_version_and_cipher_suite_headers = false

enable_waf_fail_open = false

enable_xff_client_port = false

enable_zonal_shift = false

enforce_security_group_inbound_rules_on_private_link_traffic = (known after apply)

id = (known after apply)

idle_timeout = 60

internal = (known after apply)

ip_address_type = (known after apply)

load_balancer_type = "application"

name = "myalbtest"

name_prefix = (known after apply)

preserve_host_header = false

region = "ap-south-1"

security_groups = (known after apply)

subnets = (known after apply)

tags_all = (known after apply)

vpc_id = (known after apply)

xff_header_processing_mode = "append"

zone_id = (known after apply)

subnet_mapping (known after apply) }

module.MyALB.aws_lb_listener.lis1 will be created
resource "aws_lb_listener" "lis1" {
arn = (known after apply)

id = (known after apply)

load_balancer_arn = (known after apply)

port = 80

protocol = (known after apply)

region = "ap-south-1"

routing_http_request_x_amzn_mtls_clientcert_header_name = (known after apply)

routing_http_request_x_amzn_mtls_clientcert_issuer_header_name = (known after apply)

routing_http_request_x_amzn_mtls_clientcert_leaf_header_name = (known after apply)

routing_http_request_x_amzn_mtls_clientcert_serial_number_header_name = (known after apply)

routing_http_request_x_amzn_mtls_clientcert_subject_header_name = (known after apply)

routing_http_request_x_amzn_mtls_clientcert_validity_header_name = (known after apply)

routing_http_request_x_amzn_tls_cipher_suite_header_name = (known after apply)

routing_http_request_x_amzn_tls_version_header_name = (known after apply)

routing_http_response_access_control_allow_credentials_header_value = (known after apply)

routing_http_response_access_control_allow_headers_header_value = (known after apply)

routing_http_response_access_control_allow_methods_header_value = (known after apply)

routing_http_response_access_control_allow_origin_header_value = (known after apply)

routing_http_response_access_control_expose_headers_header_value = (known after apply)

routing_http_response_access_control_max_age_header_value = (known after apply)

routing_http_response_content_security_policy_header_value = (known after apply)

routing_http_response_server_enabled = (known after apply)

routing_http_response_strict_transport_security_header_value = (known after apply)

routing_http_response_x_content_type_options_header_value = (known after apply)

routing_http_response_x_frame_options_header_value = (known after apply)

ssl_policy = (known after apply)

tags_all = (known after apply)

tcp_idle_timeout_seconds = (known after apply)

default_action {

order = (known after apply)
target_group_arn = (known after apply)
type = "forward" }
mutual_authentication (known after apply) }

module.MyALB.aws_lb_target_group.tg1 will be created
resource "aws_lb_target_group" "tg1" {
arn = (known after apply)

arn_suffix = (known after apply)

connection_termination = (known after apply)

deregistration_delay = "300"

id = (known after apply)

ip_address_type = (known after apply)

lambda_multi_value_headers_enabled = false

load_balancer_arns = (known after apply)

load_balancing_algorithm_type = (known after apply)

load_balancing_anomaly_mitigation = (known after apply)

load_balancing_cross_zone_enabled = (known after apply)

name = (known after apply)

name_prefix = (known after apply)

port = 80

preserve_client_ip = (known after apply)

protocol = "HTTP"

protocol_version = (known after apply)

proxy_protocol_v2 = false

region = "ap-south-1"

slow_start = 0

tags_all = (known after apply)

target_type = "instance"

vpc_id = (known after apply)

health_check {

enabled = true
healthy_threshold = 3
interval = 30
matcher = (known after apply)
path = "/"
port = "traffic-port"
protocol = "HTTP"
timeout = (known after apply)
unhealthy_threshold = 3 }
stickiness (known after apply)

target_failover (known after apply)

target_group_health (known after apply)

target_health_state (known after apply) }

module.MyALB.aws_security_group.albsg1 will be created
resource "aws_security_group" "albsg1" {
arn = (known after apply)
description = "Managed by Terraform"
egress = [
{
cidr_blocks = [
"0.0.0.0/0", ]
from_port = 0
ipv6_cidr_blocks = []
prefix_list_ids = []
protocol = "-1"
security_groups = []
self = false
to_port = 0
(1 unchanged attribute hidden)
}, ]
id = (known after apply)
ingress = [
{
cidr_blocks = [
"0.0.0.0/0", ]
from_port = 80
ipv6_cidr_blocks = []
prefix_list_ids = []
protocol = "tcp"
security_groups = []
self = false
to_port = 80
(1 unchanged attribute hidden)
}, ]
name = (known after apply)
name_prefix = (known after apply)
owner_id = (known after apply)
region = "ap-south-1"
revoke_rules_on_delete = false
tags_all = (known after apply)
vpc_id = (known after apply) }
module.MyEC2.aws_instance.web1 will be created
resource "aws_instance" "web1" {
ami = "ami-0f5ee92e2d63afc18"

arn = (known after apply)

associate_public_ip_address = (known after apply)

availability_zone = (known after apply)

disable_api_stop = (known after apply)

disable_api_termination = (known after apply)

ebs_optimized = (known after apply)

enable_primary_ipv6 = (known after apply)

get_password_data = false

host_id = (known after apply)

host_resource_group_arn = (known after apply)

iam_instance_profile = (known after apply)

id = (known after apply)

instance_initiated_shutdown_behavior = (known after apply)

instance_lifecycle = (known after apply)

instance_state = (known after apply)

instance_type = "t3.micro"

ipv6_address_count = (known after apply)

ipv6_addresses = (known after apply)

key_name = (known after apply)

monitoring = (known after apply)

outpost_arn = (known after apply)

password_data = (known after apply)

placement_group = (known after apply)

placement_partition_number = (known after apply)

primary_network_interface_id = (known after apply)

private_dns = (known after apply)

private_ip = (known after apply)

public_dns = (known after apply)

public_ip = (known after apply)

region = "ap-south-1"

secondary_private_ips = (known after apply)

security_groups = (known after apply)

source_dest_check = true

spot_instance_request_id = (known after apply)

subnet_id = (known after apply)

tags = {

"name" = "MyTerraTestEC2A" }
tags_all = {

"name" = "MyTerraTestEC2A" }
tenancy = (known after apply)

user_data = <<-EOT #!/bin/bash yum install -y nginx systemctl start nginx echo "hello from instance 1" > /usr/share/nginx/html/index.html EOT

user_data_base64 = (known after apply)

user_data_replace_on_change = false

vpc_security_group_ids = (known after apply)

capacity_reservation_specification (known after apply)

cpu_options (known after apply)

ebs_block_device (known after apply)

enclave_options (known after apply)

ephemeral_block_device (known after apply)

instance_market_options (known after apply)

maintenance_options (known after apply)

metadata_options (known after apply)

network_interface (known after apply)

private_dns_name_options (known after apply)

root_block_device (known after apply) }

module.MyEC2.aws_instance.web2 will be created
resource "aws_instance" "web2" {
ami = "ami-0f5ee92e2d63afc18"

arn = (known after apply)

associate_public_ip_address = (known after apply)

availability_zone = (known after apply)

disable_api_stop = (known after apply)

disable_api_termination = (known after apply)

ebs_optimized = (known after apply)

enable_primary_ipv6 = (known after apply)

get_password_data = false

host_id = (known after apply)

host_resource_group_arn = (known after apply)

iam_instance_profile = (known after apply)

id = (known after apply)

instance_initiated_shutdown_behavior = (known after apply)

instance_lifecycle = (known after apply)

instance_state = (known after apply)

instance_type = "t3.micro"

ipv6_address_count = (known after apply)

ipv6_addresses = (known after apply)

key_name = (known after apply)

monitoring = (known after apply)

outpost_arn = (known after apply)

password_data = (known after apply)

placement_group = (known after apply)

placement_partition_number = (known after apply)

primary_network_interface_id = (known after apply)

private_dns = (known after apply)

private_ip = (known after apply)

public_dns = (known after apply)

public_ip = (known after apply)

region = "ap-south-1"

secondary_private_ips = (known after apply)

security_groups = (known after apply)

source_dest_check = true

spot_instance_request_id = (known after apply)

subnet_id = (known after apply)

tags = {

"name" = "MyTerraTestEC2B" }
tags_all = {

"name" = "MyTerraTestEC2B" }
tenancy = (known after apply)

user_data = <<-EOT #!/bin/bash yum install -y nginx systemctl start nginx echo "hello from instance 2" > /usr/share/nginx/html/index.html EOT

user_data_base64 = (known after apply)

user_data_replace_on_change = false

vpc_security_group_ids = (known after apply)

capacity_reservation_specification (known after apply)

cpu_options (known after apply)

ebs_block_device (known after apply)

enclave_options (known after apply)

ephemeral_block_device (known after apply)

instance_market_options (known after apply)

maintenance_options (known after apply)

metadata_options (known after apply)

network_interface (known after apply)

private_dns_name_options (known after apply)

root_block_device (known after apply) }

module.MyEC2.aws_lb_target_group_attachment.attach1 will be created
resource "aws_lb_target_group_attachment" "attach1" {
id = (known after apply)
port = 80
region = "ap-south-1"
target_group_arn = (known after apply)
target_id = (known after apply) }
module.MyEC2.aws_lb_target_group_attachment.attach2 will be created
resource "aws_lb_target_group_attachment" "attach2" {
id = (known after apply)
port = 80
region = "ap-south-1"
target_group_arn = (known after apply)
target_id = (known after apply) }
module.MyEC2.aws_security_group.ec2sg1 will be created
resource "aws_security_group" "ec2sg1" {
arn = (known after apply)
description = "Managed by Terraform"
egress = [
{
cidr_blocks = [
"0.0.0.0/0", ]
from_port = 0
ipv6_cidr_blocks = []
prefix_list_ids = []
protocol = "-1"
security_groups = []
self = false
to_port = 0
(1 unchanged attribute hidden)
}, ]
id = (known after apply)
ingress = [
{
cidr_blocks = []
from_port = 22
ipv6_cidr_blocks = []
prefix_list_ids = []
protocol = "tcp"
security_groups = (known after apply)
self = false
to_port = 22
(1 unchanged attribute hidden)
},
{
cidr_blocks = []
from_port = 80
ipv6_cidr_blocks = []
prefix_list_ids = []
protocol = "tcp"
security_groups = (known after apply)
self = false
to_port = 80
(1 unchanged attribute hidden)
}, ]
name = (known after apply)
name_prefix = (known after apply)
owner_id = (known after apply)
region = "ap-south-1"
revoke_rules_on_delete = false
tags_all = (known after apply)
vpc_id = (known after apply) }
module.MyVPC.aws_eip.eip1 will be created
resource "aws_eip" "eip1" {
allocation_id = (known after apply)
arn = (known after apply)
association_id = (known after apply)
carrier_ip = (known after apply)
customer_owned_ip = (known after apply)
domain = (known after apply)
id = (known after apply)
instance = (known after apply)
ipam_pool_id = (known after apply)
network_border_group = (known after apply)
network_interface = (known after apply)
private_dns = (known after apply)
private_ip = (known after apply)
ptr_record = (known after apply)
public_dns = (known after apply)
public_ip = (known after apply)
public_ipv4_pool = (known after apply)
region = "ap-south-1"
tags_all = (known after apply) }
module.MyVPC.aws_internet_gateway.igw1 will be created
resource "aws_internet_gateway" "igw1" {
arn = (known after apply)
id = (known after apply)
owner_id = (known after apply)
region = "ap-south-1"
tags_all = (known after apply)
vpc_id = (known after apply) }
module.MyVPC.aws_nat_gateway.nat1 will be created
resource "aws_nat_gateway" "nat1" {
allocation_id = (known after apply)
association_id = (known after apply)
connectivity_type = "public"
id = (known after apply)
network_interface_id = (known after apply)
private_ip = (known after apply)
public_ip = (known after apply)
region = "ap-south-1"
secondary_private_ip_address_count = (known after apply)
secondary_private_ip_addresses = (known after apply)
subnet_id = (known after apply)
tags_all = (known after apply) }
module.MyVPC.aws_route.priv_route will be created
resource "aws_route" "priv_route" {
destination_cidr_block = "0.0.0.0/0"
id = (known after apply)
instance_id = (known after apply)
instance_owner_id = (known after apply)
nat_gateway_id = (known after apply)
network_interface_id = (known after apply)
origin = (known after apply)
region = "ap-south-1"
route_table_id = (known after apply)
state = (known after apply) }
module.MyVPC.aws_route.pub_route will be created
resource "aws_route" "pub_route" {
destination_cidr_block = "0.0.0.0/0"
gateway_id = (known after apply)
id = (known after apply)
instance_id = (known after apply)
instance_owner_id = (known after apply)
network_interface_id = (known after apply)
origin = (known after apply)
region = "ap-south-1"
route_table_id = (known after apply)
state = (known after apply) }
module.MyVPC.aws_route_table.priv_rt will be created
resource "aws_route_table" "priv_rt" {
arn = (known after apply)
id = (known after apply)
owner_id = (known after apply)
propagating_vgws = (known after apply)
region = "ap-south-1"
route = (known after apply)
tags_all = (known after apply)
vpc_id = (known after apply) }
module.MyVPC.aws_route_table.pub_rt will be created
resource "aws_route_table" "pub_rt" {
arn = (known after apply)
id = (known after apply)
owner_id = (known after apply)
propagating_vgws = (known after apply)
region = "ap-south-1"
route = (known after apply)
tags_all = (known after apply)
vpc_id = (known after apply) }
module.MyVPC.aws_route_table_association.priv_assoc1 will be created
resource "aws_route_table_association" "priv_assoc1" {
id = (known after apply)
region = "ap-south-1"
route_table_id = (known after apply)
subnet_id = (known after apply) }
module.MyVPC.aws_route_table_association.priv_assoc2 will be created
resource "aws_route_table_association" "priv_assoc2" {
id = (known after apply)
region = "ap-south-1"
route_table_id = (known after apply)
subnet_id = (known after apply) }
module.MyVPC.aws_route_table_association.pub_assoc1 will be created
resource "aws_route_table_association" "pub_assoc1" {
id = (known after apply)
region = "ap-south-1"
route_table_id = (known after apply)
subnet_id = (known after apply) }
module.MyVPC.aws_route_table_association.pub_assoc2 will be created
resource "aws_route_table_association" "pub_assoc2" {
id = (known after apply)
region = "ap-south-1"
route_table_id = (known after apply)
subnet_id = (known after apply) }
module.MyVPC.aws_subnet.priv1 will be created
resource "aws_subnet" "priv1" {
arn = (known after apply)
assign_ipv6_address_on_creation = false
availability_zone = "ap-south-1a"
availability_zone_id = (known after apply)
cidr_block = "10.5.3.0/24"
enable_dns64 = false
enable_resource_name_dns_a_record_on_launch = false
enable_resource_name_dns_aaaa_record_on_launch = false
id = (known after apply)
ipv6_cidr_block_association_id = (known after apply)
ipv6_native = false
map_public_ip_on_launch = false
owner_id = (known after apply)
private_dns_hostname_type_on_launch = (known after apply)
region = "ap-south-1"
tags_all = (known after apply)
vpc_id = (known after apply) }
module.MyVPC.aws_subnet.priv2 will be created
resource "aws_subnet" "priv2" {
arn = (known after apply)
assign_ipv6_address_on_creation = false
availability_zone = "ap-south-1b"
availability_zone_id = (known after apply)
cidr_block = "10.5.4.0/24"
enable_dns64 = false
enable_resource_name_dns_a_record_on_launch = false
enable_resource_name_dns_aaaa_record_on_launch = false
id = (known after apply)
ipv6_cidr_block_association_id = (known after apply)
ipv6_native = false
map_public_ip_on_launch = false
owner_id = (known after apply)
private_dns_hostname_type_on_launch = (known after apply)
region = "ap-south-1"
tags_all = (known after apply)
vpc_id = (known after apply) }
module.MyVPC.aws_subnet.pub1 will be created
resource "aws_subnet" "pub1" {
arn = (known after apply)
assign_ipv6_address_on_creation = false
availability_zone = "ap-south-1a"
availability_zone_id = (known after apply)
cidr_block = "10.5.1.0/24"
enable_dns64 = false
enable_resource_name_dns_a_record_on_launch = false
enable_resource_name_dns_aaaa_record_on_launch = false
id = (known after apply)
ipv6_cidr_block_association_id = (known after apply)
ipv6_native = false
map_public_ip_on_launch = true
owner_id = (known after apply)
private_dns_hostname_type_on_launch = (known after apply)
region = "ap-south-1"
tags_all = (known after apply)
vpc_id = (known after apply) }
module.MyVPC.aws_subnet.pub2 will be created
resource "aws_subnet" "pub2" {
arn = (known after apply)
assign_ipv6_address_on_creation = false
availability_zone = "ap-south-1b"
availability_zone_id = (known after apply)
cidr_block = "10.5.2.0/24"
enable_dns64 = false
enable_resource_name_dns_a_record_on_launch = false
enable_resource_name_dns_aaaa_record_on_launch = false
id = (known after apply)
ipv6_cidr_block_association_id = (known after apply)
ipv6_native = false
map_public_ip_on_launch = true
owner_id = (known after apply)
private_dns_hostname_type_on_launch = (known after apply)
region = "ap-south-1"
tags_all = (known after apply)
vpc_id = (known after apply) }
module.MyVPC.aws_vpc.main1 will be created
resource "aws_vpc" "main1" {
arn = (known after apply)
cidr_block = "10.5.0.0/16"
default_network_acl_id = (known after apply)
default_route_table_id = (known after apply)
default_security_group_id = (known after apply)
dhcp_options_id = (known after apply)
enable_dns_hostnames = (known after apply)
enable_dns_support = true
enable_network_address_usage_metrics = (known after apply)
id = (known after apply)
instance_tenancy = "default"
ipv6_association_id = (known after apply)
ipv6_cidr_block = (known after apply)
ipv6_cidr_block_network_border_group = (known after apply)
main_route_table_id = (known after apply)
owner_id = (known after apply)
region = "ap-south-1"
tags_all = (known after apply) }
Plan: 25 to add, 0 to change, 0 to destroy.

Changes to Outputs:

PrivateSubnetIDs = [
[
(known after apply),
(known after apply), ], ]
PublicSubnetIDs = [
[
(known after apply),
(known after apply), ], ]
alb_dns_name = (known after apply)
vpc_id = (known after apply) module.MyVPC.aws_eip.eip1: Creating... module.MyVPC.aws_vpc.main1: Creating... module.MyVPC.aws_eip.eip1: Creation complete after 1s [id=eipalloc-026b4c9f8704189de] module.MyVPC.aws_vpc.main1: Creation complete after 1s [id=vpc-08bdbd8e5a807f4ef] module.MyVPC.aws_internet_gateway.igw1: Creating... module.MyVPC.aws_route_table.pub_rt: Creating... module.MyVPC.aws_subnet.priv1: Creating... module.MyVPC.aws_subnet.pub1: Creating... module.MyVPC.aws_subnet.priv2: Creating... module.MyVPC.aws_subnet.pub2: Creating... module.MyVPC.aws_route_table.priv_rt: Creating... module.MyALB.aws_lb_target_group.tg1: Creating... module.MyALB.aws_security_group.albsg1: Creating... module.MyVPC.aws_route_table.pub_rt: Creation complete after 1s [id=rtb-0234b360c8b540e38] module.MyVPC.aws_internet_gateway.igw1: Creation complete after 1s [id=igw-06867b6ec740e4245] module.MyVPC.aws_route.pub_route: Creating... module.MyVPC.aws_subnet.priv2: Creation complete after 1s [id=subnet-07e7ea0a10aa879fb] module.MyVPC.aws_route_table.priv_rt: Creation complete after 1s [id=rtb-0bd5cbb2a0cc554b0] module.MyVPC.aws_route_table_association.priv_assoc2: Creating... module.MyALB.aws_lb_target_group.tg1: Creation complete after 1s [id=arn:aws:elasticloadbalancing:ap-south-1:582866710238:targetgroup/tf-20260428123142406900000003/57a7084dbee9bbed] module.MyVPC.aws_route_table_association.priv_assoc2: Creation complete after 0s [id=rtbassoc-06ab3df8b345d858b] module.MyVPC.aws_route.pub_route: Creation complete after 0s [id=r-rtb-0234b360c8b540e381080289494] module.MyALB.aws_security_group.albsg1: Creation complete after 3s [id=sg-00c3a9b024e502b18] module.MyEC2.aws_security_group.ec2sg1: Creating... module.MyVPC.aws_subnet.priv1: Creation complete after 4s [id=subnet-07ad45ca2454f41cc] module.MyVPC.aws_route_table_association.priv_assoc1: Creating... module.MyVPC.aws_route_table_association.priv_assoc1: Creation complete after 1s [id=rtbassoc-089030e005b1c1747] module.MyEC2.aws_security_group.ec2sg1: Creation complete after 2s [id=sg-0334456015b3f34bf] module.MyEC2.aws_instance.web1: Creating... module.MyEC2.aws_instance.web2: Creating... module.MyVPC.aws_subnet.pub1: Still creating... [00m10s elapsed] module.MyVPC.aws_subnet.pub2: Still creating... [00m10s elapsed] module.MyVPC.aws_subnet.pub1: Creation complete after 11s [id=subnet-08e3bc2f6a00a76a7] module.MyVPC.aws_route_table_association.pub_assoc1: Creating... module.MyVPC.aws_nat_gateway.nat1: Creating... module.MyVPC.aws_subnet.pub2: Creation complete after 11s [id=subnet-0b13c88de8df9706c] module.MyVPC.aws_route_table_association.pub_assoc2: Creating... module.MyALB.aws_lb.alb1: Creating... module.MyVPC.aws_route_table_association.pub_assoc1: Creation complete after 1s [id=rtbassoc-0609639f7e69f762b] module.MyVPC.aws_route_table_association.pub_assoc2: Creation complete after 1s [id=rtbassoc-087e7ba5902103215] module.MyEC2.aws_instance.web1: Still creating... [00m10s elapsed] module.MyEC2.aws_instance.web2: Still creating... [00m10s elapsed] module.MyEC2.aws_instance.web1: Creation complete after 12s [id=i-0c670ab388d303500] module.MyEC2.aws_lb_target_group_attachment.attach1: Creating... module.MyEC2.aws_lb_target_group_attachment.attach1: Creation complete after 0s [id=arn:aws:elasticloadbalancing:ap-south-1:582866710238:targetgroup/tf-20260428123142406900000003/57a7084dbee9bbed-20260428123159147400000009] module.MyEC2.aws_instance.web2: Creation complete after 12s [id=i-088b3ea6397ce9da1] module.MyEC2.aws_lb_target_group_attachment.attach2: Creating... module.MyEC2.aws_lb_target_group_attachment.attach2: Creation complete after 0s [id=arn:aws:elasticloadbalancing:ap-south-1:582866710238:targetgroup/tf-20260428123142406900000003/57a7084dbee9bbed-2026042812315933330000000a] module.MyVPC.aws_nat_gateway.nat1: Still creating... [00m10s elapsed] module.MyALB.aws_lb.alb1: Still creating... [00m10s elapsed] module.MyVPC.aws_nat_gateway.nat1: Still creating... [00m20s elapsed] module.MyALB.aws_lb.alb1: Still creating... [00m20s elapsed] module.MyVPC.aws_nat_gateway.nat1: Still creating... [00m30s elapsed] module.MyALB.aws_lb.alb1: Still creating... [00m30s elapsed] module.MyVPC.aws_nat_gateway.nat1: Still creating... [00m40s elapsed] module.MyALB.aws_lb.alb1: Still creating... [00m40s elapsed] module.MyVPC.aws_nat_gateway.nat1: Still creating... [00m50s elapsed] module.MyALB.aws_lb.alb1: Still creating... [00m50s elapsed] module.MyVPC.aws_nat_gateway.nat1: Still creating... [01m00s elapsed] module.MyALB.aws_lb.alb1: Still creating... [01m00s elapsed] module.MyVPC.aws_nat_gateway.nat1: Still creating... [01m10s elapsed] module.MyALB.aws_lb.alb1: Still creating... [01m10s elapsed] module.MyVPC.aws_nat_gateway.nat1: Still creating... [01m20s elapsed] module.MyALB.aws_lb.alb1: Still creating... [01m20s elapsed] module.MyVPC.aws_nat_gateway.nat1: Still creating... [01m30s elapsed] module.MyALB.aws_lb.alb1: Still creating... [01m30s elapsed] module.MyVPC.aws_nat_gateway.nat1: Creation complete after 1m34s [id=nat-048d1c90eddb3cf33] module.MyVPC.aws_route.priv_route: Creating... module.MyVPC.aws_route.priv_route: Creation complete after 1s [id=r-rtb-0bd5cbb2a0cc554b01080289494] module.MyALB.aws_lb.alb1: Still creating... [01m40s elapsed] module.MyALB.aws_lb.alb1: Still creating... [01m50s elapsed] module.MyALB.aws_lb.alb1: Still creating... [02m00s elapsed] module.MyALB.aws_lb.alb1: Still creating... [02m10s elapsed] module.MyALB.aws_lb.alb1: Still creating... [02m20s elapsed] module.MyALB.aws_lb.alb1: Still creating... [02m30s elapsed] module.MyALB.aws_lb.alb1: Creation complete after 2m32s [id=arn:aws:elasticloadbalancing:ap-south-1:582866710238:loadbalancer/app/myalbtest/e5e4c2497a8b3d1d] module.MyALB.aws_lb_listener.lis1: Creating... module.MyALB.aws_lb_listener.lis1: Creation complete after 0s [id=arn:aws:elasticloadbalancing:ap-south-1:582866710238:listener/app/myalbtest/e5e4c2497a8b3d1d/551c2bc038670fcf]
Apply complete! Resources: 25 added, 0 changed, 0 destroyed.

Outputs:

PrivateSubnetIDs = [ [ "subnet-07ad45ca2454f41cc", "subnet-07e7ea0a10aa879fb", ], ] PublicSubnetIDs = [ [ "subnet-08e3bc2f6a00a76a7", "subnet-0b13c88de8df9706c", ], ] alb_dns_name = "myalbtest-235969896.ap-south-1.elb.amazonaws.com" vpc_id = "vpc-08bdbd8e5a807f4ef"
<img width="1920" height="963" alt="image" src="https://github.com/user-attachments/assets/23feda5f-8820-4418-867a-5c37ddf7243a" />
<img width="1920" height="963" alt="image" src="https://github.com/user-attachments/assets/0f476739-fc6d-4cb0-bd10-01d699d16121" />
