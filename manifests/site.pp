package
{
  [ 'cron',
  'locate',
  'lsof',
  'rubygems',
  'sudo',
  'unzip' ]:
  ensure => installed,
}
node 'webtest' {
include roles::webserver
}
