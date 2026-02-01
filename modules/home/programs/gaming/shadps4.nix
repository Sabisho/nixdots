{pkgs, ...}: {
  home.packages = with pkgs; [
    shadps4
    liborbispkg-pkgtool
  ];
}
