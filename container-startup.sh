jq -n '$ENV' | jq 'with_entries( select(.key | startswith("eo_") ) )' > /usr/share/nginx/html/assets/assets/environment_variables.json

/docker-entrypoint.sh nginx -g "daemon off;"