@startuml

!include <cloudinsight/haproxy.puml>
!include <aws/NetworkingContentDelivery/AmazonVPC/router/router.puml>
!include <office/Concepts/firewall>
!include <office/Devices/switch.puml>
!include <tupadr3/devicons/cisco> 
!include <cloudogu/tools/vmware.puml>

hide stereotype
skinparam linetype ortho

skinparam rectangle{
    BackgroundColor WhiteSmoke
    borderColor black
    LineColor<<example>> #86B56B
    borderColor<<example>> #86B56B
    BackgroundColor<<example>> #D6E8D5
    LineColor<<example>> #D6E8D5
    RoundCorner<<example>> 15

    borderColor<<block_domains>> #3F75BB
    FontColor<<block_domains>> #3F75BB
    BackgroundColor<<block_domains>> #FFE5CC

    LineColor<<collection>> #FFB66C
    borderColor<<collection>> #FFB66C
    FontColor<<collection>> #3F75BB
    BackgroundColor<<collection>> #white
    RoundCorner<<collection>> 30
 }




rectangle core_network <<example>> [
Core network

---

    <$router>

* Juniper
* Cisco
* Nokia
* Ciena
]

rectangle  infrastructure_network <<example>>[

Infrastructure network

---

|\n **Checkpoint** \n\n      <$firewall> |\n    **ACI** \n <$cisco> |\n    **F5** \n\n <$haproxy> \n|\n  **L2** \n\n  <$switch> |\n **vrops** \n <$vmware> |\n **Extrahop** |
]

rectangle "Data collection" as data_collection <<block_domains>> {

}

rectangle data_ingestion <<block_domains>>[
Data Ingestion
]
!include <logos/grafana.puml>
!include <logos/aws-api-gateway.puml>

rectangle data_serving <<block_domains>>[
Data serving

---

|\n OBS api |\n Topo api |\n <$grafana> \n|

]

!include <tupadr3/devicons/database.puml>

rectangle data_storage <<block_domains>>[
Data Storage

|   <$database>\n metadata | <$database>\n   tsdb |   <$database>\n topology |
]


data_serving <-[#blue]- data_storage
data_storage  <-[#blue]- data_ingestion
data_ingestion <-[#blue]- data_collection

rectangle telemetry_coll  <<collection>>[

**Telemetry**

---

dial in
dial out

]

data_collection <== telemetry_coll
telemetry_coll ==> core_network


rectangle snmp_collection <<collection>> [
**snmp**
]

data_collection == snmp_collection
snmp_collection ==> core_network
snmp_collection ==> infrastructure_network

rectangle obs_push  <<collection>>[
**Juniper: slax**
**Cisco: tcl**
]

data_collection <== obs_push
obs_push == core_network


rectangle rest_api  <<collection>>[
**rest api**
]

data_collection <== rest_api
rest_api ==> infrastructure_network



@enduml
