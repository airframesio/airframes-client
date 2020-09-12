# Compulsory line, this is a version 4 file
version=4

# Direct Git
opts="mode=git" https://github.com/airframesio/airframes-client.git \
  refs/tags/v([\d\.]+) debian uupdate
