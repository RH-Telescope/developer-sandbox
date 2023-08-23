
The general requirements for CodeReady Containers are:

	OS Download and install: RHEL 8x with subscription-manager register complete
	Download openshift local secret: pull-secret.txt from console.redhat.com/openshift/create/local
	Download CRC latest: mirror.openshift.com/pub/openshift-v4/clients/crc/latest

The physical requirements include (my laptop):

	12 CPUs (vCPUs)
	64GB of memory (RAM)
	520GB of storage space

Building CRC and Deploying the environment:

Download openshift local from developer.redhat.com
https://access.redhat.com/documentation/en-us/red_hat_openshift_local/2.23/html/getting_started_guide/index

1. Download and unzip crc
2. cp to ~crc and make sure it is executeable
3. add to PATH variable
4. verify crc responds
5. crc delete
6. crc cleanup
7. crc setup
8. crc start --help
9. crc start -c 8 -m 25000 -d 60 --log-level=debug -p pull-secret.txt
10. oc login -u kubeadmin https://api.crc.testing:6443
11. Sign onto console and deploy argocd operator
11. deploy app at command line
12. look at app on command line and on UI
13. Deploy toggle
14. Deploy integration parts (ACS/Compliance)
15. Show Screens
16. Delete and Deploy CRC with Hybrid Cloud Pattern

Hybrid Cloud Pattern for Zero Trust next Demo Day that includes the Above into one step to deploy all - infra, operators and apps
2 PATHS - a) Manual Assessment (Sales/Presales/workshop b) Integration then Assessment (Services)

LINKS –

MOST IMPORTANT - https://search-portfolio-hub.6923.rh-us-east-1.openshiftapps.com/v3/serviceskit/navigate_to_zero_trust_architecture


https://www.unixarena.com/2022/03/openshift-4-x-single-node-cluster-setup-using-redhat-crc.html/
https://hybrid-cloud-patterns.io/patterns/multicloud-gitops/
https://github.com/hybrid-cloud-patterns/zero-trust
https://chrisedrego.medium.com/kubernetes-monitoring-kubeview-86e59b13da18
http://192.168.130.11:31929/ <--look up nodepart

https://github.com/RH-Telescope/contribution/blob/main/Getting-Started-Guide.md
https://github.com/RH-Telescope/contribution/blob/main/Adding-Integrations.md

https://openshift-gitops-server-openshift-gitops.apps-crc.testing/applications/openshift-gitops/telescope-kpeeples?view=tree&resource=
https://telescope-backend-telescope-kpeeples.apps-crc.testing/domains
https://telescope-frontend-telescope-kpeeples.apps-crc.testing/
https://telescope-toggle-telescope-kpeeples.apps-crc.testing/

https://telescope-frontend-telescope-main.apps.test-env.hetzner.project-telescope.com/
https://telescope-toggle-telescope-main.apps.test-env.hetzner.project-telescope.com/

Setup OS with vagrant provider:
- Signup for a no cost rhel subscription developers.redhat.com/register
- run vagrant up in vagrant/[provider]/ (my test was in virtualbox)
- vagrant ssh telescope
- run sudo subscription-manager register --auto-attach
Setup CRC
- if VM/baremetal setup then clone repo https://github.com/RH-Telescope/developer-sandbox into /ansible
- Download openshift local secret: pull-secret.txt from console.redhat.com/openshift/create/local and put in /ansible
- run /ansible/telescope-setup.sh







