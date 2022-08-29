# Web3 Storage Pinning GitHub Action

## Usage
You can use this Action directly from your GitHub workflow. You can find the required credentials on Web3 Storage website.

```yaml
#/.github/workflows/release.yml

jobs:
  release:
    runs-on: ubuntu-latest
    steps: 
      - name: Pin to IPFS (Web3.Storage)
        uses: saeta-eth/web3storage-pinning-action@v1.0.0
        with:
          pin_name: 'pin-name' # Required
          cid: 'your-cid'  # Required, e.g. bafkreicysg23kiwv34eg2d7qweipxwosdo2py4ldv42nbauguluen5v6am
          web3_storage_api_token: ${{ secrets.WEB3_STORAGE_API_TOKEN }} # Required
```
## Outputs
### `cid`
Your content's IPFS content identifier e.g.

`bafkreicysg23kiwv34eg2d7qweipxwosdo2py4ldv42nbauguluen5v6am`