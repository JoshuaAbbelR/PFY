import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TanggalRecord extends FirestoreRecord {
  TanggalRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "tanggalawal" field.
  DateTime? _tanggalawal;
  DateTime? get tanggalawal => _tanggalawal;
  bool hasTanggalawal() => _tanggalawal != null;

  // "tanggalakhir" field.
  DateTime? _tanggalakhir;
  DateTime? get tanggalakhir => _tanggalakhir;
  bool hasTanggalakhir() => _tanggalakhir != null;

  void _initializeFields() {
    _tanggalawal = snapshotData['tanggalawal'] as DateTime?;
    _tanggalakhir = snapshotData['tanggalakhir'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tanggal');

  static Stream<TanggalRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TanggalRecord.fromSnapshot(s));

  static Future<TanggalRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TanggalRecord.fromSnapshot(s));

  static TanggalRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TanggalRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TanggalRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TanggalRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TanggalRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TanggalRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTanggalRecordData({
  DateTime? tanggalawal,
  DateTime? tanggalakhir,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'tanggalawal': tanggalawal,
      'tanggalakhir': tanggalakhir,
    }.withoutNulls,
  );

  return firestoreData;
}

class TanggalRecordDocumentEquality implements Equality<TanggalRecord> {
  const TanggalRecordDocumentEquality();

  @override
  bool equals(TanggalRecord? e1, TanggalRecord? e2) {
    return e1?.tanggalawal == e2?.tanggalawal &&
        e1?.tanggalakhir == e2?.tanggalakhir;
  }

  @override
  int hash(TanggalRecord? e) =>
      const ListEquality().hash([e?.tanggalawal, e?.tanggalakhir]);

  @override
  bool isValidKey(Object? o) => o is TanggalRecord;
}
