# Smart Developer Network API

A Ruby wrapper that uses curl for the REST API of SMART Developer Network.
We recommend using the <a href="https://github.com/bridgeutopia/smart_devnet" target="_blank">SMART Devnet</a> gem because of its apparent advantages when it comes to returning parsed response for each request.
This just exist for prefer something faster. The difference is trivial.

## Benchmark results


<pre>
n = 100
Benchmark.bm do |x|
  x.report { SmartDevnet.current.send_sms('09296342280', "Testing API.") }
  x.report { SmartDevnetLite.current.send_sms('09296542280', "Testing API.")  }
end
</pre>

<pre>
  real
  1.285882
  0.870235
</pre>


## Requirements

    Ruby 1.9.x
    curl (sudo apt-get install curl)


## Installation

Add this line to your application's Gemfile:

    gem 'smart_devnet_lite'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install smart_devnet_lite


## Usage

    SmartDevnetLite.connect(
      sp_id: '',
      sp_password: '',
      nonce:'',
      created_at: '',
      access_code: '',
      sp_service_id: '',
      path_to_cert: '')
    response = SmartDevnetLite.current.send_sms('mobile_number', "Testing API.")
    puts response[:code], response[:body], response[:full_response]

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## MIT Open Source License

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

## Acknowledgements

<a href="http://blog.bridgeutopiaweb.com" target="_blank">Katherine G. Pe</a>
