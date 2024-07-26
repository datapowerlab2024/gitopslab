#helper script
for i in $(ls -d App*) ; do
  cp AppDomain05/config/AppDomain05.cfg.json $i/config/$i.cfg.json
  cp -r AppDomain05/local $i/
  no=$(expr 9443 + $(echo $i | tr -d '[a-z][A-Z]'))
  gsed -i s/9448/$no/ $i/config/$i.cfg.json

  gsed -i s/local....js/local\:\\\/\\\/\\\/gws.js/ $i/config/$i.cfg.json

done
