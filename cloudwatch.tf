### CloudWatch Log group for container logs
resource "aws_cloudwatch_log_group" "ecs" {
  name              = "${var.namespace}-container-logs"
  retention_in_days = var.ecs_cloudwatch_log_retention

  tags = var.tags
}

resource "aws_cloudwatch_log_group" "userdata" {
  name              = "${var.namespace}-ecs-nodes-userdata"
  retention_in_days = var.userdata_cloudwatch_log_retention

  tags = var.tags
}
