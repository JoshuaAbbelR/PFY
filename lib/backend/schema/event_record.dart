import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EventRecord extends FirestoreRecord {
  EventRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  // "time" field.
  DateTime? _time;
  DateTime? get time => _time;
  bool hasTime() => _time != null;

  // "pic" field.
  String? _pic;
  String get pic => _pic ?? '';
  bool hasPic() => _pic != null;

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  bool hasDesc() => _desc != null;

  // "patisipant" field.
  List<String>? _patisipant;
  List<String> get patisipant => _patisipant ?? const [];
  bool hasPatisipant() => _patisipant != null;

  // "petphoto" field.
  List<String>? _petphoto;
  List<String> get petphoto => _petphoto ?? const [];
  bool hasPetphoto() => _petphoto != null;

  // "petname" field.
  List<String>? _petname;
  List<String> get petname => _petname ?? const [];
  bool hasPetname() => _petname != null;

  // "petdesc" field.
  List<String>? _petdesc;
  List<String> get petdesc => _petdesc ?? const [];
  bool hasPetdesc() => _petdesc != null;

  void _initializeFields() {
    _title = snapshotData['title'] as String?;
    _time = snapshotData['time'] as DateTime?;
    _pic = snapshotData['pic'] as String?;
    _desc = snapshotData['desc'] as String?;
    _patisipant = getDataList(snapshotData['patisipant']);
    _petphoto = getDataList(snapshotData['petphoto']);
    _petname = getDataList(snapshotData['petname']);
    _petdesc = getDataList(snapshotData['petdesc']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('event');

  static Stream<EventRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EventRecord.fromSnapshot(s));

  static Future<EventRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EventRecord.fromSnapshot(s));

  static EventRecord fromSnapshot(DocumentSnapshot snapshot) => EventRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EventRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EventRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EventRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EventRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEventRecordData({
  String? title,
  DateTime? time,
  String? pic,
  String? desc,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'title': title,
      'time': time,
      'pic': pic,
      'desc': desc,
    }.withoutNulls,
  );

  return firestoreData;
}

class EventRecordDocumentEquality implements Equality<EventRecord> {
  const EventRecordDocumentEquality();

  @override
  bool equals(EventRecord? e1, EventRecord? e2) {
    const listEquality = ListEquality();
    return e1?.title == e2?.title &&
        e1?.time == e2?.time &&
        e1?.pic == e2?.pic &&
        e1?.desc == e2?.desc &&
        listEquality.equals(e1?.patisipant, e2?.patisipant) &&
        listEquality.equals(e1?.petphoto, e2?.petphoto) &&
        listEquality.equals(e1?.petname, e2?.petname) &&
        listEquality.equals(e1?.petdesc, e2?.petdesc);
  }

  @override
  int hash(EventRecord? e) => const ListEquality().hash([
        e?.title,
        e?.time,
        e?.pic,
        e?.desc,
        e?.patisipant,
        e?.petphoto,
        e?.petname,
        e?.petdesc
      ]);

  @override
  bool isValidKey(Object? o) => o is EventRecord;
}
