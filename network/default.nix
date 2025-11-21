{
  imports = [
    ./mihomo.nix
  ];

  networking = {
    hostName = "reflexia-nixos";
    networkmanager.enable = true;

    # Proxy
    proxy.default = "http://localhost:7897";
    proxy.noProxy = "127.0.0.1,localhost,internal.domain,::1";

    # DNS
    nameservers = [ "8.8.8.8" ];
  };

  # TUN Mode
  services.resolved.enable = true;
}
