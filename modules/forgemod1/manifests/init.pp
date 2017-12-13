class forgemod1 (
  $param = $forgemod1::params::param,
  $param2 = $forgemod1::params::param2,
)inherits forgemod1::params{
  notify {"forgemod1 param is ${param}":}
  notify {"forgemod1 param2 is ${param2}":}
}
