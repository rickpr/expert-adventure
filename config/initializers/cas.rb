# Read the CAS server from the environment, or use the fake CAS
cas_config = { cas_base_url:  ENV["CAS_BASE"] || "https://cas-unm.rhcloud.com/" }
# The framework will try to guess the URL if it's not provided
cas_config.merge!(service_url: ENV["CAS_SERVICE"]) if ENV["CAS_SERVICE"]
CASClient::Frameworks::Rails::Filter.configure(cas_config)
