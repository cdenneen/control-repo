class forgemod3 (
  $param = $forgemod3::params::param
)inherits forgemod3::params{
  notify {"forgemod3 param is ${param}":}
}
