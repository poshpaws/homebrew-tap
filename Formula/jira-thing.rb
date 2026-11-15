class JiraThing < Formula
  desc "Jira and Confluence CLI, TUI and MCP server for agents and humans"
  homepage "https://github.com/poshpaws/jira-thing"
  version "0.25.2"

  on_macos do
    on_arm do
      url "https://github.com/poshpaws/jira-thing/releases/download/v0.25.2/jira-thing-darwin-arm64"
      sha256 "16d63cec5e88cbb9315c1f2bff475810ad254ce8ad25c1e6085c7c59436eb7eb"
    end
    on_intel do
      url "https://github.com/poshpaws/jira-thing/releases/download/v0.25.2/jira-thing-darwin-amd64"
      sha256 "46f588c8351e6de9b549a8fa4de52d10c5495f41b9b223c945d787062592c69f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/poshpaws/jira-thing/releases/download/v0.25.2/jira-thing-linux-arm64"
      sha256 "2eabb773eca68088c4cf6249cdde9717d849b3916fce58094396a157ea9e28c5"
    end
    on_intel do
      url "https://github.com/poshpaws/jira-thing/releases/download/v0.25.2/jira-thing-linux-amd64"
      sha256 "cc6adc91792a73c409f03212be4052dd90e4b6cd513eb3eca150dbee831f5487"
    end
  end

  def install
    bin.install Dir["jira-thing-*"].first => "jira-thing"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jira-thing version")
  end
end
