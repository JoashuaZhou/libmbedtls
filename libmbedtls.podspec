Pod::Spec.new do |spec|
    spec.name         = 'libmbedtls'
    spec.version      = '2.28.0'
    spec.summary      = 'An open source, portable, easy to use, readable and flexible SSL library.'
    spec.homepage     = 'https://tls.mbed.org'
    spec.author       = 'AppleFramework'
    spec.source       = { :git => 'https://github.com/ARMmbed/mbedtls.git', :tag => 'v2.28.0' }

    spec.header_dir = 'mbedtls'
    spec.public_header_files = 'include/**/*.h'
    spec.source_files = '{include,library}/**/*.{h,c}'
    spec.pod_target_xcconfig = {
        "HEADER_SEARCH_PATHS": "\"${PODS_TARGET_SRCROOT}/include\"",
        "CLANG_WARN_DOCUMENTATION_COMMENTS": "NO"
    }
  end
