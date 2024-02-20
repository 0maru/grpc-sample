//
//  Generated code. Do not modify.
//  source: image_uploader.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:async' as $async;
import 'dart:core' as $core;

import 'package:grpc/service_api.dart' as $grpc;
import 'package:protobuf/protobuf.dart' as $pb;

import 'image_uploader.pb.dart' as $0;

export 'image_uploader.pb.dart';

@$pb.GrpcServiceName('image_uploader.ImageUploader')
class ImageUploaderClient extends $grpc.Client {
  static final _$uploadImage = $grpc.ClientMethod<$0.UploadImageRequest, $0.UploadImageResponse>(
      '/image_uploader.ImageUploader/UploadImage',
      ($0.UploadImageRequest value) => value.writeToBuffer(),
      ($core.List<$core.int> value) => $0.UploadImageResponse.fromBuffer(value));

  ImageUploaderClient($grpc.ClientChannel channel,
      {$grpc.CallOptions? options,
      $core.Iterable<$grpc.ClientInterceptor>? interceptors})
      : super(channel, options: options,
        interceptors: interceptors);

  $grpc.ResponseFuture<$0.UploadImageResponse> uploadImage($0.UploadImageRequest request, {$grpc.CallOptions? options}) {
    return $createUnaryCall(_$uploadImage, request, options: options);
  }
}

@$pb.GrpcServiceName('image_uploader.ImageUploader')
abstract class ImageUploaderServiceBase extends $grpc.Service {
  $core.String get $name => 'image_uploader.ImageUploader';

  ImageUploaderServiceBase() {
    $addMethod($grpc.ServiceMethod<$0.UploadImageRequest, $0.UploadImageResponse>(
        'UploadImage',
        uploadImage_Pre,
        false,
        false,
        ($core.List<$core.int> value) => $0.UploadImageRequest.fromBuffer(value),
        ($0.UploadImageResponse value) => value.writeToBuffer()));
  }

  $async.Future<$0.UploadImageResponse> uploadImage_Pre($grpc.ServiceCall call, $async.Future<$0.UploadImageRequest> request) async {
    return uploadImage(call, await request);
  }

  $async.Future<$0.UploadImageResponse> uploadImage($grpc.ServiceCall call, $0.UploadImageRequest request);
}
