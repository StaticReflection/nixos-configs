{
  imports = [
    ./mihomo.nix
  ];

  networking.hostName = "reflexia-nixos";
  networking.networkmanager.enable = true;

  # Proxy
  networking.proxy.default = "http://localhost:7897";
  networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain,::1";

  # TUN Mode
  services.resolved.enable = true;
}
