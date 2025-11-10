# Homelab Helm Charts Repository

A comprehensive collection of Helm charts for self-hosted homelab services.

## Available Charts

| Service | Chart Version | App Version | Description |
|---------|---------------|-------------|-------------|
| pi-hole | 0.1.0 | latest | Network-wide ad blocking DNS server |
| uptime-kuma | 0.1.0 | latest | Uptime monitoring and status page |
| vaultwarden | 0.1.0 | latest | Bitwarden-compatible password manager |
| portainer | 0.1.0 | latest | Container management UI |
| linkding | 0.1.0 | latest | Bookmark manager |
| adguard-home | 0.1.0 | latest | DNS and ad-blocking service |
| home-assistant | 0.1.0 | latest | Home automation platform |
| grafana | 0.1.0 | latest | Monitoring and visualization |
| prometheus | 0.1.0 | latest | Metrics collection and storage |

## Usage

### Add Helm Repository

```bash
helm repo add homelab https://YOUR_GITHUB_USERNAME.github.io/homelab-helm-charts
helm repo update
```

### Install Charts

```bash
# Install Pi-hole
helm install pihole homelab/pihole -n default

# Install Uptime Kuma  
helm install uptime-kuma homelab/uptime-kuma -n homelab

# Install Vaultwarden
helm install vaultwarden homelab/vaultwarden -n homelab
```

### Custom Values

Each chart comes with comprehensive configuration options. Create a `values.yaml` file to customize:

```bash
# Get default values
helm show values homelab/pihole > pihole-values.yaml

# Edit values.yaml then install
helm install pihole homelab/pihole -f pihole-values.yaml -n default
```

## Portainer Integration

This repository is designed to work seamlessly with Portainer's Helm chart deployment feature:

1. Go to **Portainer → App Templates → Custom Templates**
2. Add this repository: `https://YOUR_GITHUB_USERNAME.github.io/homelab-helm-charts`
3. Deploy charts directly from Portainer UI

## Requirements

- Kubernetes cluster (tested with K3s)
- Helm 3.x
- Ingress controller (nginx recommended)
- MetalLB for LoadBalancer services
- Cert-manager for SSL certificates

## Features

- 🔒 **Security-first**: All charts include security contexts and resource limits
- 🌐 **Ingress ready**: Pre-configured ingress with SSL support
- 💾 **Persistent storage**: Configurable PVC for data persistence
- 🎛️ **Highly configurable**: Comprehensive values.yaml for each service
- 📊 **Production ready**: Health checks, resource limits, and monitoring

## Chart Details

### Pi-hole
- DNS server with ad-blocking
- LoadBalancer service with fixed IP
- Persistent storage for configuration
- Web interface with ingress

### Uptime Kuma
- Self-hosted monitoring tool
- SSL-enabled ingress
- Persistent storage for data
- Resource-optimized deployment

### Vaultwarden
- Lightweight Bitwarden server
- Secure password storage
- Web interface accessible via ingress
- Backup-friendly persistent storage

## Contributing

1. Fork the repository
2. Create your feature branch
3. Update chart versions
4. Test your changes
5. Submit a pull request

## License

MIT License - see LICENSE file for details