ISESymbolLibrary
================

A symbol library containing a variety of logic components in the format presented by most logic texts, *and* a set of ruby scripts which aide in creation of higher-level components in many bit values. In many cases, these are more convenient to work with than the Xilinx "component arrays".


Installation
--------------

**Before you begin, be sure you have Ruby 1.9.1+ and Bundler installed:**


To install Ruby on arch, use:

    sudo pacman -S ruby

To install Ruby on Debian/Ubuntu, use:

    sudo apt-get install ruby1.9


To install bundler on any platform, use:

    sudo gem install bundler --no-user-install



**Next, you'll need to obtain a copy of the project folder:**

You can easily attain the library using git:

    git clone https://github.com/ktemkin/ISESymbolLibrary 


You can also download it from the following link: 

    https://github.com/ktemkin/ISESymbolLibrary/archive/master.zip


**In the project folder, ask Bundler to install the required gems:**

First, navigate to the project folder:
  
    cd ISESymbolLibrary 

You should be able to run the following command *without* sudo:

    bundle install

You should now have a working copy of the ISESymbolLibrary-- including the generator scripts.


Configuration
----------------

In the current distribution, all of the configuration files are located in the `MSI_Components` directory-- as they build the MSI component library. The library is defined in two core places:

* The core "build tasks" are defined in `MSI_Components/Rakefile`; which are documented internally.
* The core "source files" are defined in `MSI_Components/base_files/`. Each component should consist of two files: a _source file_ (which is typically VHDL), and a _symbol file_, which is always an ISE symbol file.

When creating source files, the following two "placeholder" macros can be used:

* `COMPONENT_NAME_PLACEHOLDER`, which will be replaced by the component's actual name. In VHDL, this should be used as the entity name.
* `BUS_WIDTH_PLACEHOLDER`, which will be replaced by the component's actual width. This is usually used to provide a generic value; though it can also be used to specify the width of signals directly, e.g. `std_logic_value(BUS_WIDTH_PLACEHOLDER - 1 downto 0)`.


Generation
------------------

Generating the MSI components is easy-- just run the following command from the `MSI_Components` directory:

    bundle exec rake


This executes the `rake` command from an environment which can access all of the gems installed by Bundler.






