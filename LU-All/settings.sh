#!/bin/bash

#
# set variales for analysis of network
#

PREFIX="LU-All"

OVERPASS_QUERY="http://overpass-api.de/api/interpreter?data=area[boundary=administrative][admin_level=2][int_name='Luxembourg'];(rel(area)[route~'(bus|tram|train|subway|light_rail|trolleybus|ferry|monorail|aerialway|share_taxi|funicular)'];rel(br);rel[type='route'](r);)->.routes;(.routes;<<;rel(r.routes);way(r.routes);node(w);node(r.routes););out;"
NETWORK_LONG="Autobus de la Ville de Luxembourg|Régime Général des Transports Routiers|Chemins de Fer Luxembourgeois|Transport Intercommunal de personnes dans le Canton d'Esch-sur-Alzette"
NETWORK_SHORT="RGTR|AVL|TICE|CFL|Luxtram"

ANALYSIS_PAGE="WikiProject_Luxembourg/Public_Transport/Analysis"
ANALYSIS_TALK="Talk:WikiProject_Luxembourg/Public_Transport/Analysis"
WIKI_ROUTES_PAGE="WikiProject_Luxembourg/Public_Transport/Analysis/LU-All-Routes"

ANALYSIS_OPTIONS="--check-access --check-name --check-stop-position --check-sequence --check-version --check-osm-separator --check-motorway-link --positive-notes --max-error=10 --multiple-ref-type-entries=analyze --coloured-sketchline --expect-network-short"

# --language=en
# --check-bus-stop 
# --expect-network-long
# --expect-network-short-for=
# --expect-network-long-for=
# --relaxed-begin-end-for=

