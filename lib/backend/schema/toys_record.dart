import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ToysRecord extends FirestoreRecord {
  ToysRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  bool hasDesc() => _desc != null;

  // "price" field.
  int? _price;
  int get price => _price ?? 0;
  bool hasPrice() => _price != null;

  // "pet_type" field.
  String? _petType;
  String get petType => _petType ?? '';
  bool hasPetType() => _petType != null;

  // "pic" field.
  String? _pic;
  String get pic => _pic ?? '';
  bool hasPic() => _pic != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _desc = snapshotData['desc'] as String?;
    _price = castToType<int>(snapshotData['price']);
    _petType = snapshotData['pet_type'] as String?;
    _pic = snapshotData['pic'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('toys');

  static Stream<ToysRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ToysRecord.fromSnapshot(s));

  static Future<ToysRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ToysRecord.fromSnapshot(s));

  static ToysRecord fromSnapshot(DocumentSnapshot snapshot) => ToysRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ToysRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ToysRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ToysRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ToysRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createToysRecordData({
  String? name,
  String? desc,
  int? price,
  String? petType,
  String? pic,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'desc': desc,
      'price': price,
      'pet_type': petType,
      'pic': pic,
    }.withoutNulls,
  );

  return firestoreData;
}

class ToysRecordDocumentEquality implements Equality<ToysRecord> {
  const ToysRecordDocumentEquality();

  @override
  bool equals(ToysRecord? e1, ToysRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.desc == e2?.desc &&
        e1?.price == e2?.price &&
        e1?.petType == e2?.petType &&
        e1?.pic == e2?.pic;
  }

  @override
  int hash(ToysRecord? e) => const ListEquality()
      .hash([e?.name, e?.desc, e?.price, e?.petType, e?.pic]);

  @override
  bool isValidKey(Object? o) => o is ToysRecord;
}
