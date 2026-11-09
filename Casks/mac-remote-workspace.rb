cask "mac-remote-workspace" do
  version "1.0.1"
  sha256 "278bc1e643d1abb0e2f64581bb98d19d9dc90f584e7905628871cd628aa31ddd"

  url "https://github.com/ngominhtrungcmag/mac-remote-workspace/releases/download/v#{version}/Mac-Remote-Workspace-#{version}-universal.zip"
  name "Mac Remote Workspace"
  desc "Local-first workspace for SSH, SFTP and remote desktops"
  homepage "https://github.com/ngominhtrungcmag/mac-remote-workspace"

  depends_on macos: :sonoma

  app "Mac Remote Workspace.app"

  caveats <<~EOS
    This release is ad-hoc signed and is not notarized by Apple.
    If Gatekeeper blocks it, open it via right-click then Open, or allow it
    in System Settings under Privacy & Security.
  EOS
end
