{ stdenv, lib }:

stdenv.mkDerivation rec {
  pname = "sddm-theme";
  version = "1.0";

  src = ../../home/nixos/modules/sddm/theme;

  installPhase = ''
    mkdir -p $out/share/sddm/themes/sddm-theme
    cp -R $src/* $out/share/sddm/themes/sddm-theme/
  '';

  meta = with lib; {
    description = "Custom SDDM theme";
    license = licenses.free;
    platforms = platforms.all;
  };
}
