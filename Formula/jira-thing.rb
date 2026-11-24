class JiraThing < Formula
  desc "Jira and Confluence CLI, TUI and MCP server for agents and humans"
  homepage "https://github.com/poshpaws/jira-thing"
  version "0.29.0"

  on_macos do
    on_arm do
      url "https://github.com/poshpaws/jira-thing/releases/download/v0.29.0/jira-thing-darwin-arm64"
      sha256 "b93e399beb638f3f57f345afcf29667789ea019ea8df45dc928d2a6f9bebfa3a"
    end
    on_intel do
      url "https://github.com/poshpaws/jira-thing/releases/download/v0.29.0/jira-thing-darwin-amd64"
      sha256 "7046537424b588447a0118903eaf36047382554407fd220080d993e75b07667d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/poshpaws/jira-thing/releases/download/v0.29.0/jira-thing-linux-arm64"
      sha256 "3ea6b24e75c31b1151a6bfa89a693293484e5c2eaed5faf7690bb245944bdd50"
    end
    on_intel do
      url "https://github.com/poshpaws/jira-thing/releases/download/v0.29.0/jira-thing-linux-amd64"
      sha256 "8434645fbe1e8c0304b47450fbb436c9232edc2c2367127323d6ba13d37c6259"
    end
  end

  def install
    bin.install Dir["jira-thing-*"].first => "jira-thing"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jira-thing version")
  end
end
