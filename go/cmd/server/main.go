package main

import (
	"bytes"
	"context"
	"flag"
	"fmt"
	"github.com/joho/godotenv"
	"google.golang.org/grpc"
	"log"
	"net"

	ac "github.com/0maru/gprc-sample/go/aws"
	pb "github.com/0maru/gprc-sample/go/protos"
)

var (
	port = flag.Int("port", 50052, "The server port")
)

type greeterServer struct {
	pb.UnimplementedGreeterServer
}

type imageUploaderServer struct {
	pb.UnimplementedImageUploaderServer
}

func (s *greeterServer) SayHello(ctx context.Context, in *pb.HelloRequest) (*pb.HelloReply, error) {
	log.Printf("Received: %v", in.GetName())
	return &pb.HelloReply{Message: "Hello " + in.GetName()}, nil
}

func (s *imageUploaderServer) UploadImage(ctx context.Context, in *pb.UploadImageRequest) (*pb.UploadImageResponse, error) {
	log.Printf("Received: %v", in.GetUploadFile())
	file := in.GetUploadFile()
	reader := bytes.NewReader(file)
	ac.UploadFile(reader)
	return &pb.UploadImageResponse{Url: "Image uploaded"}, nil
}

func main() {
	err := godotenv.Load("../.env")
	if err != nil {
		log.Fatal("Error loading .env file")
	}

	flag.Parse()
	lis, err := net.Listen("tcp", fmt.Sprintf(":%d", *port))
	if err != nil {
		log.Fatalf("failed to listen: %v", err)
	}
	s := grpc.NewServer()
	pb.RegisterGreeterServer(s, &greeterServer{})
	pb.RegisterImageUploaderServer(s, &imageUploaderServer{})
	log.Printf("server listening at %v", lis.Addr())
	if err := s.Serve(lis); err != nil {
		log.Fatalf("failed to serve: %v", err)
	}
}
