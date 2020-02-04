Pod::Spec.new do |s|
  s.name         = 'ProvidenceVideo'
  s.version      = '0.1.28'
  s.platform = :ios, '10.0'
  s.swift_version = '4.2'
  s.summary      = 'Library to talk to Providences WebRTC implementation'
  s.homepage = 'http://www.providence.org/'
  s.license = 'private'
  s.authors = { 'Reuben Lee' => 'reuben.Lee@providence.org', 'Bill Nagy' => 'william.nagy@providence.org' }
  s.source = {
    :git => 'git@github.com:Health-V2-Consortium/ProvidenceVideo-iOS.git', :tag => "0.1.28"
  }
  s.module_name = 'ProvidenceVideo'
  s.default_subspec = 'Core'

  s.subspec 'Core' do | core |
    ## ---------------------------------------------------------------------------
    # Production Framework Source
    ## ---------------------------------------------------------------------------
    s.source_files = "Framework/ProvidenceVideo.framework/Headers/*.h"
    s.public_header_files = "Framework/ProvidenceVideo.framework/Headers/*.h"
    s.vendored_frameworks = ["Framework/ProvidenceVideo.framework"]

    # Providence Video SDK dependency
    core.framework = 'OpenGLES'
    core.framework = 'AVFoundation'
    core.framework = 'CoreVideo'
    core.framework = 'QuartzCore'
    core.dependency 'Starscream', '~> 3.1.0'
    core.dependency 'WebRTC', '~> 63.11.20455'
    core.dependency 'KTVJSONWebToken', '~> 2.1.0'
    core.dependency 'CryptoSwift', '~> 1.0.0'
    core.dependency 'PromiseKit/CorePromise', '~>6.4.1'
  end
end
