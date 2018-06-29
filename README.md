# simple-vote-dapp

#  Installation
1. Go to <https://truffleframework.com/ganache> and install an in-memory blockchain called ganache for development purposes. You can either install a command line version called ganache-cli or the GUI version. Another nice thing about ganache is that you get 10 test accounts loaded with 100 Ether for your testing.
    ```
    $ npm install -g ethereumjs-testrpc
    ```
2. Once it is installed, run node console and compile the contract by executing these codes in your console:
    ```
    >code = fs.readFileSync('Voting.sol').toString();
    >solc = require('solc');
    >compiledCode = solc.compile(code);
    ```
3. Deploy the contract by executing these codes in your console:
    ```
    >Web3 = require('web3')
    >web3 = new Web3(new Web3.providers.HttpProvider("http://localhost:7545"));
    >abiDefinition = JSON.parse(compiledCode.contracts[':Voting'].interface);
    >VotingContract = web3.eth.contract(abiDefinition);
    >byteCode = compiledCode.contracts[':Voting'].bytecode
    >deployedContract = VotingContract.new(['Rama','Nick','Jose'],{data: byteCode, from: web3.eth.accounts[0], gas: 4700000});
    ```
3. Get the address for the test contract by executing this in your console
    ```
    >deployedContract.address
    ```

4. go to index.js and change the following address to the recently one above :
    ```
    contractInstance=VotingContract.at('0x0e45a3557f2fa1a7487bd1fe06a6c1ecb8740610');
    ```