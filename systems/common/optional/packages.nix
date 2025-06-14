{ outputs, ... }:

{
  environment.systemPackages = with outputs.pkgs; [
    ## disk management
    kdePackages.filelight
    kdiskmark
    gnome-disk-utility
    ## media
    mpv
    # office suite
    # libreoffice-qt
    onlyoffice-desktopeditors
    ## browsers
    google-chrome
    firefox

    thunderbird
    telegram-desktop
    gimp
    kdePackages.kdenlive
    obsidian
    stow
    chezmoi
    qbittorrent
    obs-studio
    easyeffects
    gnome-boxes
    # kdePackages.kcolorpicker epick gpick
    remmina
    rclone

    ## CLI UTILS
    ### archives
    zip
    unzip
    rar
    p7zip
    # wayland clipboard
    wl-clipboard
    ### nixos
    nh
    nurl
    ### search
    ripgrep
    fzf
    zoxide
    ### videos
    ffmpeg

    ## package managers / languages
    ### C
    gnumake
    cmake
    gcc
    ### Lua
    luarocks
    ### JavaScript
    nodejs
    ### Python
    python3
    ### Java
    openjdk
    maven
    ant
    ### Rust
    rustc
    cargo

    ## terminal
    kitty

    ## tmux
    tmux
    tmuxinator

    ## editors
    neovim
    vscode
    # jetbrains.idea-community-bin

    ## shell/cli
    zsh
    oh-my-posh
    git
    gh
    lazygit
    lazydocker

    ## other gui apps
    ### http clients
    postman
    bruno
    # insomnia
    dbeaver-bin
    # burpsuite
    soapui
    # charles
  ];
}
