---
# SPDX-FileCopyrightText: © 2026 hazzuk
#
# SPDX-License-Identifier: AGPL-3.0-only

icon: lucide/layers-2
---

# karolabs_media

Full set of media services, for downloads, content organisation, user requests, and streaming.

<!-- editorconfig-checker-disable -->

``` yaml { .no-copy hl_lines="4" }
karo_compose_stack_groups:
  - karolabs_core # setup first
  - karolabs_ops
  - karolabs_media
```

<!-- editorconfig-checker-enable -->

!!! info "Setup order"

    It is recommended you setup each stack in the order shown.

## Requirements

-   VPN service that supports [port forwarding](https://trash-guides.info/Misc/How-to-setup-Torguard-for-port-forwarding/#setup-torguard-for-port-forwarding).

-   Dedicated [storage partition](https://docs.karolabs.dev/advanced/storage/#partition-and-format) to download and store files (e.g. `/media/drive1`).

-   Directory structure which supports [hardlinks](https://trash-guides.info/File-and-Folder-Structure/Hardlinks-and-Instant-Moves/):

    ``` sh
    DRIVE_MOUNT=/media/drive1
    ```

    ``` sh
    sudo install -d -m 0766 -o dockeruser -g dockeruser \
        ${DRIVE_MOUNT}/data \
        ${DRIVE_MOUNT}/data/media \
        ${DRIVE_MOUNT}/data/media/movies \
        ${DRIVE_MOUNT}/data/media/series \
        ${DRIVE_MOUNT}/data/torrents \
        ${DRIVE_MOUNT}/data/torrents/movies \
        ${DRIVE_MOUNT}/data/torrents/series
    ```
