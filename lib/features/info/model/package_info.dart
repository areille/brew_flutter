typedef PackageName = String;

class PackageInfo {
  PackageInfo({
    required this.name,
    required this.version,
    required this.description,
    required this.url,
    required this.location,
    required this.installationDate,
  });

  factory PackageInfo.fromRaw(String raw) {
    final lines = raw.split('\n');
    final firstLine = lines.first; // ==> aom: stable 3.5.0 (bottled)
    // Poured from bottle on 2021-11-16 at 15:31:12
    final dateAndTime = lines[4].split('on').last.trimLeft();
    final date = dateAndTime.replaceAll('at ', '');
    return PackageInfo(
      name: firstLine.split(':').first.split(' ').last,
      version: firstLine.split(':').last.split('(').first.trim(),
      description: lines[1],
      url: lines[2],
      location: lines[3].split(' ').first,
      installationDate: DateTime.parse(date),
    );
  }

  final PackageName name;
  final String version;
  final String description;
  final String url;
  final String location;
  final DateTime installationDate;
}
