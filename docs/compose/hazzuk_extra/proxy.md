---
icon: lucide/waypoints
---

# Proxy

> Securely expose public services

<div class="grid cards" markdown>

- Created for use in the karo-stack

</div>

```yaml
# proxy

karo_compose_proxy_client_enabled: false # homeserver
karo_compose_proxy_server_enabled: false # proxyserver

# karo_compose_proxy_client_wireguard_ipv4: 10.25.0.2
# karo_compose_proxy_server_wireguard_ipv4: 10.25.0.1

# karo_compose_proxy_server_wireguard_port: 52525
```

## HAProxy

> High-performance TCP reverse proxy

<div class="grid cards" markdown>

- :simple-github: [haproxy/haproxy](https://github.com/haproxy/haproxy)
- :simple-docker: [docker.io/haproxy](https://hub.docker.com/_/haproxy)

</div>

```yaml
# proxy haproxy

karo_compose_proxy_haproxy_config_raw: |
  # haproxy config
```

??? example "Example - HAProxy config"

    Simple setup where traffic is routed to your server if the request's SNI hostname matches your domain name.

    ```yaml+jinja
    karo_compose_proxy_haproxy_config_raw: |
      # haproxy config

        # wait for tls clienthello
        tcp-request inspect-delay 5s

        # accept clienthello
        tcp-request content accept if { req_ssl_hello_type 1 }
        
        # catch-all reject
        tcp-request content reject
        
        # sni routing
        use_backend homeserver if { req.ssl_sni -m end .{{ karo_compose_root_domain }} }
      
      backend homeserver
        mode tcp
        server wg {{ karo_compose_proxy_client_wireguard_ipv4 }}:443 send-proxy-v2 check
    ```

??? note "Links"

    - :lucide-tag: [Latest versions](https://www.haproxy.org/)
    - :lucide-zap: [Breaking changes](https://github.com/haproxy/wiki/wiki/breaking-changes)
