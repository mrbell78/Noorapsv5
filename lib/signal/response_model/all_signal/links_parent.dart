class Links {
  final String? first;
  final String? last;
  final dynamic prev;
  final dynamic next;

  Links({
    this.first,
    this.last,
    this.prev,
    this.next,
  });

  Links.fromJson(Map<String, dynamic> json)
      : first = json['first'] as String?,
        last = json['last'] as String?,
        prev = json['prev'],
        next = json['next'];

  Map<String, dynamic> toJson() => {
    'first' : first,
    'last' : last,
    'prev' : prev,
    'next' : next
  };
}