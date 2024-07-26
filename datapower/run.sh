#helper script
for i in $(ls -d App*) ; do
  no=$(expr 9443 + $(echo $i | tr -d '[a-z][A-Z]'))
  gsed -i s/...change_HTTPSSourceProtocolHandler_fsh-https-gitops_LocalPort.../$no/ $i/config/$i.cfg.json
done
