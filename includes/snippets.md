<!--
SPDX-FileCopyrightText: © 2026 hazzuk

SPDX-License-Identifier: AGPL-3.0-only
-->

<!-- use snippets with `--8<-- "snippets.md:name"` -->

<!-- text -->

--8<-- [start:cloudflare_token]
1. Visit [dash.cloudflare.com/profile/api-tokens](https://dash.cloudflare.com/profile/api-tokens)

1. Select 'Create Token' > 'Create Custom Token'

--8<-- [end:cloudflare_token]

--8<-- [start:arr_auth]
As the app [doesn't support OIDC](https://wiki.servarr.com/en/radarr/faq#authentication-method), we use forward authentication instead. But to prevent needing to double authenticate, you should configure authentication as `External`.

1.  Setup authentication as standard on your first visit

    - Authentication method: `Forms (Login page)`
    - Authentication required: `Enabled`
    - Username: `karo`
    - Password: `forgetthispassword`

2.  Down the stack

3.  Run the following as karo, substituting the word 'Forms' with 'External' in the app's config file.

--8<-- [end:arr_auth]
