#Create a user for the CI/CD process for repo resume-challenge-code

resource "aws_iam_user" "cloud-challenge-cicd" {
  name = "cloud-challenge-cicd"
}

resource "aws_iam_user_policy" "cloud_challenge_cicd_ro" {
  user   = aws_iam_user.cloud-challenge-cicd.name
  policy = data.aws_iam_policy_document.cloud_challenge_cicd.json
}