import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart' as http;

/// A mixin that adds HTTP-related helpers.
abstract class HttpMixin {
  static final http.Client _client = new http.Client();
  static const _contentTypeHeader = "Content-Type";
  static const _jsonContentType = "application/json";

  static String baseUri = 'https://api.raygun.com';

  /// Determines whether the given HTTP status indicates success or not.
  bool isSuccessStatus(int status) {
    assert(status != null);
    return status >= HttpStatus.ok && status < HttpStatus.multipleChoices;
  }

  /// Verifies that [status] is indicative of success and throws a [HttpException] if it isn't.
  void verifySuccessStatus(int status, String path) {
    assert(status != null);
    assert(path != null);

    if (!isSuccessStatus(status)) {
      throw new HttpException("Status $status returned when invoking API with path '$path'.");
    }
  }

  /// Gets an HTTP response.
  ///
  /// The URI is constructed by concatenating [baseUri] and [path].
  Future<http.Response> get(String path, {Map<String, String> headers}) async {
    assert(baseUri != null);
    assert(baseUri[baseUri.length - 1] != "/", "The baseUri should not end with a slash ('/').");
    assert(path != null);
    assert(path.startsWith("/"), "The path should always start with a leading slash ('/').");

    const method = "GET";
    final uri = Uri.parse(baseUri + path);
    final request = new http.Request(method, uri)..encoding = utf8;

    headers = headers ?? <String, String>{};
    headers[_contentTypeHeader] = _jsonContentType;
    request.headers.addAll(headers);

    final streamedResponse = await _client.send(request);
    final response = await http.Response.fromStream(streamedResponse);

    return response;
  }

  /// Gets an HTTP response and verifies that it was successful.
  ///
  /// Calls [get] and then [verifySuccessStatus].
  Future<http.Response> getAndVerifySuccess(String path, {Map<String, String> headers}) async {
    final response = await get(path, headers: headers);
    verifySuccessStatus(response.statusCode, path);
    return response;
  }

  /// Posts an HTTP request.
  ///
  /// The URI is constructed by concatenating [baseUri] and [path].
  ///
  /// [body] sets the body of the request. It can be a [String] or a [List<int>].
  /// If it's a `String`, it's encoded using [encoding] and used as the body of
  /// the request. The content-type of the request will default to `"text/plain"`.
  ///
  /// If [body] is a `List`, it's used as a list of bytes for the body of the
  /// request.
  ///
  /// [encoding] defaults to [utf8].
  Future<http.Response> post(String path, {Map<String, String> headers, dynamic body, Encoding encoding}) async {
    assert(baseUri != null);
    assert(baseUri[baseUri.length - 1] != "/", "The baseUri should not end with a slash ('/').");
    assert(path != null);
    assert(path.startsWith("/"), "The path should always start with a leading slash ('/').");

    const method = "POST";
    final uri = Uri.parse(baseUri + path);
    final request = new http.Request(method, uri)..encoding = encoding ?? utf8;

    if (body is String) {
      request.body = body;
    } else if (body is List<int>) {
      request.bodyBytes = body;
    }

    headers = headers ?? <String, String>{};
    headers[_contentTypeHeader] = _jsonContentType;
    request.headers.addAll(headers);

    final streamedResponse = await _client.send(request);
    final response = await http.Response.fromStream(streamedResponse);

    return response;
  }

  /// Posts an HTTP request and verifies that it was successful.
  ///
  /// Calls [post] and then [verifySuccessStatus].
  Future<http.Response> postAndVerifySuccess(String path, {Map<String, String> headers, dynamic body, Encoding encoding}) async {
    final response = await post(path, headers: headers, body: body, encoding: encoding);
    verifySuccessStatus(response.statusCode, path);
    return response;
  }
}
