Pod::Spec.new do |s|
  s.name     = 'AppProxyCap'
  s.version  = '1.1'
  s.platform = :ios
  s.license  = 'MIT'
  s.summary  = 'Application-wide proxy setting.'
  s.homepage = 'https://github.com/amoyi/AppProxyCap'
  s.author   = { 'Du Song' => 'freewizard@gmail.com' }
  s.source   = { :git => 'https://github.com/amoyi/AppProxyCap.git' }

  s.description  =  'Add the following line to your application before any network call:' \
                    '[AppProxyCap activate];'                                             \
                    '[AppProxyCap setProxy:AppProxy_HTTP Host:@"127.0.0.1" Port:8086];'   \
                    'HTTP traffic in current app via CFNetwork (e.g. NSURLConnection) '   \
                    'will go through 127.0.0.1:8086 HTTP proxy afterwards, traffic in '   \
                    'other application is not affected.'

  s.source_files = 'Lib/*.{h,m,c}'
  s.framework = 'SystemConfiguration', 'CFNetwork'
end