class PackageInfo {
  PackageInfo(
    this.name,
    this.version,
    this.description,
    this.url,
    this.location,
    this.installationDate,
  );

  factory PackageInfo.fromRaw(String raw) {
    final lines = raw.split('\n');
    final firstLine = lines.first;
    // Poured from bottle on 2021-11-16 at 15:31:12
    final dateAndTime = lines[4].split('on').last.trimLeft();
    final date = dateAndTime.replaceAll('at ', '');
    return PackageInfo(
      firstLine.split(':').first,
      firstLine.split(':').last.split('(').first.trim(),
      lines[1],
      lines[2],
      lines[3],
      DateTime.parse(date),
    );
  }

  final String name;
  final String version;
  final String description;
  final String url;
  final String location;
  final DateTime installationDate;
}
