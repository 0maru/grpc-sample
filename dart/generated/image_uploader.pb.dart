//
//  Generated code. Do not modify.
//  source: image_uploader.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class UploadImageRequest extends $pb.GeneratedMessage {
  factory UploadImageRequest({
    $core.List<$core.int>? uploadFile,
  }) {
    final $result = create();
    if (uploadFile != null) {
      $result.uploadFile = uploadFile;
    }
    return $result;
  }
  UploadImageRequest._() : super();
  factory UploadImageRequest.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UploadImageRequest.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UploadImageRequest', package: const $pb.PackageName(_omitMessageNames ? '' : 'image_uploader'), createEmptyInstance: create)
    ..a<$core.List<$core.int>>(1, _omitFieldNames ? '' : 'uploadFile', $pb.PbFieldType.OY)
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UploadImageRequest clone() => UploadImageRequest()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UploadImageRequest copyWith(void Function(UploadImageRequest) updates) => super.copyWith((message) => updates(message as UploadImageRequest)) as UploadImageRequest;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UploadImageRequest create() => UploadImageRequest._();
  UploadImageRequest createEmptyInstance() => create();
  static $pb.PbList<UploadImageRequest> createRepeated() => $pb.PbList<UploadImageRequest>();
  @$core.pragma('dart2js:noInline')
  static UploadImageRequest getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UploadImageRequest>(create);
  static UploadImageRequest? _defaultInstance;

  @$pb.TagNumber(1)
  $core.List<$core.int> get uploadFile => $_getN(0);
  @$pb.TagNumber(1)
  set uploadFile($core.List<$core.int> v) { $_setBytes(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUploadFile() => $_has(0);
  @$pb.TagNumber(1)
  void clearUploadFile() => clearField(1);
}

class UploadImageResponse extends $pb.GeneratedMessage {
  factory UploadImageResponse({
    $core.String? url,
  }) {
    final $result = create();
    if (url != null) {
      $result.url = url;
    }
    return $result;
  }
  UploadImageResponse._() : super();
  factory UploadImageResponse.fromBuffer($core.List<$core.int> i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromBuffer(i, r);
  factory UploadImageResponse.fromJson($core.String i, [$pb.ExtensionRegistry r = $pb.ExtensionRegistry.EMPTY]) => create()..mergeFromJson(i, r);

  static final $pb.BuilderInfo _i = $pb.BuilderInfo(_omitMessageNames ? '' : 'UploadImageResponse', package: const $pb.PackageName(_omitMessageNames ? '' : 'image_uploader'), createEmptyInstance: create)
    ..aOS(1, _omitFieldNames ? '' : 'url')
    ..hasRequiredFields = false
  ;

  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.deepCopy] instead. '
  'Will be removed in next major version')
  UploadImageResponse clone() => UploadImageResponse()..mergeFromMessage(this);
  @$core.Deprecated(
  'Using this can add significant overhead to your binary. '
  'Use [GeneratedMessageGenericExtensions.rebuild] instead. '
  'Will be removed in next major version')
  UploadImageResponse copyWith(void Function(UploadImageResponse) updates) => super.copyWith((message) => updates(message as UploadImageResponse)) as UploadImageResponse;

  $pb.BuilderInfo get info_ => _i;

  @$core.pragma('dart2js:noInline')
  static UploadImageResponse create() => UploadImageResponse._();
  UploadImageResponse createEmptyInstance() => create();
  static $pb.PbList<UploadImageResponse> createRepeated() => $pb.PbList<UploadImageResponse>();
  @$core.pragma('dart2js:noInline')
  static UploadImageResponse getDefault() => _defaultInstance ??= $pb.GeneratedMessage.$_defaultFor<UploadImageResponse>(create);
  static UploadImageResponse? _defaultInstance;

  @$pb.TagNumber(1)
  $core.String get url => $_getSZ(0);
  @$pb.TagNumber(1)
  set url($core.String v) { $_setString(0, v); }
  @$pb.TagNumber(1)
  $core.bool hasUrl() => $_has(0);
  @$pb.TagNumber(1)
  void clearUrl() => clearField(1);
}


const _omitFieldNames = $core.bool.fromEnvironment('protobuf.omit_field_names');
const _omitMessageNames = $core.bool.fromEnvironment('protobuf.omit_message_names');
