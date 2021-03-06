name 'jira'
maintainer 'Brian Flad'
maintainer_email 'bflad417@gmail.com'
license 'Apache 2.0'
description 'Installs/Configures Atlassian JIRA.'
version '2.0.5'
recipe 'jira', 'Installs/configures Atlassian JIRA'
recipe 'jira::apache2', 'Installs/configures Apache 2 as proxy (ports 80/443)'
recipe 'jira::build_war', 'Builds JIRA WAR'
recipe 'jira::container_server_configuration', 'Configures container server for JIRA deployment'
recipe 'jira::container_server_jars', 'Deploys database/JIRA jars to container server'
recipe 'jira::database', 'Installs/configures MySQL/Postgres server, database, and user for JIRA'
recipe 'jira::installer', 'Installs/configures JIRA via installer'
recipe 'jira::standalone', 'Installs/configures JIRA via standalone archive'
recipe 'jira::sysv', 'Installs/configures JIRA SysV init service'
recipe 'jira::war', 'Installs JIRA WAR'

depends 'apache2'
depends 'ark'
depends 'database'
depends 'java'
depends 'mysql'
depends 'mysql_connector'
depends 'postgresql'
suggests 'tomcat'

supports 'centos', '>= 6.0'
supports 'redhat', '>= 6.0'
supports 'ubuntu', '>= 12.04'
