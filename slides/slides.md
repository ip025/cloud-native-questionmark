---
marp: true
theme: gardener
footer: Michael Kreipl – x-cellent technologies GmbH
paginate: true
backgroundImage: url("https://metal-stack.io/images/shape/banner.png")
# backgroundImage: url(images/background-branded.png)
---
<!--
_paginate: false
_footer: ""
-->

# What is Cloud Native?
### Michael Kreipl
### 08.07.2022

---

<!--
_paginate: false
_footer: ""
-->

# whoami

* Michael Kreipl
* DevOps Consultant

## Fields of Interest
- Infrastructure Automation
- Selfhosting

## Contact
E-Mail: michael.kreipl@x-cellent.com
Linkedin: https://www.linkedin.com/in/kreiplm
GitHub: https://github.com/ip025 

![bg right:40%](images/2021-09-09_16-28-34.jpg)

<!--
Angefangen als linux admin
dann public cloud engineer
und allgemein automation
-->
---

![bg](https://live.staticflickr.com/65535/52090618443_c69c58c333_k.jpg)

<!--
_footer: https://www.flickr.com/people/143247548@N03/
-->
---

![](images/traefik-cloudnative-1.png)

<!--
_footer: https://traefik.io
-->

---

![](images/traefik-cloudnative-2.png)

<!--
_footer: https://traefik.io
-->

---

![](images/longhorn-cloudnative.png)

<!--
_footer: https://longhorn.io
-->
---

![](images/cloudnative-harbor.png)

<!--
_footer: https://goharbor.io
-->

---

![](images/cloud-natie-cockroachdb.png)

<!--
gehen sogar noch ein bisschen weiter und liefern argumente
- geo-partitioning
- kubernetes operator availible
- kubernetes-compatible
- prometheus integration
-->

<!--
_footer: https://www.cockroachlabs.com/product/cloud-native/
-->

---

# Motivation

- What does Cloud Native stand for?
- Is Cloud Based = Cloud Native?

<!--
wenns in der cloud läuft cloud-native? warscheinlich nicht
-->

<!--
_backgroundImage: url(images)
-->

---

# Agenda

1. Naive Approach
2. Organizational Approach
3. Scientific Approach
4. What now?
5. Closing Remarks

<!--
ist cloud native nur ein buzzword oder macht es einen unterschied wie cloud computing?
-->

---

# Naive Approach

---

Google -> Wikipedia -> CNCF

---

> Cloud native technologies empower organizations to build and run scalable applications in modern, dynamic environments such as public, private, and hybrid clouds. Containers, service meshes, microservices, immutable infrastructure, and declarative APIs exemplify this approach.
> 
>  These techniques enable loosely coupled systems that are resilient, manageable, and observable. Combined with robust automation, they allow engineers to make high-impact changes frequently and predictably with minimal toil.

— *CNCF Cloud Native Definition v1.0*

---

> Cloud native technologies empower organizations to build and run **scalable applications** in modern, **dynamic environments** such as public, private, and hybrid clouds. *Containers, service meshes, microservices, immutable infrastructure, and declarative APIs* exemplify this approach.
> 
>  These techniques enable **loosely coupled systems** that are **resilient, manageable, and observable**. Combined with **robust automation,** they allow engineers to make high-impact changes frequently and predictably with minimal toil.

— *CNCF Cloud Native Definition v1.0*

---

![](https://pbs.twimg.com/media/EP6UeZSVUAA2LpD?format=jpg&name=large) 


<!--
_footer: |
  original: https://dilbert.com/strip/2017-11-08
-->
---

# Organizational Approach

---

![bg fit](images/x-cellent-cloudnative.png)

<!--
_footer: "https://www.x-cellent.com"
-->

---

# x-cellent internal view

* People
* Culture
* Tech
* Engineering

<!--
je nachdem mit wem man spricht

# People
- Well Being
- Self Development
- Diversity
- Education

---

# Culture
- Communication
- Feedback
- Interaction
- Efficiency in teams
- Setting Goals
- Achieving Goals
- Celebrating Goals

---

# Tech
- Open Source
- Kubernetes
- Go
- git
- CI/CD

---

# Engineering
- API only
- 12 Factor
- Security
- Container
-->


---

# Research

<!--
Die x-cellent sicht ist valide, aber halt auch nur die sicht/meinung einer organisation
-->

---

![](images/systematic_study_head.png)

<!--
Metanalyse zum Thema

über 100 wissenschaftliche Publikationen zu dem Thema analysiert
-->

---

# Kratzke, Quint (2017)
## Eight identified Trends
1. Standardized Deployment Units
1. Microservices
1. DevOps
2. Softwarization
3. Loose coupling
4. Elastic Platforms
5. State Isolation
6. Versioned REST APIs

---

# Standardized Deployment Units

![bg right fit](https://pic.onlinewebfonts.com/svg/img_385606.png)

<!--
_footer: https://www.onlinewebfonts.com/icon/385606
-->

---

# Standardized Deployment Units

## Definition

Deployment units wrap a piece of software *in a complete filesystem* that contains everything needed to run: code, *runtime, system tools, system libraries*

<!--
Stellt sicher das es überall gleich läuft 
Muss kein Container sein Virtual Applicances
-->

---

![bg fit center](images/trends.svg)

<!--
warum container und nicht VM?

![](images/2022-06-02%2016.59.54%20trends.google.de%205e1fa17caf2c.png)
-->

<!--
_footer: https://trends.google.de/trends/explore?date=all&q=docker,virtual%20machine,serverless
-->

---

![bg fit center](images/bare-vm-container-faas.png)

<!--
Dabei muss man dazu sagen das container garnicht so modern sind wie sie in den trends hier aussehen
-->

---

# Standardized Deployment Units
## Notable early mentions

* Gaurav Banga, Peter Druschel, and Jeffrey C. Mogul. (1999) Resource containers: A new facility for resource management in server systems.
* R. Lottiaux and C. Morin. (2001) Containers: A sound basis for a true single system image.


<!--
so viel zu den containern/standartisierte deployment units

die erlauben uns jetzt folgendes:
-->

---

# Microservices

---

![bg fit](https://live.staticflickr.com/2236/13109673843_a39e69dd13_3k.jpg)

<!--
_footer: https://www.flickr.com/photos/psd/13109673843
-->
---

![bg fit](images/monolith.png)

<!--
Der Blaue rand ist eine deployment unit
-->

---

![bg fit](images/microservice.png)

---

![bg right ](https://grugbrain.dev/grug.png)

# The Eternal Enemy: Complexity

> apex predator of grug is complexity
> 
> complexity bad
> 
> say again:
> 
> complexity very bad
> 
> you say now:
> 
> complexity very, very bad
[...]
  
— *https://grugbrain.dev*

<!--
_footer: ""
-->

<!--
Abgekapselte einheuten die eine Sache ziemlich gut machen?
Das kommt uns doch bekannt vor
-->

---

# The Unix philosophy

> (i) Make each program do one thing well. To do a new job, build afresh rather than complicate old programs by adding new features. 

— *Eric Steven Raymond in Bell System Technical Journal (1978)*

<!--
z.b. ls, mv, tree, touch
abgesehen von systemd
-->

---

![bg right fit](https://upload.wikimedia.org/wikipedia/commons/thumb/0/05/Devops-toolchain.svg/768px-Devops-toolchain.svg.png?20160907192548)

# DevOps

---

# DevOps

A set of technologies and methodologies to produce better software

- Collaboration
- Automation
- Accelerates build, test and deployment of applications

<!--
das ist cool aber wie setzen wir das  um?

schauen wir uns mal den klassischen Fall an
-->

---

# DevOps
## The *classic* Dev role

1. Planning
2. Design
3. Development
4. Testing
5. Delivery

![bg right fit](images/dev_role.png)

---

# DevOps
## The *classic* Ops role
1. Deploy
2. Monitor
3. Get blamed for outages
   1. [DevOps and the blame problem: an outsider's view (2011)](https://utcc.utoronto.ca/~cks/space/blog/sysadmin/DevopsBlameProblem)
   2. [DevOps: The consequences of blame (2018)](https://opensource.com/article/18/9/consequences-blame-your-devops-team)
   3. [Culture of blaming Ops (/r/kubernetes)](https://www.reddit.com/r/devops/comments/v9wafq/culture_of_blaming_ops/) 

![bg right fit](images/ops_role.png)

---

![bg center fit](https://kubesphere.io/images/devops/dev-ops.png)

<!--
_footer: https://kubesphere.io/devops/
-->

<!--
Der DEVELOPER, ganz wichtiger Punkt
wo ist denn dann der OPS hin? Spare ich mir da Personal? -> Platform team
-->

---

# DevOps: The platform team

---

# DevOps: The platform team
## The basics
- Provide the platform in a **centralized, consistent** manner
  - Container Platform
  - Public Cloud Account
- Coordinate with the Infrastructure team
  - Firewalls
  - Storage
  - Reverse Proxy

<!--
Mindestens macht das Infra team die firewalls in die public cloud

Im falle von OnPrem K8s müssen die nodes ja auch iwo laufen
-->

---

# DevOps: The platform team
## Security
- Implement alerting to enforce good security practices
  - Allow only signed images from internal registry
  - Alert when deploying an container image with known CVEs
  - Design a plan for forensics

<!--
erlaube keine Container Images zu deployen die bekannte CVEs enthalten
BSI Sagt: hab einen plan für kompromittierte container
-->

---

# DevOps: The platform team
## CI/CD
- Setting up and maintaining a **central** CI/CD Platform
- Setup and maintain test, deploy and verification pipelines for software products

<!--
Mit den DEVs zusammen pipelines entwickeln!
-->

---

# DevOps: The platform team
## Observability
  - Provide and maintain a **central** Observability Stack
    - Logging
    - Monitoring
    - Alerting
    - Tracing

<!--
wenn unsere development umgebung schon so komplex ist muss ich zumindest wissen was los ist

wird alles vom platform team mitverwendet, ausser tracing
-->

---

# DevOps: The platform team
## Best Practices
- Provide manageable solutions that are proven to work
  - terraform modules
  - preconfigured helm charts
  - docker-compose templates
  - ansible roles
- Write ~~**good**~~ documentation

<!--

-->

---
# DevOps: The platform team
## Simplification
- The developers are the customer, make their work as frictionless as possible
  - Train - present the features of the technology stack
  - Educate - give recommendations on application patterns
  - Encourage - provide a playground for experiments

---

# DevOps: The platform team
## Looking Ahead
- provide the necessary platform and capabilities *now*
- steer into the right direction for *the future*

<!--
Da stellt sich die frage, so ein DevOpsler muss ja ne Menge können/wissen?
-->

---

# DevOps: The platform team
## Nice to haves
- Provide/utilize a extensible real-time chat solution
- Provide a secret management solution
- Provide a SSO Mechanism for internal/external authentication

<!--
MS teams nicht von Devops managen lassen
aber dann bitte die webhook API freischalten dasman über deployments informieren kann

kein industrie konsens, erfahrungen von mir die die arbeit erleichtern
-->

---

# DevOps

> you build it, you run it

Werner Vogels (2006)

<!--
Amazon CTO (immer noch)
-->

---

# DevOps

> you build it, you run it
> 
> on a robust and easy to use platform
> in collaboration

---

# Softwareization

![bg right:60%](https://c.pxhere.com/photos/72/9c/close_up_code_coding_computer_computing_conceptual_data_design-911144.jpg!d)

<!--
Source: https://pxhere.com/de/photo/911144
public domain daher kein credit
-->

---

- Everything as Code
- API First

---

## Infrastructure
```json
module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "🐮"

  ami                    = "ami-ebd02392"
  instance_type          = "t3a.large"
  key_name               = "mykey"
  monitoring             = true
  vpc_security_group_ids = ["sg-12345678"]
  subnet_id              = "subnet-eddcdzz4"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}
```

---

## Infrastructure
```json
{
  "type": "Microsoft.Compute/virtualMachines",
  "apiVersion": "2021-11-01",
  "name": "i-run-on-azure-🙈",
  "location": "string",
  "tags": {
    "tagName1": "tagValue1",
    "tagName2": "tagValue2"
  },

[...]

  "zones": [ "string" ]
}
```
---

## Kubernetes Cluster
```yaml
kind: Cluster
apiVersion: kind.x-k8s.io/v1alpha4
name: 🍌
nodes:
- role: control-plane
- role: worker
- role: worker
- role: worker
networking:
  disableDefaultCNI: true
```

---

## Kubernetes Cluster
```yaml
apiVersion: k0sctl.k0sproject.io/v1beta1
kind: Cluster
metadata:
  name: 🍎
spec:
  hosts:
  - role: controller
    ssh:
      address: 10.0.0.255
[...]
  k0s:
    version: 1.23.6+k0s.0
    config:
      apiVersion: k0s.k0sproject.io/v1beta1
      kind: Cluster
      metadata:
        name: 🍎
      spec:
        api:
          extraArgs:
            service-node-port-range: 80-32767
        network:
          podCIDR: 10.0.10.0/24
          serviceCIDR: 10.0.11.0/24
```
---

## Kubernetes Cluster
```json
module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 18.0"

  cluster_name    = "🍑"
  cluster_version = "1.21"
  vpc_id     = "vpc-1234556abcdef"
  subnet_ids = ["subnet-abcde012", "subnet-bcde012a", "subnet-fghi345a"]
  cluster_endpoint_private_access = true
  cluster_endpoint_public_access  = true

  cluster_addons = {
    coredns = {
      resolve_conflicts = "OVERWRITE"
    }
    kube-proxy = {}
    vpc-cni = {
      resolve_conflicts = "OVERWRITE"
    }
  }

  eks_managed_node_groups = {
    blue = {}
    green = {
      min_size     = 1
      max_size     = 10
      desired_size = 5

      instance_types = ["t3.large"]
      capacity_type  = "SPOT"
    }
  }
}
```

---

## Applications
ansible:
```yaml
- hosts: all

  vars:
    pip_install_packages:
      - name: docker

  roles:
    - geerlingguy.pip
    - geerlingguy.docker
```
helm:
```sh
helm install argocd -n managed-services -f argo-values.yaml argocd/argocd
```

---
## Certificates

```yaml
apiVersion: cert-manager.io/v1
kind: Certificate
metadata:
  name: noemoji-api
spec:
  secretName: frontend-ext-tls
  duration: 2160h # 90d
  renewBefore: 360h # 15d
  subject:
    organizations:
      - ACME
  isCA: false
  privateKey:
    algorithm: RSA
    encoding: PKCS1
    size: 4096
  usages:
    - server auth
  dnsNames:
    - api.noemoji.io
  issuerRef:
    name: ca-issuer
    kind: Issuer
    group: cert-manager.io
```

---

## Documentation

```python
from diagrams import Cluster, Diagram
from diagrams.aws.compute import ECS
from diagrams.aws.database import ElastiCache, RDS
from diagrams.aws.network import ELB
from diagrams.aws.network import Route53

with Diagram("Clustered Web Services", show=False):
    dns = Route53("dns")
    lb = ELB("lb")

    with Cluster("Services"):
        svc_group = [ECS("web1"),
                     ECS("web2"),
                     ECS("web3")]

    with Cluster("DB Cluster"):
        db_primary = RDS("userdb")
        db_primary - [RDS("userdb ro")]

    memcached = ElastiCache("memcached")

    dns >> lb >> svc_group
    svc_group >> db_primary
    svc_group >> memcached
```

<!--
_footer: https://github.com/mingrammer
-->

---

![bg center height:80%](https://diagrams.mingrammer.com/img/clustered_web_services_diagram.png)

<!--
_footer: https://github.com/mingrammer
-->

---

## Presentations
```yaml
---
marp: true
theme: gardener
footer: Michael Kreipl – x-cellent technologies GmbH
paginate: true
backgroundImage: url("https://metal-stack.io/images/shape/banner.png")

---

<!--
_paginate: false
_footer: ""
-->

# Cloud Native?
### Michael Kreipl
### 08.07.2022

---
```

<!--
_footer: ""
-->

---

1. Make an entry in the CMDB
2. Order a new network from the network team
3. Order some VMs from the virtualization team
4. Setup the VMs
5. Install a database
6. Install the application
7. Configure the application
8. Notify the Monitoring team
9. Setup DNS
10. Setup the Reverse Proxy
11. Order TLS Certificates
12. Setup TLS Termination

<!--
_footer: ""
-->

<!--
Beispiel ein webserver der aus dem internet erreibar ist mit einer datenbank hinten dran

Entweder ich muss mich mit einem haufen systemen befassen.

oder ich muss mit einem haufen Leuten Sprechen
-->

---

| Task                     | K8s                                                             | AWS               |
| ------------------------ | --------------------------------------------------------------- | ----------------- |
| CMDB 📖                  | CRD                                                         | webhook           |
| Configure Network 🕸      | Network Policies                                                | VPC               |
| Provision VM 🖥           | Pod                                                             | EC2               |
| Install DB 🖥             | StatefulSet                                                     | RDS               |
| Install Application 🔧   | Container Image                                                 | SSM ConfigManager |
| Monitoring 🔔            | [prometheus](https://prometheus-operator.dev)                   | CloudWatch        |
| DNS 🔭                   | [external-dns](https://github.com/kubernetes-sigs/external-dns) | Route53           |
| ReverseProxy 📡          | Ingress                                                         | AWS ELB           |
| TLS 🔐              | [cert-manager](https://cert-manager.io)                         | AWS ELB, AWS Certificate Manager            |

---

# 🗣 + 👐 ⟶ 🖹

- Source Control
- Code Reviews
- Reproducibility
- Standardization

<!--
source control: ich kann änderungen nachvollziehen weil ich eine vollständige historie hab
ich kann auf einen beliebigen stand zurückspringen
integration von vielen verschiedenen devs

code reviews: ich kann senior leute entlasten dadurch das sie nur den output anschauen

Reproducibility: wenn ich 10x was mache ist es 10x gleich

Standardization: wenn MA1 setzt den Server ander auf als MA2 und der Guide
-->

---

# Elastic Platforms

---

# Elastic Platforms

> Middleware for the execution of custom applications, their communication, and data storage is offered via a self-service interface over a network.

— *Fehling et al. (2014) Cloud Computing Patterns*

---

# Elastic Platforms

* Docker Swarm
* Apache Mesos
* HashiCorp Nomad
* AWS Elastic Container Service (ECS)
* Azure Container Apps

<!-- Da fehlt doch was? -->

---

# Elastic Platforms

* Docker Swarm
* Apache Mesos
* Hashicorp Nomad
* AWS Elastic Container Service (ECS)
* Azure Container Apps
* **Kubernetes**

---

# Elastic Platforms

* Deployed across different Cloud Service Platforms -> reducing Vendor Lock In
* Encapsulate Deployment Unit heterogeneity
* Limited interoperability between different platforms

---

# State Isolation

---

# Whats state in an application context?

* context is interaction with a remote service
* data from a previous requests which can be utilized in further requests

---

## Examples for Stateless Applications

---

![bg center fit](images/stateless_1.svg)

<!--
-->

---

![bg center fit](images/stateless_2.png)

<!--
-->

---

![bg center fit](images/stateless_3.png)

<!--
wenn man es genau nimmt Mit Machine Identification Code
-->

---
# Examples for Stateful Applications

---

![bg center fit ](images/stateful.svg)

---

![bg center fit](images/stateful_2.png)

<!--
Wenn ich mich dan in mein Onlinebanking eingeloggt habe, sehe ich hoffentlich meinen Kontostand, meine Transaktionen etc.

heutzutage sind fast alle Applikationen irgendwo stateful beispiel Google Search eigentlich transaktional aber die ganzen metadaten bei Suchen + Tracking
-->

---

# Versioned REST APIs

<!-- ![bg right fit](https://www.opc-router.de/wp-content/uploads/2020/04/OPC-Client_600x400px-1.png) -->

---

![bg center fit](images/backend_bad.png)

<!--
Desktop app in go
cli in python (eingekauft)
mobile App in kotlin
-->

---

# Versioned REST APIs

![bg right fit](images/backend_nice.png)

* scalable
* utilizes existing infrastructure
* widespread and well defined standards (HTTP, JSON)

But:
* gRPC on the horizon

---

<!-- Studie worauf alles basiert schon älter, daher REST als alternativlos gesehen -->

# Versioned REST APIs
## Rest Call
- Path
- HTTP Verb
- Payload

---

```
curl -v -X GET localhost/health
```

```
*   Trying 127.0.0.1:80...
* Connected to localhost (127.0.0.1) port 80 (#0)
> GET /health HTTP/1.1
> Host: localhost
> User-Agent: curl/7.83.1
> Accept: */*
> 
* Mark bundle as not supporting multiuse
< HTTP/1.1 200 OK
< Date: Fri, 01 Jul 2022 13:37:47 GMT
< Content-Length: 0
< 
* Connection #0 to host localhost left intact
```

<!--
_footer: https://github.com/traefik/whoami
-->

---

```
curl -v -X POST -d '418' localhost/health
```

```
*   Trying 127.0.0.1:80...
* Connected to localhost (127.0.0.1) port 80 (#0)
> POST /health HTTP/1.1
> Host: localhost
> User-Agent: curl/7.83.1
> Accept: */*
> Content-Length: 3
> Content-Type: application/x-www-form-urlencoded
> 
* Mark bundle as not supporting multiuse
< HTTP/1.1 200 OK
< Date: Fri, 01 Jul 2022 13:51:20 GMT
< Content-Length: 0
< 
* Connection #0 to host localhost left intact
```

<!--
_footer: https://github.com/traefik/whoami
-->

---

```
curl -v -X GET localhost/health
```

```
*   Trying 127.0.0.1:80...
* Connected to localhost (127.0.0.1) port 80 (#0)
> GET /health HTTP/1.1
> Host: localhost
> User-Agent: curl/7.83.1
> Accept: */*
> 
* Mark bundle as not supporting multiuse
< HTTP/1.1 418 I'm a teapot
< Date: Fri, 01 Jul 2022 13:52:09 GMT
< Content-Length: 0
< 
* Connection #0 to host localhost left intact
```

<!--
_footer: https://github.com/traefik/whoami
-->

---

# Loose coupling

![right fit bg](images/coupling.svg)

<!--
Ziehlt ähnlich wie State Isolation auf die Komposition der Services ab

State Isolation zielt ab wie die komponenten abgegrenzt werden

loose coupling beschreibt die kommunikation zwischen den komponenten

bsp alte java app:
business logic
log shipper
UI alles in einem packet
-->

---

# Service Composition by
## Events
* Asymetric messaging solutions
## Data
* Eventually consistent Databases

<!-- vorgänge werden asynchron abgehandelt
kommunikation zwischen komponenten
komponenten müssen sich finden (service discovery)
 -->

---

![bg center fit](images/broken_system.png)

<!--
Wir machen grug traurig und holen uns mehr Komplexität ins System
-->

---

![bg center fit](images/buffered_system.png)

<!--
wenn unser system ordentlich engineered ist kann eine beliebige instanz die angefallenen inputs abarbeiten

-> Verzögerung aber kein Zeitverlust
-->

---

# Loose coupling
## *Buffer* Implementations
- Database (CockroachDB)
- AMQP (RabbitMQ, Red Hat AMQ, Azure Service Bus Messaging)

<!--
Datenbanken mit einschränkungen, Performance, Dual Write Problem etc. https://www.cockroachlabs.com/blog/message-queuing-database-kafka/#:~:text=A%20message%20queue%20is%20essentially,not%20ready%20to%20receive%20it.
-->

---

# What now?!

1. Standardized Deployment Units
1. Microservices
1. DevOps
2. Softwarization
3. Loose coupling
4. Elastic Platforms
5. State Isolation
6. Versioned REST APIs

---

> All trends [...] can be seen as **isolated trends.** However, according to practitioners they **fit very well together** and support in a “**natural way**” to build massively scalable and large scale systems which are more and more often called “cloud-native applications”.

— *Kratzke, Quint (2017)*

---

# Reivisiting the CNCF Definition

> Cloud native technologies empower organizations to build and run **scalable applications** in modern, **dynamic environments** such as public, private, and hybrid clouds. **Containers, service meshes, microservices, immutable infrastructure, and declarative APIs** exemplify this approach.
> 
>  These techniques enable **loosely coupled systems** that are **resilient, manageable, and observable**. Combined with **robust automation,** they allow engineers to make high-impact changes frequently and predictably with minimal toil.

— *CNCF Cloud Native Definition v1.0*

---

# Distinction to Cloud Based

## Essential Characteristics of Cloud Computing

* On-demand self-service
* Broad network access
* Resource pooling
* Rapid elasticity
* Measured service

<!--
_footer: NIST SP 800-145, The NIST Definition of Cloud Computing (2011)
-->

---

# Considerations

* The Approach is counter-intuitive, since we give more autonomy to small teams, leading to more heterogenous components
* The usual engineering approach is to work towards component homogenity
* Long term effects of this will need to be evaluated

<!--
_footer: Kratzke, Quint (2017)
-->

---

# The Cloud Native Pyramid

---

![](images/cloud-native-pyramid-1.png)

<!--
Alle Ebenen ungefähr gleicher Anteil

Infrastruktur: technische grundlage, cloud/onprem

business requirement: ist cloud native überhaubt die lösung
muss ich schnell iterieren?
muss ich hochverfügbar sein?

Developer platform:
das was das devops platform team bereitstellt

Mindset: jeder in dem prozess muss sich einbringen
-->

<!--
_footer: |
    From Cloud Naive to Cloud Native - Avoiding mistakes everyone does
    Max Körbächer, Liquid Reply
-->

---

![](images/cloud-native-pyramid-2.png)

<!--
Aus sicht eines Beraters geschrieben daher customer
-->

<!--
_footer: |
    From Cloud Naive to Cloud Native - Avoiding mistakes everyone does
    Max Körbächer, Liquid Reply
-->
---

![](images/cloud-native-pyramid-3.png)

<!--
_footer: |
    From Cloud Naive to Cloud Native - Avoiding mistakes everyone does
    Max Körbächer, Liquid Reply
-->

---

# Limitations

* Scale

<!--
Im optimalfall 1 dev team für jede komponente/microservice

macht keinen sinn wenn wir für 5 MA selbstgebaute app 
-->

---

# Limitations

* Scale
* Acceptance

<!--
Dev: wie ich soll mehr machen?
Dev: warum soll ich mich um das kümmern was ich produziere?
Ops: wieso soll ich containern mein .jar hat jetzt 20 jahre funktioniert

das haben wir doch immer schon so gemacht
-->

---

# Summary

* The Cloud Native applications are
  * Distributed
  * Scalable
  * Resilient
  * Load Adaptive

* Cloud Native is as much about **people, processes and mindset** as much as it's about **technology**

---

![h:200](images/x-cellent-technologies-rgb.svg)
Homepage: https://www.x-cellent.com
E-Mail: info@x-cellent.com
Linkedin: https://www.linkedin.com/company/x-cellent-technologies-gmbh
GitHub: https://github.com/x-cellent

<!--
_backgroundImage: ""
_paginate: false
_footer: ""
-->

---

# Questions?

<!--
_paginate: false
_footer: ""
-->

---

# Thank you for listening!

<!--
_paginate: false
_footer: ""
-->
