require 'mkmf'

# While looking at extconf.rb examples, I yoinked this... Forgetting who I snagged it from.
def command(cmd)
  $stderr.puts "execute '#{cmd}' ..."
  raise(RuntimeError, cmd) unless system(cmd)
  $stderr.puts "execute '#{cmd}' done"
end

# Name your extension
extension_name = 'fraction'

# Set your target name
dir_config(extension_name)

# Compilation Flags. Not absolutely necessary, but may save you a headache.
if RUBY_PLATFORM.downcase.include?("linux")
  $CFLAGS << " " << `gnustep-config --objc-flags`
  $DLDFLAGS << " -lgnustep-base " << `gnustep-config --objc-libs`
end

$LDFLAGS << " -framework Foundation"  if RUBY_PLATFORM.downcase.include?("darwin")


# Do the work
create_makefile(extension_name)

command "mv -f Makefile Makefile.bak"
command "sed -e 's/^\.c\.o:$/\.m\.o:/' Makefile.bak > Makefile"
command "rm Makefile.bak"
