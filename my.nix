{ config, pkgs, ... }:

{
  console.keyMap = "us";
  time.timeZone = "America/Los_Angeles";

  environment.systemPackages = with pkgs; [
    pciutils
    tcpdump
    mtr
    acpi
    dmidecode
    lshw
    lsof
    vim
    atom
    dnsutils
    #vim_configurable
    git
    jq
    zip
    unzip
    chromium
    google-chrome
    firefox
    gnupg
    keybase
    eclipses.eclipse-sdk
    gimp
    keybase
    steam
    python37Full
    pypi2nix
  ];

  environment.interactiveShellInit = ''
    export PATH="$PATH:$HOME/bin"

    shopt -s histappend
    shopt -s checkwinsize
  '';

  users.extraUsers.wal = {
     isNormalUser = true;
     extraGroups = [ "wheel" "audio" "video" "systemd-journal" "systemd-network" "dialout" ];
  };

  users.extraUsers.kaden = {
     isNormalUser = true;
  };

  users.extraUsers.leona = {
     isNormalUser = true;
  };

  security.sudo.wheelNeedsPassword = false;

  environment.variables.EDITOR = pkgs.lib.mkOverride 0 "vim";
  environment.variables.BROWSER = pkgs.lib.mkOverride 0 "chromium";
  #programs.bash.enableCompletion = true;

}
