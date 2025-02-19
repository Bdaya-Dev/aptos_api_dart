//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:aptos_api_dart/src/model/write_set_change.dart';
import 'package:aptos_api_dart/src/model/transaction_signature.dart';
import 'package:aptos_api_dart/src/model/block_metadata_transaction.dart';
import 'package:aptos_api_dart/src/model/genesis_transaction.dart';
import 'package:built_collection/built_collection.dart';
import 'package:aptos_api_dart/src/model/pending_transaction.dart';
import 'package:aptos_api_dart/src/model/event.dart';
import 'package:aptos_api_dart/src/model/user_transaction.dart';
import 'package:aptos_api_dart/src/model/transaction_payload.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/one_of.dart';
import 'package:one_of/any_of.dart';
// ignore_for_file: unused_element, unused_import

part 'transaction.g.dart';

/// Transaction
///
/// Properties:
/// * [type]
/// * [hash] - All bytes data are represented as hex-encoded string prefixed with `0x` and fulfilled with two hex digits per byte.  Different with `Address` type, hex-encoded bytes should not trim any zeros.
/// * [sender] - Hex-encoded 16 bytes Aptos account address.  Prefixed with `0x` and leading zeros are trimmed.  See [doc](https://diem.github.io/move/address.html) for more details.
/// * [sequenceNumber] - Unsigned int64 type value
/// * [maxGasAmount] - Unsigned int64 type value
/// * [gasUnitPrice] - Unsigned int64 type value
/// * [gasCurrencyCode]
/// * [expirationTimestampSecs] - Timestamp in seconds, e.g. transaction expiration timestamp.
/// * [payload]
/// * [signature]
/// * [events]
/// * [version] - Unsigned int64 type value
/// * [stateRootHash] - All bytes data are represented as hex-encoded string prefixed with `0x` and fulfilled with two hex digits per byte.  Different with `Address` type, hex-encoded bytes should not trim any zeros.
/// * [eventRootHash] - All bytes data are represented as hex-encoded string prefixed with `0x` and fulfilled with two hex digits per byte.  Different with `Address` type, hex-encoded bytes should not trim any zeros.
/// * [gasUsed] - Unsigned int64 type value
/// * [success] - Transaction execution result (success: true, failure: false). See `vm_status` for human readable error message from Aptos VM.
/// * [vmStatus] - Human readable transaction execution result message from Aptos VM.
/// * [accumulatorRootHash] - All bytes data are represented as hex-encoded string prefixed with `0x` and fulfilled with two hex digits per byte.  Different with `Address` type, hex-encoded bytes should not trim any zeros.
/// * [changes]
/// * [timestamp] - Timestamp in microseconds, e.g. ledger / block creation timestamp.
/// * [id] - All bytes data are represented as hex-encoded string prefixed with `0x` and fulfilled with two hex digits per byte.  Different with `Address` type, hex-encoded bytes should not trim any zeros.
/// * [round] - Unsigned int64 type value
/// * [previousBlockVotes]
/// * [proposer] - Hex-encoded 16 bytes Aptos account address.  Prefixed with `0x` and leading zeros are trimmed.  See [doc](https://diem.github.io/move/address.html) for more details.
@BuiltValue()
abstract class Transaction implements Built<Transaction, TransactionBuilder> {
  /// One Of [BlockMetadataTransaction], [GenesisTransaction], [PendingTransaction], [UserTransaction]
  OneOf get oneOf;

  static const String discriminatorFieldName = r'type';
  static const Map<String, Type> discriminatorMapping = {
    r'BlockMetadataTransaction': BlockMetadataTransaction,
    r'GenesisTransaction': GenesisTransaction,
    r'PendingTransaction': PendingTransaction,
    r'UserTransaction': UserTransaction,
  };

  Transaction._();

  factory Transaction([void updates(TransactionBuilder b)]) = _$Transaction;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(TransactionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Transaction> get serializer => _$TransactionSerializer();
}

class _$TransactionSerializer implements PrimitiveSerializer<Transaction> {
  @override
  final Iterable<Type> types = const [Transaction, _$Transaction];

  @override
  final String wireName = r'Transaction';

  Iterable<Object?> _serializeProperties(
      Serializers serializers, Transaction object,
      {FullType specifiedType = FullType.unspecified}) sync* {}

  @override
  Object serialize(Serializers serializers, Transaction object,
      {FullType specifiedType = FullType.unspecified}) {
    final oneOf = object.oneOf;
    return serializers.serialize(oneOf.value,
        specifiedType: FullType(oneOf.valueType))!;
  }

  @override
  Transaction deserialize(Serializers serializers, Object serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = TransactionBuilder();
    Object? oneOfDataSrc;
    final serializedList = (serialized as Iterable<Object?>).toList();
    final discIndex =
        serializedList.indexOf(Transaction.discriminatorFieldName) + 1;
    final discValue = serializers.deserialize(serializedList[discIndex],
        specifiedType: FullType(String)) as String;
    oneOfDataSrc = serialized;
    final oneOfTypes = [
      BlockMetadataTransaction,
      GenesisTransaction,
      PendingTransaction,
      UserTransaction,
    ];
    Object oneOfResult;
    Type oneOfType;
    switch (discValue) {
      case 'BlockMetadataTransaction':
        oneOfResult = serializers.deserialize(oneOfDataSrc,
                specifiedType: FullType(BlockMetadataTransaction))
            as BlockMetadataTransaction;
        oneOfType = BlockMetadataTransaction;
        break;
      case 'GenesisTransaction':
        oneOfResult = serializers.deserialize(oneOfDataSrc,
            specifiedType: FullType(GenesisTransaction)) as GenesisTransaction;
        oneOfType = GenesisTransaction;
        break;
      case 'PendingTransaction':
        oneOfResult = serializers.deserialize(oneOfDataSrc,
            specifiedType: FullType(PendingTransaction)) as PendingTransaction;
        oneOfType = PendingTransaction;
        break;
      case 'UserTransaction':
        oneOfResult = serializers.deserialize(oneOfDataSrc,
            specifiedType: FullType(UserTransaction)) as UserTransaction;
        oneOfType = UserTransaction;
        break;
      default:
        throw UnsupportedError(
            "Couldn't deserialize oneOf for the discriminator value: ${discValue}");
    }
    result.oneOf = OneOfDynamic(
        typeIndex: oneOfTypes.indexOf(oneOfType),
        types: oneOfTypes,
        value: oneOfResult);
    return result.build();
  }
}
