# ENI (Elastic Network Interface) 모듈
# 
# 대부분의 ENI들은 AWS 서비스(ALB, ECS, RDS 등)에서 자동으로 관리됩니다.
# 수동으로 생성할 필요가 있는 ENI가 있다면 여기에 추가하세요.

# 예시: 수동으로 생성할 ENI가 필요한 경우
# resource "aws_network_interface" "example" {
#   subnet_id   = data.aws_subnet.example.id
#   private_ips = ["10.0.1.100"]
#   
#   tags = {
#     Name = "Example ENI"
#   }
# }
