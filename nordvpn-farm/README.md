# nordvpn-farm

Real Sloth Matrix VPN farm software.

Multi-node Gluetun + Firefox setup for organic slow operations.

## Files
- docker-compose.yml - Primary 9-node farm (Spain, Germany, UK, France, Denmark, Poland, Spain, Italy, US)
- nord-farm.yml - Variant configuration
- run-all.sh - Execute commands (e.g. IP check) across all nord-* containers
- restart-all.sh - Restart all firefox containers

Deploy with: docker compose -f nordvpn-farm/docker-compose.yml up -d

Part of theslothshop - The Sloth is in the Matrix.
