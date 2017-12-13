class shared_profile(
  String$f1param,
  String$f2param,
  Hash$f2hash,
  Hash$f2hash2,
  Array$f2array,
  Array$f2array2,
) {

  # Use ENV defaults to override shared profile
  $_f1param = lookup('forgemod1::param', { default_value => $f1param })
  $_f2param = lookup('forgemod2::param', { default_value => $f2param })
  $_f2hash = lookup('forgemod2::hash', { default_value => $f2hash })
  $_f2array = lookup('forgemod2::array', { default_value => $f2array })
  # Merge ENV defaults with shared profile
  $_f2hash2 = merge(lookup('forgemod2::hash2'),$f2hash2)
  $_f2array2 = unique(flatten([lookup('forgemod2::array2'),$f2array2]))

  class{'forgemod1':
    param => $_f1param,
  }
  class{'forgemod2':
    param => $_f2param,
    hash  => $_f2hash,
    array => $_f2array,
    hash2  => $_f2hash2,
    array2 => $_f2array2,
  }
}
