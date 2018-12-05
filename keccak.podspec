Pod::Spec.new do |spec|
    spec.name         = 'keccak'
    spec.version      = '0.1.0'
    spec.ios.deployment_target = "8.0"

    
    spec.osx.deployment_target = "10.10"
    spec.tvos.deployment_target = "9.0"
    spec.watchos.deployment_target = "2.0"
    spec.summary      = 'keccak module for web3swift'
    spec.homepage     = 'https://github.com/bankex/web3swift'
    spec.author       = 'Bankex Foundation'
    spec.source       = { :git => 'https://github.com/v57/keccak.c', :tag => String(spec.version) }
    spec.pod_target_xcconfig = {
    'OTHER_CFLAGS' => '-O3',
    'HEADER_SEARCH_PATHS' => '"${PODS_ROOT}/keccak"'
  }
    spec.source_files = 'keccak/**/*.{c,h}'
    spec.public_header_files = 'keccak/include/*.h'
end
