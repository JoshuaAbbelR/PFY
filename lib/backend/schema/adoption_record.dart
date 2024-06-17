import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';
import '/backend/schema/enums/enums.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AdoptionRecord extends FirestoreRecord {
  AdoptionRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "photo" field.
  String? _photo;
  String get photo => _photo ?? '';
  bool hasPhoto() => _photo != null;

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "desc" field.
  String? _desc;
  String get desc => _desc ?? '';
  bool hasDesc() => _desc != null;

  // "breed" field.
  String? _breed;
  String get breed => _breed ?? '';
  bool hasBreed() => _breed != null;

  // "weight" field.
  int? _weight;
  int get weight => _weight ?? 0;
  bool hasWeight() => _weight != null;

  // "colors" field.
  String? _colors;
  String get colors => _colors ?? '';
  bool hasColors() => _colors != null;

  // "type" field.
  String? _type;
  String get type => _type ?? '';
  bool hasType() => _type != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  bool hasGender() => _gender != null;

  // "vaccine" field.
  String? _vaccine;
  String get vaccine => _vaccine ?? '';
  bool hasVaccine() => _vaccine != null;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  bool hasUid() => _uid != null;

  void _initializeFields() {
    _photo = snapshotData['photo'] as String?;
    _name = snapshotData['name'] as String?;
    _desc = snapshotData['desc'] as String?;
    _breed = snapshotData['breed'] as String?;
    _weight = castToType<int>(snapshotData['weight']);
    _colors = snapshotData['colors'] as String?;
    _type = snapshotData['type'] as String?;
    _gender = snapshotData['gender'] as String?;
    _vaccine = snapshotData['vaccine'] as String?;
    _uid = snapshotData['uid'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('adoption');

  static Stream<AdoptionRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AdoptionRecord.fromSnapshot(s));

  static Future<AdoptionRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AdoptionRecord.fromSnapshot(s));

  static AdoptionRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AdoptionRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AdoptionRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AdoptionRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AdoptionRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AdoptionRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAdoptionRecordData({
  String? photo,
  String? name,
  String? desc,
  String? breed,
  int? weight,
  String? colors,
  String? type,
  String? gender,
  String? vaccine,
  String? uid,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'photo': photo,
      'name': name,
      'desc': desc,
      'breed': breed,
      'weight': weight,
      'colors': colors,
      'type': type,
      'gender': gender,
      'vaccine': vaccine,
      'uid': uid,
    }.withoutNulls,
  );

  return firestoreData;
}

class AdoptionRecordDocumentEquality implements Equality<AdoptionRecord> {
  const AdoptionRecordDocumentEquality();

  @override
  bool equals(AdoptionRecord? e1, AdoptionRecord? e2) {
    return e1?.photo == e2?.photo &&
        e1?.name == e2?.name &&
        e1?.desc == e2?.desc &&
        e1?.breed == e2?.breed &&
        e1?.weight == e2?.weight &&
        e1?.colors == e2?.colors &&
        e1?.type == e2?.type &&
        e1?.gender == e2?.gender &&
        e1?.vaccine == e2?.vaccine &&
        e1?.uid == e2?.uid;
  }

  @override
  int hash(AdoptionRecord? e) => const ListEquality().hash([
        e?.photo,
        e?.name,
        e?.desc,
        e?.breed,
        e?.weight,
        e?.colors,
        e?.type,
        e?.gender,
        e?.vaccine,
        e?.uid
      ]);

  @override
  bool isValidKey(Object? o) => o is AdoptionRecord;
}
