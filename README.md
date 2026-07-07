# hazzuk/karo-custom

**Custom [karo-stack](https://docs.karolabs.dev/) files**

[![GitHub Release](https://img.shields.io/github/v/release/hazzuk/karo-custom?display_name=tag&cacheSeconds=7200)](https://github.com/hazzuk/karo-custom/releases)
[![License](https://img.shields.io/badge/license-AGPL--3.0-orange)](https://github.com/hazzuk/karo-docs/blob/main/LICENSE)

[![Developed by Humans, Not by AI](not-by-ai.png)](https://notbyai.fyi/)

1. Add this custom repo
    ```sh
    just custom add hazzuk
    ```

2. Add these variables
    ```yaml { title="Ansible vault" }
    karo_compose_stack_groups:
    - hazzuk_core
    - hazzuk_extra
    - hazzuk_media
    ```

## Copyright & License
[hazzuk/karo-custom](https://github.com/hazzuk/karo-custom) is copyright © hazzuk and is licensed AGPL-3.0-only.
