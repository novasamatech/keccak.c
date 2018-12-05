Pod::Spec.new do |spec|
    spec.name         = 'keccak.c'
    spec.version      = '0.1.2'
    spec.ios.deployment_target = "8.0"
    spec.osx.deployment_target = "10.9"
    spec.tvos.deployment_target = "9.0"
    spec.watchos.deployment_target = "2.0"
    spec.license      = { :type => 'CC0 (Creative Commons)', :file => 'License.md' }
    spec.summary      = 'keccak module for web3swift'
    spec.homepage     = 'https://github.com/bankex/web3swift'
    spec.author       = 'Bankex Foundation'
    spec.source       = { :git => 'https://github.com/v57/keccak.c.git', :tag => String(spec.version) }
    spec.pod_target_xcconfig = {
    'OTHER_CFLAGS' => '-pedantic -Wall -Wextra -Wcast-align -Wnested-externs -Wshadow -Wstrict-prototypes -Wno-shorten-64-to-32 -Wno-conditional-uninitialized -Wno-unused-function -Wno-long-long -Wno-overlength-strings -O3',
    'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/keccak"'
  }
    spec.source_files = 'keccak/**/*.{c,h}'
    spec.public_header_files = 'keccak/include/*.h'
    spec.module_name = 'keccak'
end
