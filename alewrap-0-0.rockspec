package = 'alewrap'
version = '0-0'

source = {
  url = 'git://github.com/Kaixhin/alewrap.git'
}

description = {
  summary = "Alewrap"
}

dependencies = {
  'xitari',
  'image',
  'paths'
}

build = {
  type = "command",
  build_command = [[
    cmake . -DCMAKE_BUILD_TYPE=Release -DCMAKE_PREFIX_PATH="$(LUA_BINDIR)/.." -DCMAKE_INSTALL_PREFIX="$(PREFIX)" && $(MAKE)
  ]],
  install_command = "$(MAKE) install"
}
