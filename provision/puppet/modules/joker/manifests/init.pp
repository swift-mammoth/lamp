class joker {

  class { 'joker::config': }

  contain 'joker::config'
}