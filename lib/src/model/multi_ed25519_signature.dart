//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';
import 'package:one_of/any_of.dart';
// ignore_for_file: unused_element, unused_import

part 'multi_ed25519_signature.g.dart';

/// Multi ed25519 signature, please refer to https://github.com/aptos-labs/aptos-core/tree/main/specifications/crypto#multi-signatures for more details.
///
/// Properties:
/// * [type]
/// * [publicKeys] - all public keys of the sender account
/// * [signatures] - signatures created based on the `threshold`
/// * [threshold] - The threshold of the multi ed25519 account key.
/// * [bitmap] - All bytes data are represented as hex-encoded string prefixed with `0x` and fulfilled with two hex digits per byte.  Different with `Address` type, hex-encoded bytes should not trim any zeros.
@BuiltValue()
abstract class MultiEd25519Signature
    implements Built<MultiEd25519Signature, MultiEd25519SignatureBuilder> {
  @BuiltValueField(wireName: r'type')
  String get type;

  /// all public keys of the sender account
  @BuiltValueField(wireName: r'public_keys')
  BuiltList<String> get publicKeys;

  /// signatures created based on the `threshold`
  @BuiltValueField(wireName: r'signatures')
  BuiltList<String> get signatures;

  /// The threshold of the multi ed25519 account key.
  @BuiltValueField(wireName: r'threshold')
  int get threshold;

  /// All bytes data are represented as hex-encoded string prefixed with `0x` and fulfilled with two hex digits per byte.  Different with `Address` type, hex-encoded bytes should not trim any zeros.
  @BuiltValueField(wireName: r'bitmap')
  String get bitmap;

  MultiEd25519Signature._();

  factory MultiEd25519Signature(
      [void updates(MultiEd25519SignatureBuilder b)]) = _$MultiEd25519Signature;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(MultiEd25519SignatureBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<MultiEd25519Signature> get serializer =>
      _$MultiEd25519SignatureSerializer();
}

class _$MultiEd25519SignatureSerializer
    implements PrimitiveSerializer<MultiEd25519Signature> {
  @override
  final Iterable<Type> types = const [
    MultiEd25519Signature,
    _$MultiEd25519Signature
  ];

  @override
  final String wireName = r'MultiEd25519Signature';

  Iterable<Object?> _serializeProperties(
      Serializers serializers, MultiEd25519Signature object,
      {FullType specifiedType = FullType.unspecified}) sync* {
    yield r'type';
    yield serializers.serialize(object.type,
        specifiedType: const FullType(String));
    yield r'public_keys';
    yield serializers.serialize(object.publicKeys,
        specifiedType: const FullType(BuiltList, [FullType(String)]));
    yield r'signatures';
    yield serializers.serialize(object.signatures,
        specifiedType: const FullType(BuiltList, [FullType(String)]));
    yield r'threshold';
    yield serializers.serialize(object.threshold,
        specifiedType: const FullType(int));
    yield r'bitmap';
    yield serializers.serialize(object.bitmap,
        specifiedType: const FullType(String));
  }

  @override
  Object serialize(Serializers serializers, MultiEd25519Signature object,
      {FullType specifiedType = FullType.unspecified}) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified,
      required List<Object?> serializedList,
      required MultiEd25519SignatureBuilder result,
      required List<Object?> unhandled}) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.type = valueDes;
          break;
        case r'public_keys':
          final valueDes = serializers.deserialize(value,
                  specifiedType: const FullType(BuiltList, [FullType(String)]))
              as BuiltList<String>;
          result.publicKeys.replace(valueDes);
          break;
        case r'signatures':
          final valueDes = serializers.deserialize(value,
                  specifiedType: const FullType(BuiltList, [FullType(String)]))
              as BuiltList<String>;
          result.signatures.replace(valueDes);
          break;
        case r'threshold':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          result.threshold = valueDes;
          break;
        case r'bitmap':
          final valueDes = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          result.bitmap = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  MultiEd25519Signature deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = MultiEd25519SignatureBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(serializers, serialized,
        specifiedType: specifiedType,
        serializedList: serializedList,
        unhandled: unhandled,
        result: result);
    return result.build();
  }
}
