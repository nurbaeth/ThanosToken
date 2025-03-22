# ThanosToken (THN)

ThanosToken is an ERC-20 token with a built-in burn mechanism. A small percentage of each transaction is automatically burned, reducing the total supply over time. This feature encourages deflationary tokenomics and long-term scarcity.

## Features
- **Deflationary Model** – A percentage of each transaction is burned, decreasing supply.
- **Customizable Burn Rate** – The contract owner can adjust the burn rate within a safe range.
- **Fully ERC-20 Compliant** – Can be integrated with any ERC-20 compatible wallet or exchange.

## Smart Contract Details
- **Token Name:** ThanosToken
- **Symbol:** THN 
- **Decimals:** 18
- **Burn Rate:** Adjustable (default set during deployment)
- **Network:** Ethereum (or compatible chains)

## Deployment
To deploy the contract, use Hardhat or Remix with Solidity 0.8.20.

### Deploy with Hardhat
1. Clone the repository:
   ```sh
   git clone https://github.com/your-repo/thanos-token.git
   cd thanos-token
   ```
2. Install dependencies:
   ```sh
   npm install
   ```
3. Compile the contract:
   ```sh
   npx hardhat compile
   ```
4. Deploy to a test network:
   ```sh
   npx hardhat run scripts/deploy.js --network goerli
   ```

## How It Works
- When a user transfers THN, a portion of the tokens is burned automatically.
- The contract owner can adjust the burn rate (within 0-100%) if necessary.
- Users can hold, transfer, and interact with THN like any other ERC-20 token.

## Example Transaction
```
Sender: 1000 THN
Burn Rate: 2%
Burned: 20 THN
Receiver Gets: 980 THN
```

## License
This project is open-source and licensed under the MIT License.

