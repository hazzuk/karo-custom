---
icon: lucide/waypoints
---

# Proxy

> Securely expose karo-stack services publicly

!!! warning "Experimental"

    See the [karo-stack docs](https://docs.karolabs.dev/advanced/proxy/) for details.

```yaml title="Ansible vault"
# proxy

hazzuk_extra_proxy_server_enabled: true # proxyserver
hazzuk_extra_proxy_client_enabled: false # homeserver

hazzuk_extra_proxy_stack:
--8<-- "karo-compose/defaults/main/hazzuk_extra/proxy.yml:19"
```

[See all defaults](https://github.com/hazzuk/karo-custom/blob/main/karo-compose/defaults/main/hazzuk_extra/proxy.yml){:target='_blank'}

??? abstract "HAProxy - High-performance TCP reverse proxy"

    <div class="grid cards" markdown>

    - :simple-github: [haproxy/haproxy](https://github.com/haproxy/haproxy)
    - :simple-docker: [docker.io/haproxy](https://hub.docker.com/_/haproxy)

    </div>

    ??? example "HAProxy config example"

        Simple setup, traffic is routed to your server if the request's SNI hostname matches your domain name.

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

    !!! note "Links"

        - :lucide-tag: [Latest versions](https://www.haproxy.org/)
        - :lucide-zap: [Breaking changes](https://github.com/haproxy/wiki/wiki/breaking-changes)
