{
  description = ''A website management tool. Run the file and access your webpage.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-nimwc-v6_1_3.flake = false;
  inputs.src-nimwc-v6_1_3.owner = "ThomasTJdev";
  inputs.src-nimwc-v6_1_3.ref   = "refs/tags/v6.1.3";
  inputs.src-nimwc-v6_1_3.repo  = "nim_websitecreator";
  inputs.src-nimwc-v6_1_3.type  = "github";
  
  inputs."jester".owner = "nim-nix-pkgs";
  inputs."jester".ref   = "master";
  inputs."jester".repo  = "jester";
  inputs."jester".type  = "github";
  inputs."jester".inputs.nixpkgs.follows = "nixpkgs";
  inputs."jester".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."bcrypt".owner = "nim-nix-pkgs";
  inputs."bcrypt".ref   = "master";
  inputs."bcrypt".repo  = "bcrypt";
  inputs."bcrypt".type  = "github";
  inputs."bcrypt".inputs.nixpkgs.follows = "nixpkgs";
  inputs."bcrypt".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."datetime2human".owner = "nim-nix-pkgs";
  inputs."datetime2human".ref   = "master";
  inputs."datetime2human".repo  = "datetime2human";
  inputs."datetime2human".type  = "github";
  inputs."datetime2human".inputs.nixpkgs.follows = "nixpkgs";
  inputs."datetime2human".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."firejail".owner = "nim-nix-pkgs";
  inputs."firejail".ref   = "master";
  inputs."firejail".repo  = "firejail";
  inputs."firejail".type  = "github";
  inputs."firejail".inputs.nixpkgs.follows = "nixpkgs";
  inputs."firejail".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."otp".owner = "nim-nix-pkgs";
  inputs."otp".ref   = "master";
  inputs."otp".repo  = "otp";
  inputs."otp".type  = "github";
  inputs."otp".inputs.nixpkgs.follows = "nixpkgs";
  inputs."otp".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."recaptcha".owner = "nim-nix-pkgs";
  inputs."recaptcha".ref   = "master";
  inputs."recaptcha".repo  = "recaptcha";
  inputs."recaptcha".type  = "github";
  inputs."recaptcha".inputs.nixpkgs.follows = "nixpkgs";
  inputs."recaptcha".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."webp".owner = "nim-nix-pkgs";
  inputs."webp".ref   = "master";
  inputs."webp".repo  = "webp";
  inputs."webp".type  = "github";
  inputs."webp".inputs.nixpkgs.follows = "nixpkgs";
  inputs."webp".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."packedjson".owner = "nim-nix-pkgs";
  inputs."packedjson".ref   = "master";
  inputs."packedjson".repo  = "packedjson";
  inputs."packedjson".type  = "github";
  inputs."packedjson".inputs.nixpkgs.follows = "nixpkgs";
  inputs."packedjson".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-nimwc-v6_1_3"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-nimwc-v6_1_3";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}