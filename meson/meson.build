project('IPsec', 'C', 'CPP',
        # Get version number from file.
        # Fallback to "more" for Windows compatibility.
        # version: run_command(find_program('cat', 'more'),
        #       files('VERSION')).stdout().strip(),
        license: 'BSD',
        default_options: ['buildtype=debug',
                          'default_library=static'],
        meson_version: '>= 0.47.1'
)

# set up some global vars for compiler, platform, configuration, etc.
cc = meson.get_compiler('c')
cpp = meson.get_compiler('cpp')

add_project_arguments('-DALLOW_EXPERIMENTAL_API', language: 'c')
add_project_arguments('-D_GNU_SOURCE', language: 'c')

if host_machine.cpu_family().startswith('x86')
        add_project_arguments('-march=native', language: 'c')
        add_project_arguments('-mavx', language: 'c')
        arch_subdir = 'x86'
elif host_machine.cpu_family().startswith('arm') or host_machine.cpu_family().startswith('aarch')
        arch_subdir = 'arm'
elif host_machine.cpu_family().startswith('ppc')
        arch_subdir = 'ppc'
endif

# Uncomment this line to remove warnings of experimental compile
# add_project_arguments('-D DOCA_ALLOW_EXPERIMENTAL_API', language: 'c')

lib_lwip = cc.find_library('lwip', dirs : ['/usr/lib/x86_64-linux-gnu'])
inc_lwip = include_directories('/usr/include/lwip')

sources = [
        './src/core/des.c',
        './src/core/ah.c',
        './src/core/esp.c',
        './src/core/ipsec.c',
        './src/core/md5.c',
        './src/core/sa.c',
        './src/core/sha1.c',
        './src/core/util.c',
        './src/netif/dumpdev.c',
        './src/netif/ipsecdev.c',
        './src/testing/structural/main.c',
]

common_dir = include_directories('./src/include')

executable('ipsec_test', sources, dependencies : [lib_lwip], include_directories : [common_dir, inc_lwip], install: false)
