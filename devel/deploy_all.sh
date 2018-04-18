#!/bin/bash
# ARTWORK
# GET=1 (attempt to fetch Postgres database and Grafana database from the test server)
# IGET=1 (attempt to fetch Influx database from the test server)
# AGET=1 (attempt to fetch 'All CNCF' Postgres database from the test server)
set -o pipefail
exec > >(tee run.log)
exec 2> >(tee errors.txt)
if ( [ -z "$PG_PASS" ] || [ -z "$IDB_PASS" ] || [ -z "$IDB_HOST" ] )
then
  echo "$0: You need to set PG_PASS, IDB_PASS, IDB_HOST environment variables to run this script"
  exit 1
fi
if ( [ ! -z "$IGET" ] && [ -z "$IDB_PASS_SRC" ] )
then
  echo "$0: You need to set IDB_PASS_SRC environment variable when using IGET"
  exit 1
fi
host=`hostname`
function finish {
    sync_unlock.sh
    rm -f /tmp/deploy.wip 2>/dev/null
}
if [ -z "$TRAP" ]
then
  sync_lock.sh || exit -1
  trap finish EXIT
  export TRAP=1
  > /tmp/deploy.wip
fi

if [ -z "$ONLY" ]
then
  host=`hostname`
  if [ $host = "cncftest.io" ]
  then
    all=`cat ./devel/all_test_projects.txt`
  else
    all=`cat ./devel/all_prod_projects.txt`
  fi
else
  all=$ONLY
fi

