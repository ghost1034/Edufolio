import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SchoolsRecord extends FirestoreRecord {
  SchoolsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('schools');

  static Stream<SchoolsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SchoolsRecord.fromSnapshot(s));

  static Future<SchoolsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SchoolsRecord.fromSnapshot(s));

  static SchoolsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SchoolsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SchoolsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SchoolsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SchoolsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SchoolsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSchoolsRecordData({
  String? name,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
    }.withoutNulls,
  );

  return firestoreData;
}

class SchoolsRecordDocumentEquality implements Equality<SchoolsRecord> {
  const SchoolsRecordDocumentEquality();

  @override
  bool equals(SchoolsRecord? e1, SchoolsRecord? e2) {
    return e1?.name == e2?.name;
  }

  @override
  int hash(SchoolsRecord? e) => const ListEquality().hash([e?.name]);

  @override
  bool isValidKey(Object? o) => o is SchoolsRecord;
}
