class JiraThing < Formula
  desc "Jira and Confluence CLI, TUI and MCP server for agents and humans"
  homepage "https://github.com/poshpaws/jira-thing"
  version "0.26.0"

  on_macos do
    on_arm do
      url "https://github.com/poshpaws/jira-thing/releases/download/v0.26.0/jira-thing-darwin-arm64"
      sha256 "ba19fa1bcc2414e3f82793cfeb43fabfb648789d64d12f6515e9c66b5218979d"
    end
    on_intel do
      url "https://github.com/poshpaws/jira-thing/releases/download/v0.26.0/jira-thing-darwin-amd64"
      sha256 "523a09d3b5eb2280d1c6f5794c21ac1a4a31d60c54ba5a5190d1363bba33eb5b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/poshpaws/jira-thing/releases/download/v0.26.0/jira-thing-linux-arm64"
      sha256 "ba36453c45358952dc4d808e537332cfaa0d4346f175474f2478cc2df391fc89"
    end
    on_intel do
      url "https://github.com/poshpaws/jira-thing/releases/download/v0.26.0/jira-thing-linux-amd64"
      sha256 "a80eb5f2ed6cf9a091db5a83c72cbcea63ed2f688640a9584042fbc0c17c7421"
    end
  end

  def install
    bin.install Dir["jira-thing-*"].first => "jira-thing"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jira-thing version")
  end
end
