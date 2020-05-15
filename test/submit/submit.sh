#!/bin/bash
skill_id=$1

cli_version=$2

echo "######### Submiting Skill for certification without publishing #########"

if [[ ${cli_version} == *"v1"* ]]
then
    $(ask api submit -s ${skill_id} --publication-method MANUAL_PUBLISHING)
else
    $(ask smapi submit-skill-for-certification -s ${skill_id} --publication-method MANUAL_PUBLISHING)
fi