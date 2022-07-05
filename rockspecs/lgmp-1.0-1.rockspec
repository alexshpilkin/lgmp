package = "lgmp"
version = "1.0-1"
source = {
  url = "git://github.com/ImagicTheCat/lgmp",
  tag = "1.0"
}

description = {
  summary = "GMP Lua C API bindings",
  detailed = [[
https://gmplib.org/
  ]],
  homepage = "https://github.com/ImagicTheCat/lgmp",
  license = "MIT"
}

dependencies = {
  "lua >= 5.2, < 5.5"
}

external_dependencies = {
  GMP = {
    header = "gmp.h"
  }
}

build = {
  type = "builtin",
  modules = {
    gmp = "gmp.lua",
    ["c-gmp"] = {
      sources = {"lgmp.c"},
      libraries = {"gmp"},
      incdirs = {"$(GMP_INCDIR)"},
      libdirs = {"$(GMP_LIBDIR)"},
    }
  }
}
