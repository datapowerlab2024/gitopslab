#helper script
for i in $(ls -d App*) ; do
  cp AppDomain01/config/AppDomain01.cfg.json $i/config/$i.cfg.json
  no=$(expr 9443 + $(echo $i | tr -d '[a-z][A-Z]'))
  gsed -i s/9444/$no/ $i/config/$i.cfg.json
done
