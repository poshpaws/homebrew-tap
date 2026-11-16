class JiraThing < Formula
  desc "Jira and Confluence CLI, TUI and MCP server for agents and humans"
  homepage "https://github.com/poshpaws/jira-thing"
  version "0.28.0"

  on_macos do
    on_arm do
      url "https://github.com/poshpaws/jira-thing/releases/download/v0.28.0/jira-thing-darwin-arm64"
      sha256 "70dfdf169f4b68f4c532386a244c164ae8c90e36ba235420372a1124838e76ab"
    end
    on_intel do
      url "https://github.com/poshpaws/jira-thing/releases/download/v0.28.0/jira-thing-darwin-amd64"
      sha256 "adcebb7371a97aa57792dd1ff286d1285ef5fca6ec211c6eadbfb59f558bef55"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/poshpaws/jira-thing/releases/download/v0.28.0/jira-thing-linux-arm64"
      sha256 "2a96346a225d15ad14f86b6a3c7d7ca6aaaefed1004528d98f450d0ba07f127d"
    end
    on_intel do
      url "https://github.com/poshpaws/jira-thing/releases/download/v0.28.0/jira-thing-linux-amd64"
      sha256 "95cb10bdb9feb9941a474cbfc0157c451311ac5dda3a1a3303da0ea7784e6a82"
    end
  end

  def install
    bin.install Dir["jira-thing-*"].first => "jira-thing"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jira-thing version")
  end
end
