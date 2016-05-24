# web-app-cookbook

web app cookbook using ruby app server ( sinatra and puma ) and nginx service as load balancer. Two nodes are added now and can add more easily from .kitchen.yml file. 

## Supported Platforms

 host machine is RHEL 7.2  and tested with  docker image ubuntu 14.04.

## Attributes

<table>

  <tr>
    <td><tt>['backend']['server']</tt></td>
    <td>app-node1</td>
        <td>app-node2</td>
   </tr>
</table>

## Usage
 please make sure that docker demon is running on host machine. 
 
  if not, install it using 
 #curl -sSL https://get.docker.com/ | sh
 
 install bundle
 # gem install bundle
 
 run bundle to install required gems
 #cd we-app 
 #bundle install --path=vendor/bundle

 run the container app-node1
 #bundle exec kitchen create  app-node1-ubuntu
 #bundle exec kitchen converge app-node1-ubuntu
 
 run container app-node2
 #bundle exec kitchen create  app-node2-ubuntu
 #bundle exec kitchen converge app-node2-ubuntu

 run  LB
 #bundle exec kitchen create  loadbalancer-ubuntu
 #bundle exec kitchen converge loadbalancer-ubuntu
 
 access the LB 
 #curl -i http://localhost:80



 

## License and Authors

Author:: girdhar katiyar (<egirdhar@gmail.com>)




