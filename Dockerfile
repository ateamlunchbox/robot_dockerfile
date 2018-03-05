FROM centos:7

RUN yum install -y centos-release-scl

RUN yum install -y rh-ruby24 git rh-ruby24-ruby-devel gcc make

RUN . /opt/rh/rh-ruby24/enable && gem install ruby_robot --no-ri --no-rdoc

EXPOSE 4567

CMD scl enable rh-ruby24 ruby_robot_web
