import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TahunRecord extends FirestoreRecord {
  TahunRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "tahunawal" field.
  DateTime? _tahunawal;
  DateTime? get tahunawal => _tahunawal;
  bool hasTahunawal() => _tahunawal != null;

  // "tahunakhir" field.
  DateTime? _tahunakhir;
  DateTime? get tahunakhir => _tahunakhir;
  bool hasTahunakhir() => _tahunakhir != null;

  void _initializeFields() {
    _tahunawal = snapshotData['tahunawal'] as DateTime?;
    _tahunakhir = snapshotData['tahunakhir'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Tahun');

  static Stream<TahunRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TahunRecord.fromSnapshot(s));

  static Future<TahunRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TahunRecord.fromSnapshot(s));

  static TahunRecord fromSnapshot(DocumentSnapshot snapshot) => TahunRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TahunRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TahunRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TahunRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TahunRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTahunRecordData({
  DateTime? tahunawal,
  DateTime? tahunakhir,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'tahunawal': tahunawal,
      'tahunakhir': tahunakhir,
    }.withoutNulls,
  );

  return firestoreData;
}

class TahunRecordDocumentEquality implements Equality<TahunRecord> {
  const TahunRecordDocumentEquality();

  @override
  bool equals(TahunRecord? e1, TahunRecord? e2) {
    return e1?.tahunawal == e2?.tahunawal && e1?.tahunakhir == e2?.tahunakhir;
  }

  @override
  int hash(TahunRecord? e) =>
      const ListEquality().hash([e?.tahunawal, e?.tahunakhir]);

  @override
  bool isValidKey(Object? o) => o is TahunRecord;
}
