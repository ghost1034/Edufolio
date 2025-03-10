import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AreasRecord extends FirestoreRecord {
  AreasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "img" field.
  String? _img;
  String get img => _img ?? '';
  bool hasImg() => _img != null;

  // "categoryRef" field.
  DocumentReference? _categoryRef;
  DocumentReference? get categoryRef => _categoryRef;
  bool hasCategoryRef() => _categoryRef != null;

  // "userId" field.
  String? _userId;
  String get userId => _userId ?? '';
  bool hasUserId() => _userId != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _img = snapshotData['img'] as String?;
    _categoryRef = snapshotData['categoryRef'] as DocumentReference?;
    _userId = snapshotData['userId'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('areas');

  static Stream<AreasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AreasRecord.fromSnapshot(s));

  static Future<AreasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AreasRecord.fromSnapshot(s));

  static AreasRecord fromSnapshot(DocumentSnapshot snapshot) => AreasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AreasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AreasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AreasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AreasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAreasRecordData({
  String? name,
  String? img,
  DocumentReference? categoryRef,
  String? userId,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'img': img,
      'categoryRef': categoryRef,
      'userId': userId,
    }.withoutNulls,
  );

  return firestoreData;
}

class AreasRecordDocumentEquality implements Equality<AreasRecord> {
  const AreasRecordDocumentEquality();

  @override
  bool equals(AreasRecord? e1, AreasRecord? e2) {
    return e1?.name == e2?.name &&
        e1?.img == e2?.img &&
        e1?.categoryRef == e2?.categoryRef &&
        e1?.userId == e2?.userId;
  }

  @override
  int hash(AreasRecord? e) =>
      const ListEquality().hash([e?.name, e?.img, e?.categoryRef, e?.userId]);

  @override
  bool isValidKey(Object? o) => o is AreasRecord;
}
