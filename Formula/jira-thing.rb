class JiraThing < Formula
  desc "Jira and Confluence CLI, TUI and MCP server for agents and humans"
  homepage "https://github.com/poshpaws/jira-thing"
  version "0.27.1"

  on_macos do
    on_arm do
      url "https://github.com/poshpaws/jira-thing/releases/download/v0.27.1/jira-thing-darwin-arm64"
      sha256 "68bbece572c4438caef8cb20710f582f302c7a1219b9c641fa0b764b8ad46681"
    end
    on_intel do
      url "https://github.com/poshpaws/jira-thing/releases/download/v0.27.1/jira-thing-darwin-amd64"
      sha256 "89e0db25864c985f4b5a37050d6b4dfaeabad2de639cac086f48ebdf53510b68"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/poshpaws/jira-thing/releases/download/v0.27.1/jira-thing-linux-arm64"
      sha256 "478146314476e056976df27a91dc479fc88b899ea87be886a1b1b68c41fdeebd"
    end
    on_intel do
      url "https://github.com/poshpaws/jira-thing/releases/download/v0.27.1/jira-thing-linux-amd64"
      sha256 "22f8904aaf9804e91e53a7d8d6e40b408e6477cdcc43c3a68084821992940f29"
    end
  end

  def install
    bin.install Dir["jira-thing-*"].first => "jira-thing"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/jira-thing version")
  end
end
