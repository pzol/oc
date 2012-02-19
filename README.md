# Compiling pure Objective-C

  gcc  -framework Foundation  main.m -o main

# Ubuntu

    sudo apt-get  install -y gobjc gnustep gnustep-devel

    gcc `gnustep-config --objc-flags` -o main main.m -lobjc -lgnustep-base
    gcc -o main main.m -I /usr/include/GNUstep/ -L /usr/lib/GNUstep/ -lgnustep-base -fconstant-string-class=NSConstantString

    source /usr/share/GNUstep/Makefiles/GNUstep.sh
    make

# Run the ruby thingie

      ruby extconf.rb && make


# References
(http://fixnum.org/blog/2007/ruby_c/)[Writing your very own Ruby extension with C]
