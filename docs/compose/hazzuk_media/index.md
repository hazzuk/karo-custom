---
icon: lucide/layers-2
---

# hazzuk_media

Full set of media services, for downloads, content organisation, user requests, and streaming.

```yaml { hl_lines="3" .no-copy }
karo_compose_stack_groups:
  - hazzuk_core # required
  - hazzuk_media
```

!!! tip

    It is recommended you setup each stack in the order shown.

## Requirements

- VPN service that supports [port forwarding](https://trash-guides.info/Misc/How-to-setup-Torguard-for-port-forwarding/#setup-torguard-for-port-forwarding).

- Dedicated [storage partition](https://docs.karolabs.dev/advanced/storage/#partition-and-format) to download and store files (e.g. `/media/drive1`).

- Directory structure which supports [hardlinks](https://trash-guides.info/File-and-Folder-Structure/Hardlinks-and-Instant-Moves/):
    ```sh
    DRIVE_MOUNT=/media/drive1
    ```
    ```sh
    sudo install -d -m 0766 -o dockeruser -g dockeruser \
        ${DRIVE_MOUNT}/data \
        ${DRIVE_MOUNT}/data/media \
        ${DRIVE_MOUNT}/data/media/movies \
        ${DRIVE_MOUNT}/data/media/series \
        ${DRIVE_MOUNT}/data/torrents \
        ${DRIVE_MOUNT}/data/torrents/movies \
        ${DRIVE_MOUNT}/data/torrents/series
    ```
