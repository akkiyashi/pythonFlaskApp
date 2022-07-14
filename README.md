# pythonFlaskApp
The ECR image was created using the following commands:
1. Login to ECR ---> aws ecr get-login-password --region eu-west-1 | docker login --username AWS --password-stdin account_id.dkr.ecr.eu-west-1.amazonaws.com
2. Build the docker image --> docker build -t flaskapp .
3. Tag the image ---> docker tag flaskapp:latest account_id.dkr.ecr.eu-west-1.amazonaws.com/flaskapp:latest
4. Push the Docker image ---> docker push account_id.dkr.ecr.eu-west-1.amazonaws.com/flaskapp:latest
