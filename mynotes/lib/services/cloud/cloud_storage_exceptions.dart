class CloudStorageException implements Exception {
  const CloudStorageException();
}

class CoundNotCreateNoteException extends CloudStorageException {}

class CountNotGetAllNotesException extends CloudStorageException {}

class CountNotUpdateNoteException extends CloudStorageException {}

class CountNotDeleteNoteException extends CloudStorageException {}
