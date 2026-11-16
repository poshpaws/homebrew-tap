class JiraThing < Formula
  desc "Jira and Confluence CLI, TUI and MCP server for agents and humans"
  homepage "https://github.com/poshpaws/jira-thing"
  version "0.27.0"

  on_macos do
    on_arm do
      url "https://github.com/poshpaws/jira-thing/releases/download/v0.27.0/jira-thing-darwin-arm64"
      sha256 "0a7b0059e7630edf641a56ef4d86963eaaa7dfda1d72665eccf9f9ec21765ec3"
    end
    on_intel do
      url "https://github.com/poshpaws/jira-thing/releases/download/v0.27.0/jira-thing-darwin-amd64"
      sha256 "5326acd73bc8c9dcc51eb5e538ea28b0fcca1fd72c5db10981796dc86a8e1ab0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/poshpaws/jira-thing/releases/download/v0.27.0/jira-thing-linux-arm64"
      sha256 "d2e9979b0962fef993986eacbe0c30c7516c5f567c03b4cae211b92def52e753"
    end
    on_intel do
      url "https://github.com/poshpaws/jira-thing/releases/download/v0.27.0/jira-thing-linux-amd64"
      sha256 "5b1638bf7b93476f6a5d45f5d8082255c505662bab9bc7e3a0ec07c750412352"
    end
  end

  def install
    bin.install Dir["jira-thing-*"].first => "jira-thing"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jira-thing version")
  end
end
