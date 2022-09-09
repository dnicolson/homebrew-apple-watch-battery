class AppleWatchBattery < Formula
  desc ""
  homepage ""
  version "1.0"
  url "https://gist.githubusercontent.com/dnicolson/020fb88d72ac071f2a97a129a067e3a8/raw/865b9bd9ad6971ca58a787aed7e8a70a20d3ddaa/apple-watch-battery"
  sha256 "f8b5e068da68b2d3962b088d9a4d10c847d63bb7c510151ff9f48b7cf6fed180"

  def install
    chmod 0755, "apple-watch-battery"
    bin.install "apple-watch-battery"
  end

  def plist; <<~EOS
    <?xml version="1.0" encoding="UTF-8"?>
    <!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
    <plist version="1.0">
    <dict>
      <key>Label</key>
        <string>#{plist_name}</string>
      <key>ProgramArguments</key>
      <array>
        <string>#{bin}/apple-watch-battery</string>
      </array>
      <key>RunAtLoad</key>
      <true/>
      <key>KeepAlive</key>
      <true/>
    </dict>
    </plist>
    EOS
  end
end
