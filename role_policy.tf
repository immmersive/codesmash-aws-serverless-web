resource "aws_iam_role_policy_attachment" "role_policy" {

    role            = aws_iam_role.role.id
    policy_arn      = aws_iam_policy.policy.id
} 
