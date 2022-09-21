# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
require_relative "../custom_download_strategy"
class Nopeus < Formula
  desc "Nopeus by Salfati Group is an end-to-end tool to manage your cloud applications in a single command"
  homepage "https://nopeus.co"
  version "0.1.0"

  depends_on "go" => :optional
  depends_on "git"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/salfatigroup/nopeus/releases/download/v0.1.0/nopeus_Darwin_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "d9a7df31966a4d79470f651514e15bb9864b3bdf9e020af4649717f6a8e2577a"

      def install
        bin.install "nopeus"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/salfatigroup/nopeus/releases/download/v0.1.0/nopeus_Darwin_x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "fb4f8a1abbefe388305359bee2a49659827e3d3d0391827d89fccc8bb92cac75"

      def install
        bin.install "nopeus"
      end
    end
  end

  on_linux do
    if Hardware::CPU.arm? && !Hardware::CPU.is_64_bit?
      url "https://github.com/salfatigroup/nopeus/releases/download/v0.1.0/nopeus_Linux_armv7.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "924377677055ca2dc5978bf05a52ed2f9fe7b5245fccf9ec38ef088ee1030ac2"

      def install
        bin.install "nopeus"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/salfatigroup/nopeus/releases/download/v0.1.0/nopeus_Linux_arm64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "4280108a9776c33f9ebbaaae73752fd1a340447b489625ffb3ca0997ece0aff3"

      def install
        bin.install "nopeus"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/salfatigroup/nopeus/releases/download/v0.1.0/nopeus_Linux_x86_64.tar.gz", using: GitHubPrivateRepositoryReleaseDownloadStrategy
      sha256 "493d9e0735a0a3ab868f818aa23e02e31ea75067e39e430ea23827bdf98082f3"

      def install
        bin.install "nopeus"
      end
    end
  end

  test do
    system "#{bin}/nopeus --version"
  end
end
