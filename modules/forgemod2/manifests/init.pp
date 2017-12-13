class forgemod2 (
  String $param,
  String $param2,
  Hash $hash,
  Array $array,
  Hash $hash2,
  Array $array2,
){
  notify {"forgemod2 param is ${param}":}
  notify {"forgemod2 param2 is ${param2}":}
  $hash.each |$k,$v| {
    notify {"forgemod2 hash is ${k} with value ${v}":}
  }
  $array.each |$item| {
    notify {"fmod2 array is $item":}
  }
  $hash2.each |$k,$v| {
    notify {"forgemod2 hash2 is ${k} with value ${v}":}
  }
  $array2.each |$item| {
    notify {"fmod2 array2 is $item":}
  }
}
