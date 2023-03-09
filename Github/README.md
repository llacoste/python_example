# Github

## Generating Credentials to use with Jenkins

- Log into Github

- Select your profile at the top right and then `Settings`

![Account Settings](images/account_settings.jpg)

- Select `Developer Settings` on the bottom left

![Developer Settings](images/settings_developer_settings.jpg)

- Select `Personal access tokens` and then `Tokens (classic)`

![Personal Access Tokens](images/personal_access_tokens.jpg)

- Select `Generate new token` at the top right and then `Generate new token Beta`

![Generate New Token](images/generate_new_token.jpg)

- Fill out the following:
    - Token name: Jenkins
    - Expiration: 90 days
    - Description: Something appropriate
    - Select `Only select repositories` and then select your project repository
    - Under `Permissions` give `Read and Write` to the following:
        - `Code scanning alerts`
        - `Commit Statuses`
        - `Contents`
        - `Merge queues`
        - `Pull requests`
        - `Repository announcement banners`
        - `Webhooks`

- Select `Generate token`

- Save the token somewhere safe, you will not be able to view it again.

