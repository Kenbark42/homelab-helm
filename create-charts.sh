#!/bin/bash

# Create all homelab Helm charts
cd charts

# List of services to create charts for
SERVICES=(
    "uptime-kuma"
    "vaultwarden" 
    "portainer"
    "linkding"
    "adguard-home"
    "home-assistant"
    "grafana"
    "prometheus"
)

# Create charts for each service
for service in "${SERVICES[@]}"; do
    echo "Creating chart for $service..."
    helm create $service
    
    # Update Chart.yaml
    cat > $service/Chart.yaml << EOF
apiVersion: v2
name: $service
description: A Helm chart for $service homelab service
type: application
version: 0.1.0
appVersion: "latest"
keywords:
  - homelab
  - $service
home: https://homelab.local
maintainers:
  - name: homelab
    email: admin@homelab.local
EOF

    echo "Created chart for $service"
done

echo "All charts created successfully!"
echo "Charts available:"
ls -la