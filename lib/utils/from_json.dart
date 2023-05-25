int idFromJson(dynamic id) {
  if (id is int) {
    return id;
  } else if (id is String) {
    return int.parse(id);
  } else {
    throw ArgumentError('id must be of type int or String representing an int');
  }
}
