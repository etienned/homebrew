require 'formula'

class RdiffBackup <Formula
  url 'http://savannah.nongnu.org/download/rdiff-backup/rdiff-backup-1.2.8.tar.gz'
  homepage 'http://rdiff-backup.nongnu.org/'
  md5 '1a94dc537fcf74d6a3a80bd27808e77b'

  depends_on 'librsync'

  def install
    ENV.universal_binary
    system "python", "setup.py", "install", "--prefix=#{prefix}", "--librsync-dir=#{prefix}"
  end
end
