# hazzuk/karo-custom

**Custom [karo-stack](https://docs.karolabs.dev/) files.**

1. Add this custom repo
    ```sh
    just custom add hazzuk
    ```

2. Add these variables
    ```yaml title="Ansible vault"
    karo_compose_stack_groups:
    - hazzuk_core
    - hazzuk_extra
    - hazzuk_media
    ```

## Copyright & License
[hazzuk/karo-custom](https://github.com/hazzuk/karo-custom) is copyright © hazzuk and is licensed AGPL-3.0-only.