# OCI has no icon in cncf/artwork at all, so use "-" here
for proj in $all
do
  db=$proj
  if [ "$proj" = "kubernetes" ]
  then
    PROJ=kubernetes     PROJDB=gha            PROJREPO="kubernetes/kubernetes"      ORGNAME=Kubernetes  PORT=2999 ICON=kubernetes  GRAFSUFF=k8s            GA="UA-108085315-1"  SKIPTEMP=1 IGEN=1 ./devel/deploy_proj.sh || exit 2
  elif [ "$proj" = "prometheus" ]
  then
    PROJ=prometheus     PROJDB=prometheus     PROJREPO="prometheus/prometheus"      ORGNAME=Prometheus  PORT=3001 ICON=prometheus  GRAFSUFF=prometheus     GA="UA-108085315-3"  SKIPTEMP=1 ./devel/deploy_proj.sh || exit 3
  elif [ "$proj" = "opentracing" ]
  then
    PROJ=opentracing    PROJDB=opentracing    PROJREPO="opentracing/opentracing-go" ORGNAME=OpenTracing PORT=3002 ICON=opentracing GRAFSUFF=opentracing    GA="UA-108085315-4"  ./devel/deploy_proj.sh || exit 4
  elif [ "$proj" = "fluentd" ]
  then
    PROJ=fluentd        PROJDB=fluentd        PROJREPO="fluent/fluentd"             ORGNAME=Fluentd     PORT=3003 ICON=fluentd     GRAFSUFF=fluentd        GA="UA-108085315-5"  ./devel/deploy_proj.sh || exit 5
  elif [ "$proj" = "linkerd" ]
  then
    PROJ=linkerd        PROJDB=linkerd        PROJREPO="linkerd/linkerd"            ORGNAME=Linkerd     PORT=3004 ICON=linkerd     GRAFSUFF=linkerd        GA="UA-108085315-6"  ./devel/deploy_proj.sh || exit 6
  elif [ "$proj" = "grpc" ]
  then
    PROJ=grpc           PROJDB=grpc           PROJREPO="grpc/grpc"                  ORGNAME=gRPC        PORT=3005 ICON=grpc        GRAFSUFF=grpc           GA="UA-108085315-7"  SKIPTEMP=1 ./devel/deploy_proj.sh || exit 7
  elif [ "$proj" = "coredns" ]
  then
    PROJ=coredns        PROJDB=coredns        PROJREPO="coredns/coredns"            ORGNAME=CoreDNS     PORT=3006 ICON=coredns     GRAFSUFF=coredns        GA="UA-108085315-9"  ./devel/deploy_proj.sh || exit 8
  elif [ "$proj" = "containerd" ]
  then
    PROJ=containerd     PROJDB=containerd     PROJREPO="containerd/containerd"      ORGNAME=containerd  PORT=3007 ICON=containerd  GRAFSUFF=containerd     GA="UA-108085315-10" ./devel/deploy_proj.sh || exit 9
  elif [ "$proj" = "rkt" ]
  then
    PROJ=rkt            PROJDB=rkt            PROJREPO="rkt/rkt"                    ORGNAME=rkt         PORT=3008 ICON=rkt         GRAFSUFF=rkt            GA="UA-108085315-11" ./devel/deploy_proj.sh || exit 10
  elif [ "$proj" = "cni" ]
  then
    PROJ=cni            PROJDB=cni            PROJREPO="containernetworking/cni"    ORGNAME=CNI         PORT=3009 ICON=cni         GRAFSUFF=cni            GA="UA-108085315-12" ./devel/deploy_proj.sh || exit 11
  elif [ "$proj" = "envoy" ]
  then
    PROJ=envoy          PROJDB=envoy          PROJREPO="envoyproxy/envoy"           ORGNAME=Envoy       PORT=3010 ICON=envoy       GRAFSUFF=envoy          GA="UA-108085315-13" ./devel/deploy_proj.sh || exit 12
  elif [ "$proj" = "jaeger" ]
  then
    PROJ=jaeger         PROJDB=jaeger         PROJREPO="jaegertracing/jaeger"       ORGNAME=Jaeger      PORT=3011 ICON=jaeger      GRAFSUFF=jaeger         GA="UA-108085315-14" ./devel/deploy_proj.sh || exit 13
  elif [ "$proj" = "notary" ]
  then
    PROJ=notary         PROJDB=notary         PROJREPO="theupdateframework/notary"  ORGNAME=Notary      PORT=3012 ICON=notary      GRAFSUFF=notary         GA="UA-108085315-15" ./devel/deploy_proj.sh || exit 14
  elif [ "$proj" = "tuf" ]
  then
    PROJ=tuf            PROJDB=tuf            PROJREPO="theupdateframework/tuf"     ORGNAME=TUF         PORT=3013 ICON=tuf         GRAFSUFF=tuf            GA="UA-108085315-16" ./devel/deploy_proj.sh || exit 15
  elif [ "$proj" = "rook" ]
  then
    PROJ=rook           PROJDB=rook           PROJREPO="rook/rook"                  ORGNAME=Rook        PORT=3014 ICON=rook        GRAFSUFF=rook           GA="UA-108085315-17" ./devel/deploy_proj.sh || exit 16
  elif [ "$proj" = "vitess" ]
  then
    PROJ=vitess         PROJDB=vitess         PROJREPO="vitessio/vitess"            ORGNAME=Vitess      PORT=3015 ICON=vitess      GRAFSUFF=vitess         GA="UA-108085315-18" ./devel/deploy_proj.sh || exit 17
  elif [ "$proj" = "nats" ]
  then
    PROJ=nats           PROJDB=nats           PROJREPO="nats-io/gnatsd"             ORGNAME=NATS        PORT=3016 ICON=nats        GRAFSUFF=nats           GA="UA-108085315-21" ./devel/deploy_proj.sh || exit 18
  elif [ "$proj" = "opa" ]
  then
    PROJ=opa            PROJDB=opa            PROJREPO="open-policy-agent/opa"      ORGNAME=OPA         PORT=3017 ICON=opa         GRAFSUFF=opa            GA="UA-108085315-22" ./devel/deploy_proj.sh || exit 19
  elif [ "$proj" = "spiffe" ]
  then
    PROJ=spiffe         PROJDB=spiffe         PROJREPO="spiffe/spiffe"              ORGNAME=SPIFFE      PORT=3018 ICON=spiffe      GRAFSUFF=spiffe         GA="UA-108085315-23" ./devel/deploy_proj.sh || exit 20
  elif [ "$proj" = "spire" ]
  then
    PROJ=spire          PROJDB=spire          PROJREPO="spiffe/spire"               ORGNAME=SPIRE       PORT=3019 ICON=spire       GRAFSUFF=spire          GA="UA-108085315-24" ./devel/deploy_proj.sh || exit 21
  elif [ "$proj" = "opencontainers" ]
  then
    PROJ=opencontainers PROJDB=opencontainers PROJREPO="opencontainers/runc"        ORGNAME=OCI         PORT=3100 ICON="-"         GRAFSUFF=opencontainers GA="UA-108085315-19" ./devel/deploy_proj.sh || exit 22
  elif [ "$proj" = "cncf" ]
  then
    PROJ=cncf           PROJDB=cncf           PROJREPO="cncf/landscape"             ORGNAME=CNCF        PORT=3255 ICON=cncf        GRAFSUFF=cncf           GA="UA-108085315-8" ./devel/deploy_proj.sh || exit 23
  elif [ "$proj" = "all" ]
  then
    PROJ=all            PROJDB=allprj         PROJREPO="not/used"                   ORGNAME="All CNCF"  PORT=3254 ICON=cncf        GRAFSUFF=all            GA="UA-108085315-20" SKIPTEMP=1 ./devel/deploy_proj.sh || exit 24
  else
    echo "Unknown project: $proj"
    exit 28
  fi
done

CERT=1 WWW=1 ./devel/create_www.sh || exit 25
./devel/pdb_vars_all.sh || exit 26
./devel/idb_vars_all.sh || exit 27
echo "$0: All deployments finished"
