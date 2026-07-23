#!/bin/bash

# Download the schema to the CRM package.
curl --request GET 'https://emr-trader-dev.azurewebsites.net/graphql?sdl' -H 'Authorization: Bearer TOKEN' > packages/emr_one_crm/lib/graphql/trader/schema.graphql

# Copy from the CRM package to the others.
cp -f packages/emr_one_crm/lib/graphql/trader/schema.graphql packages/emr_sharedtypes/lib/graphql/schema.graphql
cp -f packages/emr_one_crm/lib/graphql/trader/schema.graphql packages/emr_one_securitymgmt/lib/graphql/schema.graphql
cp -f packages/emr_one_crm/lib/graphql/trader/schema.graphql packages/emr_one_prefs/lib/graphql/schema.graphql