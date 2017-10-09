WebMock.disable_net_connect!(allow_localhost: true)

RSpec.configure do |config|
  config.before :each do
    stub_request(:put, %r{s3.amazonaws.com\/uploads\/user\/avatar\/.*})
      .to_return(
        status: 200,
        body: "",
        headers: {}
      )
  end
end
