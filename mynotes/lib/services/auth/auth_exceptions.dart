//login exceptions
class UserNotFoundAuthException implements Exception {}

class UserNotLoggedInAuthException implements Exception {}

class WrongPasswordAuthException implements Exception {}

//register exceptions
class InvalidEmailAuthException implements Exception {}

class WeakPasswordAuthException implements Exception {}

class EmailAlreadyInUseAuthException implements Exception {}

//Generic exceptions

class GenericAuthException implements Exception {}
