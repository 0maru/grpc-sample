package aws

import (
	"context"
	"fmt"
	"github.com/aws/aws-sdk-go-v2/aws"
	"github.com/aws/aws-sdk-go-v2/config"
	"github.com/aws/aws-sdk-go-v2/credentials"
	"github.com/aws/aws-sdk-go-v2/service/s3"
	"io"
	"log"
	"os"
)

func UploadFile(reader io.Reader) {
	var bucketName = os.Getenv("BUCKET_NAME")
	var accountId = os.Getenv("ACCOUNT_ID")
	var accessKeyId = os.Getenv("ACCESS_KEY_ID")
	var accessKeySecret = os.Getenv("ACCESS_KEY_SECRET")

	r2Resolver := aws.EndpointResolverWithOptionsFunc(
		func(service, region string, options ...interface{}) (aws.Endpoint, error) {
			return aws.Endpoint{
				URL: fmt.Sprintf("https://%s.r2.cloudflarestorage.com", accountId),
			}, nil
		},
	)

	cfg, err := config.LoadDefaultConfig(context.TODO(),
		config.WithEndpointResolverWithOptions(r2Resolver),
		config.WithCredentialsProvider(
			credentials.NewStaticCredentialsProvider(
				accessKeyId,
				accessKeySecret,
				"",
			),
		),
		config.WithRegion("auto"),
	)
	if err != nil {
		log.Fatal(err)
	}

	client := s3.NewFromConfig(cfg)
	_, err = client.PutObject(
		context.TODO(),
		&s3.PutObjectInput{
			Bucket: &bucketName,
			Key:    aws.String("test2.jpg"),
			Body:   reader,
		},
	)
	if err != nil {
		log.Fatal(err)
	}
}
