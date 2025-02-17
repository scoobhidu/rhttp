// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.7.1.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import '../lib.dart';
import 'client.dart';
import 'error.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide protected;
import 'stream.dart';
part 'http.freezed.dart';

// These functions are ignored because they are not marked as `pub`: `build_cancel_tokens`, `from_version`, `header_to_vec`, `make_http_request_helper`, `make_http_request_inner`, `make_http_request_receive_stream_inner`, `register_client_internal`, `to_method`
// These types are ignored because they are not used by any `pub` functions: `RequestCancelTokens`
// These function are ignored because they are on traits that is not defined in current crate (put an empty `#[frb]` on it to unignore): `clone`, `clone`, `clone`, `fmt`

Future<RequestClient> registerClient({required ClientSettings settings}) =>
    RustLib.instance.api.crateApiHttpRegisterClient(settings: settings);

RequestClient registerClientSync({required ClientSettings settings}) =>
    RustLib.instance.api.crateApiHttpRegisterClientSync(settings: settings);

Future<void> cancelRunningRequests({required RequestClient client}) =>
    RustLib.instance.api.crateApiHttpCancelRunningRequests(client: client);

Future<HttpResponse> makeHttpRequest(
        {RequestClient? client,
        ClientSettings? settings,
        required HttpMethod method,
        required String url,
        List<(String, String)>? query,
        HttpHeaders? headers,
        HttpBody? body,
        Dart2RustStreamReceiver? bodyStream,
        required HttpExpectBody expectBody,
        required FutureOr<void> Function(CancellationToken) onCancelToken,
        required bool cancelable}) =>
    RustLib.instance.api.crateApiHttpMakeHttpRequest(
        client: client,
        settings: settings,
        method: method,
        url: url,
        query: query,
        headers: headers,
        body: body,
        bodyStream: bodyStream,
        expectBody: expectBody,
        onCancelToken: onCancelToken,
        cancelable: cancelable);

Stream<Uint8List> makeHttpRequestReceiveStream(
        {RequestClient? client,
        ClientSettings? settings,
        required HttpMethod method,
        required String url,
        List<(String, String)>? query,
        HttpHeaders? headers,
        HttpBody? body,
        Dart2RustStreamReceiver? bodyStream,
        required FutureOr<void> Function(HttpResponse) onResponse,
        required FutureOr<void> Function(RhttpError) onError,
        required FutureOr<void> Function(CancellationToken) onCancelToken,
        required bool cancelable}) =>
    RustLib.instance.api.crateApiHttpMakeHttpRequestReceiveStream(
        client: client,
        settings: settings,
        method: method,
        url: url,
        query: query,
        headers: headers,
        body: body,
        bodyStream: bodyStream,
        onResponse: onResponse,
        onError: onError,
        onCancelToken: onCancelToken,
        cancelable: cancelable);

Future<void> cancelRequest({required CancellationToken token}) =>
    RustLib.instance.api.crateApiHttpCancelRequest(token: token);

@freezed
sealed class HttpBody with _$HttpBody {
  const HttpBody._();

  const factory HttpBody.text(
    String field0,
  ) = HttpBody_Text;
  const factory HttpBody.bytes(
    Uint8List field0,
  ) = HttpBody_Bytes;
  const factory HttpBody.bytesStream() = HttpBody_BytesStream;
  const factory HttpBody.form(
    Map<String, String> field0,
  ) = HttpBody_Form;
  const factory HttpBody.multipart(
    MultipartPayload field0,
  ) = HttpBody_Multipart;
}

enum HttpExpectBody {
  text,
  bytes,
  ;
}

@freezed
sealed class HttpHeaders with _$HttpHeaders {
  const HttpHeaders._();

  const factory HttpHeaders.map(
    Map<String, String> field0,
  ) = HttpHeaders_Map;
  const factory HttpHeaders.list(
    List<(String, String)> field0,
  ) = HttpHeaders_List;
}

enum HttpMethod {
  options,
  get_,
  post,
  put,
  delete,
  head,
  trace,
  connect,
  patch,
  ;
}

class HttpResponse {
  final List<(String, String)> headers;
  final HttpVersion version;
  final int statusCode;
  final HttpResponseBody body;

  const HttpResponse({
    required this.headers,
    required this.version,
    required this.statusCode,
    required this.body,
  });

  @override
  int get hashCode =>
      headers.hashCode ^ version.hashCode ^ statusCode.hashCode ^ body.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is HttpResponse &&
          runtimeType == other.runtimeType &&
          headers == other.headers &&
          version == other.version &&
          statusCode == other.statusCode &&
          body == other.body;
}

@freezed
sealed class HttpResponseBody with _$HttpResponseBody {
  const HttpResponseBody._();

  const factory HttpResponseBody.text(
    String field0,
  ) = HttpResponseBody_Text;
  const factory HttpResponseBody.bytes(
    Uint8List field0,
  ) = HttpResponseBody_Bytes;
  const factory HttpResponseBody.stream() = HttpResponseBody_Stream;
}

enum HttpVersion {
  http09,
  http10,
  http11,
  http2,
  http3,
  other,
  ;
}

enum HttpVersionPref {
  http10,
  http11,
  http2,
  http3,
  all,
  ;
}

class MultipartItem {
  final MultipartValue value;
  final String? fileName;
  final String? contentType;

  const MultipartItem({
    required this.value,
    this.fileName,
    this.contentType,
  });

  @override
  int get hashCode => value.hashCode ^ fileName.hashCode ^ contentType.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MultipartItem &&
          runtimeType == other.runtimeType &&
          value == other.value &&
          fileName == other.fileName &&
          contentType == other.contentType;
}

class MultipartPayload {
  final List<(String, MultipartItem)> parts;

  const MultipartPayload({
    required this.parts,
  });

  @override
  int get hashCode => parts.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MultipartPayload &&
          runtimeType == other.runtimeType &&
          parts == other.parts;
}

@freezed
sealed class MultipartValue with _$MultipartValue {
  const MultipartValue._();

  const factory MultipartValue.text(
    String field0,
  ) = MultipartValue_Text;
  const factory MultipartValue.bytes(
    Uint8List field0,
  ) = MultipartValue_Bytes;
  const factory MultipartValue.file(
    String field0,
  ) = MultipartValue_File;
}
