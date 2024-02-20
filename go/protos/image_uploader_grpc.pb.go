// Code generated by protoc-gen-go-grpc. DO NOT EDIT.
// versions:
// - protoc-gen-go-grpc v1.2.0
// - protoc             v4.25.3
// source: protos/image_uploader.proto

package _go

import (
	context "context"
	grpc "google.golang.org/grpc"
	codes "google.golang.org/grpc/codes"
	status "google.golang.org/grpc/status"
)

// This is a compile-time assertion to ensure that this generated file
// is compatible with the grpc package it is being compiled against.
// Requires gRPC-Go v1.32.0 or later.
const _ = grpc.SupportPackageIsVersion7

// ImageUploaderClient is the client API for ImageUploader service.
//
// For semantics around ctx use and closing/ending streaming RPCs, please refer to https://pkg.go.dev/google.golang.org/grpc/?tab=doc#ClientConn.NewStream.
type ImageUploaderClient interface {
	UploadImage(ctx context.Context, in *UploadImageRequest, opts ...grpc.CallOption) (*UploadImageResponse, error)
}

type imageUploaderClient struct {
	cc grpc.ClientConnInterface
}

func NewImageUploaderClient(cc grpc.ClientConnInterface) ImageUploaderClient {
	return &imageUploaderClient{cc}
}

func (c *imageUploaderClient) UploadImage(ctx context.Context, in *UploadImageRequest, opts ...grpc.CallOption) (*UploadImageResponse, error) {
	out := new(UploadImageResponse)
	err := c.cc.Invoke(ctx, "/image_uploader.ImageUploader/UploadImage", in, out, opts...)
	if err != nil {
		return nil, err
	}
	return out, nil
}

// ImageUploaderServer is the server API for ImageUploader service.
// All implementations must embed UnimplementedImageUploaderServer
// for forward compatibility
type ImageUploaderServer interface {
	UploadImage(context.Context, *UploadImageRequest) (*UploadImageResponse, error)
	mustEmbedUnimplementedImageUploaderServer()
}

// UnimplementedImageUploaderServer must be embedded to have forward compatible implementations.
type UnimplementedImageUploaderServer struct {
}

func (UnimplementedImageUploaderServer) UploadImage(context.Context, *UploadImageRequest) (*UploadImageResponse, error) {
	return nil, status.Errorf(codes.Unimplemented, "method UploadImage not implemented")
}
func (UnimplementedImageUploaderServer) mustEmbedUnimplementedImageUploaderServer() {}

// UnsafeImageUploaderServer may be embedded to opt out of forward compatibility for this service.
// Use of this interface is not recommended, as added methods to ImageUploaderServer will
// result in compilation errors.
type UnsafeImageUploaderServer interface {
	mustEmbedUnimplementedImageUploaderServer()
}

func RegisterImageUploaderServer(s grpc.ServiceRegistrar, srv ImageUploaderServer) {
	s.RegisterService(&ImageUploader_ServiceDesc, srv)
}

func _ImageUploader_UploadImage_Handler(srv interface{}, ctx context.Context, dec func(interface{}) error, interceptor grpc.UnaryServerInterceptor) (interface{}, error) {
	in := new(UploadImageRequest)
	if err := dec(in); err != nil {
		return nil, err
	}
	if interceptor == nil {
		return srv.(ImageUploaderServer).UploadImage(ctx, in)
	}
	info := &grpc.UnaryServerInfo{
		Server:     srv,
		FullMethod: "/image_uploader.ImageUploader/UploadImage",
	}
	handler := func(ctx context.Context, req interface{}) (interface{}, error) {
		return srv.(ImageUploaderServer).UploadImage(ctx, req.(*UploadImageRequest))
	}
	return interceptor(ctx, in, info, handler)
}

// ImageUploader_ServiceDesc is the grpc.ServiceDesc for ImageUploader service.
// It's only intended for direct use with grpc.RegisterService,
// and not to be introspected or modified (even as a copy)
var ImageUploader_ServiceDesc = grpc.ServiceDesc{
	ServiceName: "image_uploader.ImageUploader",
	HandlerType: (*ImageUploaderServer)(nil),
	Methods: []grpc.MethodDesc{
		{
			MethodName: "UploadImage",
			Handler:    _ImageUploader_UploadImage_Handler,
		},
	},
	Streams:  []grpc.StreamDesc{},
	Metadata: "protos/image_uploader.proto",
}