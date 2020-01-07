#!/bin/bash

#
# set variales for analysis of network
#

PREFIX="DE-NW-WT"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=area[boundary=public_transport][name~'WestfalenTarif.'];(rel(area)[route~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);<<;rel[type='route'](r);)->.routes;(.routes;rel(r.routes);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="WestfalenTarif"
NETWORK_SHORT="WT"

ANALYSIS_PAGE="DE:WestfalenTarif/Analyse"
ANALYSIS_TALK="DE_Talk:WestfalenTarif/Analyse"
WIKI_ROUTES_PAGE="DE:WestfalenTarif/Analyse/WestfalenTarif-Linien"

ANALYSIS_OPTIONS="--language=de --relaxed-begin-end-for=train,light_rail,tram,bus,share_taxi --positive-notes --max-error=10 --check-version --check-access --check-name-relaxed --check-stop-position --check-sequence --check-osm-separator --check-motorway-link --multiple-ref-type-entries=analyze --coloured-sketchline"

# --check-bus-stop 
# --expect-network-long
# --expect-network-short
# --expect-network-long-for=
# --expect-network-short-for=

#
# extensions to support ptna-www and PHP in results/xx/index.php files by code in ptna-network.sh (section: upload results)
#
# column 1 = Name + Link to Analysis Result Page on server
# automatically build by PHP script

# column 2 = Name + Link to Overpass-Turbo call to show area on map
PTNA_WWW_REGION_NAME="Region Westfalen"
PTNA_WWW_REGION_LINK="http://overpass-turbo.eu/map.html?Q=%5Bout%3Ajson%5D%5Btimeout%3A25%5D%3B(%20relation%5Bboundary%3Dpublic_transport%5D%5B%22name%22~%22WestfalenTarif.%22%5D%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B"

# column 3 = Name + Link to the network provider / transport association
PTNA_WWW_NETWORK_NAME="WestfalenTarif"
PTNA_WWW_NETWORK_LINK=""

# column 4 = Date and Time of last analysis in UTC and Local Time format
# automatically build by PHP script

# column 5 = Date and Time of latest changes in UTC and Local Time format
# automatically build by PHP script

# column 6 = Name + Link to discussion / documentation page (usually in OSM Wiki)
PTNA_WWW_DISCUSSION_NAME="Diskussion"
PTNA_WWW_DISCUSSION_LINK="https://wiki.openstreetmap.org/wiki/$ANALYSIS_TALK"

# column 7 Name + Link to list of expected public ransport routes page (usually in OSM Wiki but can als be on GitHub)
PTNA_WWW_ROUTES_NAME="WT Linien"
PTNA_WWW_ROUTES_LINK="https://wiki.openstreetmap.org/wiki/$WIKI_ROUTES_PAGE"

