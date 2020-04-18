#!/bin/bash

#
# set variables for analysis of network
#

PREFIX="DE-BW-naldo"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=area[boundary=administrative][wikidata~'^(Q8217|Q8230|Q8214|Q8233)$'];(rel(area)[route~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[type='route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Verkehrsverbund Neckar-Alb-Donau|Verkehrsverbund Neckar-Alb-Donau GmbH"
NETWORK_SHORT="naldo"

ANALYSIS_PAGE="Verkehrsverbund_Neckar-Alb-Donau/Analyse"
ANALYSIS_TALK="Talk:Verkehrsverbund_Neckar-Alb-Donau/Analyse"
WIKI_ROUTES_PAGE="Verkehrsverbund_Neckar-Alb-Donau/Analyse/DE-BW-naldo-Linien"

ANALYSIS_OPTIONS="--language=de --max-error=10 --check-access --check-name-relaxed --check-stop-position --check-sequence --check-version --check-osm-separator --check-motorway-link --multiple-ref-type-entries=analyze --positive-notes --coloured-sketchline --relaxed-begin-end-for=train,subway,light_rail,monorail,tram"

# --check-bus-stop 
# --expect-network-long
# --expect-network-short
# --expect-network-short-for=
# --expect-network-long-for=

#
# extensions to support ptna-www and PHP in results/xx/index.php files by code in ptna-network.sh (section: upload results)
#
# column 1 = Name + Link to Analysis Result Page on server
# automatically build by PHP script

# column 2 = Name + Link to Overpass-Turbo call to show area on map
PTNA_WWW_REGION_NAME="Landkreise Reutlingen, Sigmaringen, Tübingen und Zollernalbkreis"
PTNA_WWW_REGION_LINK="http://overpass-turbo.eu/map.html?Q=%5Bout%3Ajson%5D%5Btimeout%3A25%5D%3B(relation%5Bboundary%3Dadministrative%5D%5Bwikidata~'^(Q8217|Q8230|Q8214|Q8233)$'%5D%3B)%3Bout%20body%3B%3E%3Bout%20skel%20qt%3B"

# column 3 = Name + Link to the network provider / transport association
PTNA_WWW_NETWORK_NAME="Verkehrsverbund Neckar-Alb-Donau"
PTNA_WWW_NETWORK_LINK="https://www.naldo.de/"

# column 4 = Date and Time of last analysis in UTC and Local Time format
# automatically build by PHP script

# column 5 = Date and Time of latest changes in UTC and Local Time format
# automatically build by PHP script

# column 6 = Name + Link to discussion / documentation page (usually in OSM Wiki)
PTNA_WWW_DISCUSSION_NAME="Diskussion"
PTNA_WWW_DISCUSSION_LINK="https://wiki.openstreetmap.org/wiki/$ANALYSIS_TALK"

# column 7 Name + Link to list of expected public transport routes page (usually in OSM Wiki but can also be on GitHub)
PTNA_WWW_ROUTES_NAME="naldo Linien"
PTNA_WWW_ROUTES_LINK="https://wiki.openstreetmap.org/wiki/$WIKI_ROUTES_PAGE"

