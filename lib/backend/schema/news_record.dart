import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NewsRecord extends FirestoreRecord {
  NewsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "Pic" field.
  String? _pic;
  String get pic => _pic ?? '';
  bool hasPic() => _pic != null;

  // "Isian" field.
  String? _isian;
  String get isian => _isian ?? '';
  bool hasIsian() => _isian != null;

  // "Isian2" field.
  String? _isian2;
  String get isian2 => _isian2 ?? '';
  bool hasIsian2() => _isian2 != null;

  // "Isian3" field.
  String? _isian3;
  String get isian3 => _isian3 ?? '';
  bool hasIsian3() => _isian3 != null;

  void _initializeFields() {
    _title = snapshotData['Title'] as String?;
    _pic = snapshotData['Pic'] as String?;
    _isian = snapshotData['Isian'] as String?;
    _isian2 = snapshotData['Isian2'] as String?;
    _isian3 = snapshotData['Isian3'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('news');

  static Stream<NewsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NewsRecord.fromSnapshot(s));

  static Future<NewsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NewsRecord.fromSnapshot(s));

  static NewsRecord fromSnapshot(DocumentSnapshot snapshot) => NewsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NewsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NewsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NewsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NewsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNewsRecordData({
  String? title,
  String? pic,
  String? isian,
  String? isian2,
  String? isian3,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Title': title,
      'Pic': pic,
      'Isian': isian,
      'Isian2': isian2,
      'Isian3': isian3,
    }.withoutNulls,
  );

  return firestoreData;
}

class NewsRecordDocumentEquality implements Equality<NewsRecord> {
  const NewsRecordDocumentEquality();

  @override
  bool equals(NewsRecord? e1, NewsRecord? e2) {
    return e1?.title == e2?.title &&
        e1?.pic == e2?.pic &&
        e1?.isian == e2?.isian &&
        e1?.isian2 == e2?.isian2 &&
        e1?.isian3 == e2?.isian3;
  }

  @override
  int hash(NewsRecord? e) => const ListEquality()
      .hash([e?.title, e?.pic, e?.isian, e?.isian2, e?.isian3]);

  @override
  bool isValidKey(Object? o) => o is NewsRecord;
}
