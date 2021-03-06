# This file was generated by GoReleaser. DO NOT EDIT.
class Hussar < Formula
  desc "Interpreter and tooling for the Hussar programming language."
  homepage "https://hussar.io/"
  version "0.4.1"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/hussar-lang/hussar/releases/download/v0.4.1/hussar_0.4.1_MacOS_x84_64.tar.gz"
    sha256 "d4cd3c7b79205d536da2d81eef482f617e84f586e581a684ba57b5aa9d32a4a1"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/hussar-lang/hussar/releases/download/v0.4.1/hussar_0.4.1_Linux_x84_64.tar.gz"
      sha256 "72ea2d17f42daf703230f81394180833f113dd743f6d2302876743341ff0f1ac"
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/hussar-lang/hussar/releases/download/v0.4.1/hussar_0.4.1_Linux_arm64.tar.gz"
        sha256 "365bd3238d27905ba6a9c15323bf3af777fa9c91eab947d7c0507adcf090b437"
      else
        url "https://github.com/hussar-lang/hussar/releases/download/v0.4.1/hussar_0.4.1_Linux_armv6.tar.gz"
        sha256 "10b75b7b332eb838f2d261805004005d9551f5e942d4da599955ae07f834f7dd"
      end
    end
  end
  
  def install
    bin.install "hussar"
  end

  test do
    system "#{bin}/hussar env"
  end
end
