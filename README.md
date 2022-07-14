# pythonFlaskApp
Need to create the ECR image manually and push it to the ECR repository.
Further once the image is pushed we need to add the image uri to the cloudformation template in the following code snippet

```
ContainerDefinitions:
        -
          Name: "FlaskApp"
          Image: "ECR image uri"
          Cpu: 256
          PortMappings:
            -
              ContainerPort: !Ref ContainerPort
              HostPort: !Ref HostPort
          Memory: 512
          Essential: true
```

The ECR image was created using the following commands:
1. Login to ECR ---> aws ecr get-login-password --region eu-west-1 | docker login --username AWS --password-stdin account_id.dkr.ecr.eu-west-1.amazonaws.com
2. Build the docker image --> docker build -t flaskapp .
3. Tag the image ---> docker tag flaskapp:latest account_id.dkr.ecr.eu-west-1.amazonaws.com/flaskapp:latest
4. Push the Docker image ---> docker push account_id.dkr.ecr.eu-west-1.amazonaws.com/flaskapp:latest
