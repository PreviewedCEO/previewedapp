import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';

class SavedCandidatesRecord extends FirestoreRecord {
  SavedCandidatesRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "user" field.
  DocumentReference? _user;
  DocumentReference? get user => _user;
  bool hasUser() => _user != null;

  // "savedTime" field.
  DateTime? _savedTime;
  DateTime? get savedTime => _savedTime;
  bool hasSavedTime() => _savedTime != null;

  // "candidates" field.
  List<DocumentReference>? _candidates;
  List<DocumentReference> get candidates => _candidates ?? const [];
  bool hasCandidates() => _candidates != null;

  void _initializeFields() {
    _user = snapshotData['user'] as DocumentReference?;
    _savedTime = snapshotData['savedTime'] as DateTime?;
    _candidates = getDataList(snapshotData['candidates']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('savedCandidates');

  static Stream<SavedCandidatesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => SavedCandidatesRecord.fromSnapshot(s));

  static Future<SavedCandidatesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => SavedCandidatesRecord.fromSnapshot(s));

  static SavedCandidatesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      SavedCandidatesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static SavedCandidatesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      SavedCandidatesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'SavedCandidatesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is SavedCandidatesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createSavedCandidatesRecordData({
  DocumentReference? user,
  DateTime? savedTime,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'user': user,
      'savedTime': savedTime,
    }.withoutNulls,
  );

  return firestoreData;
}

class SavedCandidatesRecordDocumentEquality
    implements Equality<SavedCandidatesRecord> {
  const SavedCandidatesRecordDocumentEquality();

  @override
  bool equals(SavedCandidatesRecord? e1, SavedCandidatesRecord? e2) {
    const listEquality = ListEquality();
    return e1?.user == e2?.user &&
        e1?.savedTime == e2?.savedTime &&
        listEquality.equals(e1?.candidates, e2?.candidates);
  }

  @override
  int hash(SavedCandidatesRecord? e) =>
      const ListEquality().hash([e?.user, e?.savedTime, e?.candidates]);

  @override
  bool isValidKey(Object? o) => o is SavedCandidatesRecord;
}
