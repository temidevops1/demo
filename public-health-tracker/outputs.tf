output "vpc_id" {
  value = data.aws_vpc.main.id
}

output "public_subnet_ids" {
  value = [aws_subnet.public_1.id, aws_subnet.public_2.id]
}

output "private_subnet_ids" {
  value = [aws_subnet.eks_private_1.id, aws_subnet.eks_private_2.id]
}

output "rds_private_subnet_ids" {
  value = [aws_subnet.rds_private_1.id, aws_subnet.rds_private_2.id]
}

output "eks_cluster_id" {
  value = aws_eks_cluster.eks.id
}

output "eks_cluster_endpoint" {
  value = aws_eks_cluster.eks.endpoint
}

output "eks_cluster_security_group" {
  value = aws_security_group.eks_cluster_sg.id
}

output "rds_db_endpoint" {
  value = aws_db_instance.health_db.endpoint
}

output "s3_bucket_name" {
  value = aws_s3_bucket.logs.bucket
}

#