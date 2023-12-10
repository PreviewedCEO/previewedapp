import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CandidatesRecord extends FirestoreRecord {
  CandidatesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "photo_url" field.
  String? _photoUrl;
  String get photoUrl => _photoUrl ?? '';
  bool hasPhotoUrl() => _photoUrl != null;

  // "bio" field.
  String? _bio;
  String get bio => _bio ?? '';
  bool hasBio() => _bio != null;

  // "positionTitle" field.
  String? _positionTitle;
  String get positionTitle => _positionTitle ?? '';
  bool hasPositionTitle() => _positionTitle != null;

  // "experienceLevel" field.
  String? _experienceLevel;
  String get experienceLevel => _experienceLevel ?? '';
  bool hasExperienceLevel() => _experienceLevel != null;

  // "phone_number" field.
  String? _phoneNumber;
  String get phoneNumber => _phoneNumber ?? '';
  bool hasPhoneNumber() => _phoneNumber != null;

  // "expectedSalary" field.
  String? _expectedSalary;
  String get expectedSalary => _expectedSalary ?? '';
  bool hasExpectedSalary() => _expectedSalary != null;

  // "candidateVideo" field.
  String? _candidateVideo;
  String get candidateVideo => _candidateVideo ?? '';
  bool hasCandidateVideo() => _candidateVideo != null;

  void _initializeFields() {
    _displayName = snapshotData['display_name'] as String?;
    _email = snapshotData['email'] as String?;
    _photoUrl = snapshotData['photo_url'] as String?;
    _bio = snapshotData['bio'] as String?;
    _positionTitle = snapshotData['positionTitle'] as String?;
    _experienceLevel = snapshotData['experienceLevel'] as String?;
    _phoneNumber = snapshotData['phone_number'] as String?;
    _expectedSalary = snapshotData['expectedSalary'] as String?;
    _candidateVideo = snapshotData['candidateVideo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('candidates');

  static Stream<CandidatesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => CandidatesRecord.fromSnapshot(s));

  static Future<CandidatesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => CandidatesRecord.fromSnapshot(s));

  static CandidatesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      CandidatesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static CandidatesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      CandidatesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'CandidatesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is CandidatesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createCandidatesRecordData({
  String? displayName,
  String? email,
  String? photoUrl,
  String? bio,
  String? positionTitle,
  String? experienceLevel,
  String? phoneNumber,
  String? expectedSalary,
  String? candidateVideo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'display_name': displayName,
      'email': email,
      'photo_url': photoUrl,
      'bio': bio,
      'positionTitle': positionTitle,
      'experienceLevel': experienceLevel,
      'phone_number': phoneNumber,
      'expectedSalary': expectedSalary,
      'candidateVideo': candidateVideo,
    }.withoutNulls,
  );

  return firestoreData;
}

class CandidatesRecordDocumentEquality implements Equality<CandidatesRecord> {
  const CandidatesRecordDocumentEquality();

  @override
  bool equals(CandidatesRecord? e1, CandidatesRecord? e2) {
    return e1?.displayName == e2?.displayName &&
        e1?.email == e2?.email &&
        e1?.photoUrl == e2?.photoUrl &&
        e1?.bio == e2?.bio &&
        e1?.positionTitle == e2?.positionTitle &&
        e1?.experienceLevel == e2?.experienceLevel &&
        e1?.phoneNumber == e2?.phoneNumber &&
        e1?.expectedSalary == e2?.expectedSalary &&
        e1?.candidateVideo == e2?.candidateVideo;
  }

  @override
  int hash(CandidatesRecord? e) => const ListEquality().hash([
        e?.displayName,
        e?.email,
        e?.photoUrl,
        e?.bio,
        e?.positionTitle,
        e?.experienceLevel,
        e?.phoneNumber,
        e?.expectedSalary,
        e?.candidateVideo
      ]);

  @override
  bool isValidKey(Object? o) => o is CandidatesRecord;
}
